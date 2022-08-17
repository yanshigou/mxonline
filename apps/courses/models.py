# -*- coding: utf-8 -*-
from django.db import models
from organization.models import CourseOrg, Teacher
from datetime import datetime


class Course(models.Model):
    course_org = models.ForeignKey(CourseOrg, verbose_name=u'直播机构', null=True, blank=True)
    name = models.CharField(max_length=50, verbose_name=u'教程名')
    desc = models.CharField(max_length=300, verbose_name=u'教程描述')
    detail = models.TextField(verbose_name=u'教程详情')
    teacher = models.ForeignKey(Teacher, verbose_name=u'讲师', null=True, blank=True)
    degree = models.CharField(verbose_name=u'难度', choices=(('cj', u'初级'), ('zj', u'中级'), ('gj', u'高级')), max_length=2)
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')
    students = models.IntegerField(default=0, verbose_name=u'学习人数')
    fav_nums = models.IntegerField(default=0, verbose_name=u'收藏人数')
    image = models.ImageField(upload_to='courses/%Y/%m', verbose_name=u'封面图', max_length=100)
    click_nums = models.IntegerField(default=0, verbose_name=u'点击数')
    category = models.CharField(max_length=20, default=u'后端开发', verbose_name=u'教程类别')
    tag = models.CharField(max_length=10, default='', verbose_name=u'教程标签')
    youneed_know = models.CharField(max_length=300, default='', verbose_name=u'教程须知')
    teacher_tell = models.CharField(max_length=300, default='', verbose_name=u'主播告诉你能学到什么')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')
    is_banner = models.BooleanField(default=False, verbose_name=u'是否轮播')

    class Meta:
        verbose_name = u'教程'
        verbose_name_plural = verbose_name

    def get_zj_nums(self):
        # 获取教程章节数
        return self.lesson_set.all().count()
    # 显示函数名
    get_zj_nums.short_description = '章节数'

    def go_to(self):
        from django.utils.safestring import mark_safe
        return mark_safe("<a href='https://www.dogebug.cn'>跳转至博客</a>")
    # 显示函数名
    go_to.short_description = '跳转我的博客'

    def get_learn_users(self):
        # 获取学习人数中的5个
        return self.usercourse_set.all()[:5]

    def get_course_lesson(self):
        # 获取教程所有章节
        return self.lesson_set.all()

    def __str__(self):
        return self.name


class BannerCourse(Course):
    class Meta:
        verbose_name = '轮播教程'
        verbose_name_plural = verbose_name
        # 不再生成第二张表
        proxy = True


class Lesson(models.Model):
    course = models.ForeignKey(Course, verbose_name=u'教程')
    name = models.CharField(max_length=100, verbose_name=u'章节名')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'章节'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

    def get_lesson_video(self):
        # 获取章节视频
        return self.video_set.all()


class Video(models.Model):
    lesson = models.ForeignKey(Lesson, verbose_name=u'章节')
    name = models.CharField(max_length=100, verbose_name=u'视频名')
    url = models.CharField(max_length=200, default="", verbose_name=u'视频链接')
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'视频'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class CourseResource(models.Model):
    course = models.ForeignKey(Course, verbose_name=u'教程')
    name = models.CharField(max_length=100, verbose_name=u'名称')
    download = models.FileField(upload_to='course/%Y/%m', verbose_name=u'资源文件', max_length=100)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'教程资源'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name