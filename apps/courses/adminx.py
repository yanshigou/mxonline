# -*- coding: utf-8 -*-
__author__ = 'dzt'
__date__ = '2018/09/09 13:16'


import xadmin
from .models import Course, Lesson, Video, CourseResource, BannerCourse
from organization.models import CourseOrg


class LessonInline(object):
    model = Lesson
    extra = 0


class CourseResourceInline(object):
    model = CourseResource
    extra = 0


class CourseAdmin(object):
    # 函数也可以显示 get_zj_nums
    list_display = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'get_zj_nums', 'go_to']
    search_fields = ['name', 'desc', 'detail', 'degree', 'students']
    list_filter = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students']

    # 排序
    ordering = ['-students']
    # 只读
    readonly_fields = ['students']
    # 不显示
    exclude = []
    # 页面组装 把章节加入到课程页面 可多个 但只能做一层嵌套
    inlines = [LessonInline, CourseResourceInline]
    # 列表页可以编辑
    list_editable = ['degree']
    # 自动页面刷新时间
    refresh_times = [3, 5, 10]
    # excel导入
    # import_excel = True

    # 分管理器显示指定数据
    def queryset(self):
        qs = super(CourseAdmin, self).queryset()
        qs = qs.filter(is_banner=False)
        return qs

    def save_models(self):
        # 在保存课程的时候统计课程机构的课程数
        obj = self.new_obj
        obj.save()
        if obj.course_org is not None:
            course_org = obj.course_org
            course_org.course_nums = Course.objects.filter(course_org=course_org).count()
            course_org.save()

    # def post(self, request, *args, **kwargs):
    #     if 'excel' in request.FILES:
    #         print('ok')
    #     return super(CourseAdmin, self).post(request, args, kwargs)


class LessonAdmin(object):
    list_display = ['course', 'name', 'add_time']
    search_fields = ['course', 'name']
    list_filter = ['course__name', 'name', 'add_time']


class VideoAdmin(object):
    list_display = ['lesson', 'name', 'add_time']
    search_fields = ['lesson', 'name']
    list_filter = ['lesson', 'name', 'add_time']


class CourseResourceAdmin(object):
    list_display = ['course', 'name', 'download', 'add_time']
    search_fields = ['course', 'name', 'download']
    list_filter = ['course', 'name', 'download', 'add_time']


class BannerCourseAdmin(object):
    list_display = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students']
    search_fields = ['name', 'desc', 'detail', 'degree', 'students']
    list_filter = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students']

    # 排序
    ordering = ['-students']
    # 只读
    readonly_fields = ['students']
    # 不显示
    exclude = []
    # 页面组装 把章节加入到课程页面 可多个 但只能做一层嵌套
    inlines = [LessonInline, CourseResourceInline]

    # 分管理器显示指定数据
    def queryset(self):
        qs = super(BannerCourseAdmin, self).queryset()
        qs = qs.filter(is_banner=True)
        return qs


xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(BannerCourse, BannerCourseAdmin)
xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)