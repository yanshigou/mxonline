# -*- coding: utf-8 -*-
__author__ = 'dzt'
__date__ = '2018/12/11 20:42'

from django.conf.urls import url
from .views import *


urlpatterns = [
    # 教程列表页
    url(r'^list/$', CourseListView.as_view(), name='course_list'),
    # 教程详情页
    url(r'^detail/(?P<course_id>\d+)/$', CourseDetailView.as_view(), name='course_detail'),

    url(r'^info/(?P<course_id>\d+)/$', CourseInfoView.as_view(), name='course_info'),

    # 教程评论
    url(r'^comments/(?P<course_id>\d+)/$', CommentsView.as_view(), name='course_comments'),

    # 添加教程评论
    url(r'^add_comments/$', AddCommentsView.as_view(), name='course_add_comments'),

    # 视频页面
    url(r'^video/(?P<video_id>\d+)/$', VideoPlayView.as_view(), name='video_play'),
]