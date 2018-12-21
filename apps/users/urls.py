# -*- coding: utf-8 -*-
__author__ = 'dzt'
__date__ = '2018/12/21 23:48'


from django.conf.urls import url
from .views import UserInfoView

urlpatterns = [
    # 用户信息
    url(r'^info/$', UserInfoView.as_view(), name='user_info'),

]