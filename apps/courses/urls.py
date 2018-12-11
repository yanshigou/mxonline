# -*- coding: utf-8 -*-
__author__ = 'dzt'
__date__ = '2018/12/11 20:42'

from django.conf.urls import url
from .views import *


urlpatterns = [
    # 课程列表页
    url(r'^list/$', CourseListView.as_view(), name='course_list'),

]