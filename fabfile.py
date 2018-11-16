# -*- coding: utf-8 -*-

from datetime import datetime
from fabric.api import *
from fabvenv import virtualenv

# 登录用户和主机名：
env.user = 'root'
env.password = 'Cmx170904'
env.hosts = [ '69.172.85.246']
pack_name = 'deploypack_mxonline.tar.gz'

def pack():
    ' 定义一个pack任务 '
    # 打一个tar包：
    local('del  %s' % pack_name)
    local('md  ..\pack_tmp')
    local('xcopy /e /s .\* ..\pack_tmp')
    #--exclude=\'media/userhead/*\' --exclude=\'media/watchhead/*\'
    with lcd('..\pack_tmp'):
        local('tar -czvf ../mxonline/%s --exclude=\'*.tar.gz\' --exclude=\'fabfile.py\' --exclude=\'venv/*\' --exclude=\'00*\' --exclude=\'*.pyc\'  \
            --exclude=\'media/record/*\' --exclude=\'media/talkinfo/*\' --exclude=\'media/userhead/*\' --exclude=\'media/watchhead/*\' --exclude=\'.DS_*\' \
            --exclude=\'view.log\' --exclude=\'media/androidapp/*\'  --exclude=\'watchapp.yaml\' --exclude=\'test_back.py\' --exclude=\'init_test_env.py\' ./*' % pack_name)
    local('rd /s /q  ..\pack_tmp')

    #--exclude=\'media/androidapp/*\'

def deploy():
    ' 定义一个部署任务 '
    # 远程服务器的临时文件：
    tag = datetime.now().strftime('%y.%m.%d_%H.%M.%S')
    print(env.host)
    hosttag = ''
    remote_work_dir = ''
    if env.host=='69.172.85.246':
        remote_work_dir = '/root/www/test/'
        hosttag = 'mx'
    else:
        exit(1)

    remote_tmp_tar = '/tmp/%s' % pack_name
    run('rm -f %s' % remote_tmp_tar)
    # 上传tar文件至远程服务器：
    put(pack_name, remote_tmp_tar)
    # 备份远程服务器工程
    # back_tar_name = '/home/ubuntu/www/backup/Lock%s.tar.gz' % tag
    # run('tar -czvf %s /home/ubuntu/www/Lock/*' % back_tar_name)
    # 删除原有工程
    #run('rm -rf /home/ubuntu/www/Lock/*')
    # 解压：
    run('tar -xzvf %s -C %s' % (remote_tmp_tar, remote_work_dir))
    run('mv %sother/settings_%s.py %s/mxonline/settings.py' % (remote_work_dir, hosttag, remote_work_dir))
    run('mv %sother/mxonline_nginx_%s.conf %s/mxonline_nginx.conf' % (remote_work_dir, hosttag, remote_work_dir))
    run('mv %sother/mxonline_uwsgi_%s.ini %s/mxonline_uwsgi.ini' % (remote_work_dir, hosttag, remote_work_dir))
    run('mv %sother/uwsgi_params_%s %s/uwsgi_params' % (remote_work_dir, hosttag, remote_work_dir))
    run('rm -rf %sother' % remote_work_dir)
    with cd(remote_work_dir):
        if env.host=='69.172.85.246':
            with virtualenv('/root/www/test/kkwork'):
                run('python manage.py makemigrations')
                run('python manage.py migrate')
                run('chmod a+x ./restart.sh')
                run('sh ./restart.sh', pty=False)
                run('sudo service nginx restart')
                #run('uwsgi --ini Lock.ini &')
                run('sleep 5')
        else:
            run('python manage.py makemigrations')
            run('python manage.py migrate')
            run('chmod a+x ./restart.sh')
            run('sh ./restart.sh', pty=False)
            run('sudo service nginx restart')
            # run('sudo /etc/init.d/nginx restart')
            #run('uwsgi --ini Lock_uwsgi.ini &')
            run('sleep 5')


