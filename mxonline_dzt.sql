/*
 Navicat MySQL Data Transfer

 Source Server         : dzt
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 47.106.174.128:3306
 Source Schema         : mxonline

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 28/02/2019 18:44:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (8, 'Can add permission', 3, 'add_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can change permission', 3, 'change_permission');
INSERT INTO `auth_permission` VALUES (10, 'Can delete permission', 3, 'delete_permission');
INSERT INTO `auth_permission` VALUES (11, 'Can view group', 2, 'view_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view permission', 3, 'view_permission');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can add 邮箱验证码', 7, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (25, 'Can change 邮箱验证码', 7, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (26, 'Can delete 邮箱验证码', 7, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (27, 'Can add 轮播图', 8, 'add_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can change 轮播图', 8, 'change_banner');
INSERT INTO `auth_permission` VALUES (29, 'Can delete 轮播图', 8, 'delete_banner');
INSERT INTO `auth_permission` VALUES (30, 'Can view 轮播图', 8, 'view_banner');
INSERT INTO `auth_permission` VALUES (31, 'Can view 邮箱验证码', 7, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (32, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (33, 'Can add 课程资源', 9, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (34, 'Can change 课程资源', 9, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 课程资源', 9, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (36, 'Can add 章节', 10, 'add_lesson');
INSERT INTO `auth_permission` VALUES (37, 'Can change 章节', 10, 'change_lesson');
INSERT INTO `auth_permission` VALUES (38, 'Can delete 章节', 10, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (39, 'Can add 课程', 11, 'add_course');
INSERT INTO `auth_permission` VALUES (40, 'Can change 课程', 11, 'change_course');
INSERT INTO `auth_permission` VALUES (41, 'Can delete 课程', 11, 'delete_course');
INSERT INTO `auth_permission` VALUES (42, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (43, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (44, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (45, 'Can add 轮播课程', 11, 'add_bannercourse');
INSERT INTO `auth_permission` VALUES (46, 'Can change 轮播课程', 11, 'change_bannercourse');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 轮播课程', 11, 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES (48, 'Can view 轮播课程', 13, 'view_bannercourse');
INSERT INTO `auth_permission` VALUES (49, 'Can view 课程', 11, 'view_course');
INSERT INTO `auth_permission` VALUES (50, 'Can view 课程资源', 9, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (51, 'Can view 章节', 10, 'view_lesson');
INSERT INTO `auth_permission` VALUES (52, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (53, 'Can add 课程机构', 14, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (54, 'Can change 课程机构', 14, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 课程机构', 14, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (56, 'Can add 城市', 15, 'add_citydict');
INSERT INTO `auth_permission` VALUES (57, 'Can change 城市', 15, 'change_citydict');
INSERT INTO `auth_permission` VALUES (58, 'Can delete 城市', 15, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (59, 'Can add 教师', 16, 'add_teacher');
INSERT INTO `auth_permission` VALUES (60, 'Can change 教师', 16, 'change_teacher');
INSERT INTO `auth_permission` VALUES (61, 'Can delete 教师', 16, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (62, 'Can view 城市', 15, 'view_citydict');
INSERT INTO `auth_permission` VALUES (63, 'Can view 课程机构', 14, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (64, 'Can view 教师', 16, 'view_teacher');
INSERT INTO `auth_permission` VALUES (65, 'Can add 用户咨询', 17, 'add_userask');
INSERT INTO `auth_permission` VALUES (66, 'Can change 用户咨询', 17, 'change_userask');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 用户咨询', 17, 'delete_userask');
INSERT INTO `auth_permission` VALUES (68, 'Can add 用户课程', 18, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (69, 'Can change 用户课程', 18, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (70, 'Can delete 用户课程', 18, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (71, 'Can add 用户收藏', 19, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (72, 'Can change 用户收藏', 19, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (73, 'Can delete 用户收藏', 19, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (74, 'Can add 课程评论', 20, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (75, 'Can change 课程评论', 20, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (76, 'Can delete 课程评论', 20, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (77, 'Can add 用户消息', 21, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (78, 'Can change 用户消息', 21, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 用户消息', 21, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (80, 'Can view 课程评论', 20, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (81, 'Can view 用户咨询', 17, 'view_userask');
INSERT INTO `auth_permission` VALUES (82, 'Can view 用户课程', 18, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (83, 'Can view 用户收藏', 19, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (84, 'Can view 用户消息', 21, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (85, 'Can add User Setting', 22, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (86, 'Can change User Setting', 22, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (87, 'Can delete User Setting', 22, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can add log entry', 23, 'add_log');
INSERT INTO `auth_permission` VALUES (89, 'Can change log entry', 23, 'change_log');
INSERT INTO `auth_permission` VALUES (90, 'Can delete log entry', 23, 'delete_log');
INSERT INTO `auth_permission` VALUES (91, 'Can add User Widget', 24, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can change User Widget', 24, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can delete User Widget', 24, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (94, 'Can add Bookmark', 25, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (95, 'Can change Bookmark', 25, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (96, 'Can delete Bookmark', 25, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (97, 'Can view Bookmark', 25, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (98, 'Can view log entry', 23, 'view_log');
INSERT INTO `auth_permission` VALUES (99, 'Can view User Setting', 22, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (100, 'Can view User Widget', 24, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (101, 'Can add captcha store', 26, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (102, 'Can change captcha store', 26, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (103, 'Can delete captcha store', 26, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (104, 'Can view captcha store', 26, 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `youneed_know` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_course_course_org_id_4d2c4aab_fk_organizat`(`course_org_id`) USING BTREE,
  INDEX `courses_course_teacher_id_846fa526_fk_organization_teacher_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES (1, '黑铁进阶', '黑铁进阶之路', '在黑铁中遨游，不要畏惧', 'cj', 60, 6, 1, 'courses/2019/01/pdd3.jpg', 13, 'lol', '排位', '你不需要知道什么，qwerdf就行了', '黑铁是莽出来的', '2019-01-27 15:20:00', 1, 1, 1);
INSERT INTO `courses_course` VALUES (2, '我的英雄为什么没有Q', '如何百分之百q不中教程', '3分钟学会百分之百q空', 'gj', 30, 14, 1, 'courses/2019/01/timg1.jpg', 23, 'lol', '教学', '抓紧练习，成就未来', '我的英雄为什么没有q', '2019-01-27 15:39:00', 1, 2, 2);
INSERT INTO `courses_course` VALUES (3, '我没有开挂', '我卢本伟真的没有开挂', '我不可能开挂，我真的没有开挂啊', 'gj', 60, 4, 0, 'courses/2019/01/55k.jpg', 8, '绝地求生', '教学', '绝地科学家', '如何开挂不被发现', '2019-01-27 15:41:00', 1, 3, 3);
INSERT INTO `courses_course` VALUES (4, 'python入门', 'python从零开始', '从入门到放弃', 'cj', 60, 4, 0, 'courses/2019/01/540e57300001d6d906000338-240-135.jpg', 4, '后端开发', 'python', 'python入门', 'print(\'i\'m ok\')', '2019-01-27 15:44:00', 0, 4, 4);
INSERT INTO `courses_course` VALUES (5, 'java入门', 'java从零开始', '从入门到放弃', 'zj', 60, 2, 0, 'courses/2019/01/57035ff200014b8a06000338-240-135.jpg', 7, '后端开发', 'java', 'java入门', 'System.out.println(\"Hello World\")', '2019-01-27 15:47:00', 0, 5, 5);
INSERT INTO `courses_course` VALUES (6, '正方形打野', '你皮你皮任你皮，', '你皮你皮任你皮，把你当瓜皮', 'zj', 2, 3, 1, 'courses/2019/01/dasima1.jpg', 7, 'lol', '教学', '你强任你强，我吃你三狼', '回手掏，鬼刀一开看不见', '2019-01-28 13:31:00', 0, 1, 6);
INSERT INTO `courses_course` VALUES (7, 'Legends Never Die', '2017全球总决赛 宣传动画 及 主题曲', '2017全球总决赛 宣传动画 及 主题曲', 'gj', 10, 3, 101, 'courses/2019/01/a1e891e43f67dc44.jpg', 104, 'lol', 'CG', '2017全球总决赛 宣传动画 及 主题曲 - 传奇永不熄 (Legends Never Die) - lol英雄联盟', '2017全球总决赛 宣传动画 及 主题曲 - 传奇永不熄 (Legends Never Die) - lol英雄联盟', '2019-01-29 09:33:00', 0, 1, 1);

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `download` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_courseresource_course_id_5eba1332_fk_courses_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES (1, 'print(\'ok\')', 'course/2019/01/printok.py', '2019-01-27 15:50:00', 4);
INSERT INTO `courses_courseresource` VALUES (2, '正方形鬼畜', 'course/2019/01/malaoshiguichu.mp4', '2019-01-28 13:31:00', 6);

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_lesson_course_id_16bc4882_fk_courses_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES (1, '2楼中单，不给就送', '2019-01-27 15:20:00', 1);
INSERT INTO `courses_lesson` VALUES (2, '选豹女啊', '2019-01-27 15:39:00', 2);
INSERT INTO `courses_lesson` VALUES (3, 'SKS为什么要屏息啊', '2019-01-27 15:41:00', 3);
INSERT INTO `courses_lesson` VALUES (4, '第一节  Print', '2019-01-27 15:44:00', 4);
INSERT INTO `courses_lesson` VALUES (5, '第一节 println', '2019-01-27 15:47:00', 5);
INSERT INTO `courses_lesson` VALUES (6, '正方形鬼畜', '2019-01-28 13:31:00', 6);
INSERT INTO `courses_lesson` VALUES (7, 'Legends Never Die', '2019-01-29 09:36:00', 7);

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_video_lesson_id_59f2396e_fk_courses_lesson_id`(`lesson_id`) USING BTREE,
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES (1, '我是全英雄联盟最骚的骚猪!', 'http://pm0vfth2t.bkt.clouddn.com/pddguichu.mp4', 4, '2019-01-28 09:09:00', 2);
INSERT INTO `courses_video` VALUES (2, '我是全英雄联盟最骚的骚猪!', 'http://pm0vfth2t.bkt.clouddn.com/pddguichu.mp4', 4, '2019-01-28 09:18:00', 1);
INSERT INTO `courses_video` VALUES (3, '一手正方形打野', 'http://pm0vfth2t.bkt.clouddn.com/malaoshiguichu.mp4', 2, '2019-01-28 13:35:00', 6);
INSERT INTO `courses_video` VALUES (4, '五五开的沙漠骆驼', 'http://pm0vfth2t.bkt.clouddn.com/55kaigua.mp4', 2, '2019-01-28 13:36:00', 3);
INSERT INTO `courses_video` VALUES (5, 'Legends Never Die', 'http://pm0vfth2t.bkt.clouddn.com/Legends%20Never%20Die.mp4', 3, '2019-01-29 09:36:00', 7);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (26, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (9, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (19, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (21, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (15, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (14, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (16, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (7, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (25, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-01-27 14:47:29');
INSERT INTO `django_migrations` VALUES (11, 'users', '0001_initial', '2019-01-27 14:47:30');
INSERT INTO `django_migrations` VALUES (12, 'admin', '0001_initial', '2019-01-27 14:47:30');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0002_logentry_remove_auto_add', '2019-01-27 14:47:30');
INSERT INTO `django_migrations` VALUES (14, 'captcha', '0001_initial', '2019-01-27 14:47:30');
INSERT INTO `django_migrations` VALUES (15, 'organization', '0001_initial', '2019-01-27 14:47:30');
INSERT INTO `django_migrations` VALUES (16, 'courses', '0001_initial', '2019-01-27 14:47:30');
INSERT INTO `django_migrations` VALUES (17, 'operation', '0001_initial', '2019-01-27 14:47:30');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2019-01-27 14:47:30');
INSERT INTO `django_migrations` VALUES (19, 'xadmin', '0001_initial', '2019-01-27 14:47:31');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('37ud04ica1hs54kc5uf4k7s9tvrp3cn9', 'ODU1MWY1YmYyNzAyNGEyMjlmYzQwMDhjNzA0NTc5ODBmYzI5NWEyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwidGVhY2hlciJdLCJfcV89Il0sIm5hdl9tZW51IjoiW3tcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTIsIFwidGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTMsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTY3M2FcdTY3ODRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0LCBcInRpdGxlXCI6IFwiXHU2NTU5XHU1ZTA4XCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcInRpdGxlXCI6IFwiXHU2NzNhXHU2Nzg0XHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDUsIFwidGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU1NmZlXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNSwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NTRhOFx1OGJlMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTYsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJtZXNzYWdlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NmQ4OFx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE5LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NTM2XHU4NWNmXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDIxLCBcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDIsIFwidGl0bGVcIjogXCJcdTdlYzRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNCwgXCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNywgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2Jhbm5lcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOCwgXCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2xlc3Nvbi9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOSwgXCJ0aXRsZVwiOiBcIlx1N2FlMFx1ODI4MlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL3ZpZGVvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMCwgXCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZXJlc291cmNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMSwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGQ0NFx1NmU5MFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL3ZpZGVvL1wiLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU3YmExXHU3NDA2XCJ9XSIsIl9hdXRoX3VzZXJfaGFzaCI6ImFiNDhlNzYwMzNjYzIxOTQ0MjQxYmI0ZjAyOTJhNzJlYzJlNjAzMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=', '2019-03-07 08:49:40');
INSERT INTO `django_session` VALUES ('3pjinj3meroved1lh6vb8u4nr54ghzgo', 'YjU5ZWJlYzQ2OGNiMDEyNmM2NzQ5MTg4ZGFjYzQ0OGY5NWNhMGQ3Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjhiZWFlYjJmNDhmNDBmMGE1ZmIxNTRkNTI0OTVhYjc3MzAwZjRiYWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQifQ==', '2019-02-27 06:46:40');
INSERT INTO `django_session` VALUES ('ahpblxw3md6cq8lr6knmq8omsqm118sn', 'MmRiMDdkNmRkOGUzMjQzNmI5NGFkNzZlMjgxNmVlNzY5OTcyYzBmYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ5Zjc1ZWE0N2E5MjM1NTlhYTNmZDBmYWEyZjk2ZjJkNDI1ZWU0NmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMifQ==', '2019-02-11 08:26:29');
INSERT INTO `django_session` VALUES ('hgys2miud9tdz1ka0hokejaavbhmsueq', 'M2M5YTdjZjMyNWIwMzJmNzVhZDhkOWJmZjJkMTc5Zjc5N2VlMjNiNzp7IkxJU1RfUVVFUlkiOltbInVzZXJzIiwiYmFubmVyIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJhYjQ4ZTc2MDMzY2MyMTk0NDI0MWJiNGYwMjkyYTcyZWMyZTYwMzA3IiwibmF2X21lbnUiOiJbe1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMiwgXCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMywgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vdGVhY2hlci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTQsIFwidGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwidGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogMywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNSwgXCJ0aXRsZVwiOiBcIlx1OTBhZVx1N2JiMVx1OWE4Y1x1OGJjMVx1NzgwMVwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9iYW5uZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDYsIFwidGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJhc2svXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE1LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU1NGE4XHU4YmUyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcm1lc3NhZ2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE3LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2ZDg4XHU2MDZmXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTgsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTksIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjRjZFx1NGY1Y1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwib3JkZXJcIjogMjEsIFwidGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwidGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMiwgXCJ0aXRsZVwiOiBcIlx1N2VjNFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0LCBcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwidGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA3LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvbGVzc29uL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA5LCBcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvdmlkZW8vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwLCBcInRpdGxlXCI6IFwiXHU4OWM2XHU5ODkxXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2NvdXJzZXMvdmlkZW8vXCIsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTdiYTFcdTc0MDZcIn1dIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-03-07 08:48:30');
INSERT INTO `django_session` VALUES ('jire80zdigwqxc4wdurvkui125i9r7f5', 'YTM4NjYzOGExNGI1OGU5MDk2ZTU4MTE1ZWQwOWUwM2E3NWY0YjQ2MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJuYXZfbWVudSI6Ilt7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEyLCBcInRpdGxlXCI6IFwiXHU1N2NlXHU1ZTAyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jb3Vyc2VvcmcvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEzLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU2NzNhXHU2Nzg0XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNCwgXCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcInRpdGxlXCI6IFwiXHU2NzNhXHU2Nzg0XHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDUsIFwidGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU1NmZlXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNSwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NTRhOFx1OGJlMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTYsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJtZXNzYWdlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NmQ4OFx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE5LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NTM2XHU4NWNmXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjRjZFx1NGY1Y1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwib3JkZXJcIjogMjEsIFwidGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwidGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMiwgXCJ0aXRsZVwiOiBcIlx1N2VjNFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0LCBcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNywgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2Jhbm5lcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOCwgXCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2xlc3Nvbi9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOSwgXCJ0aXRsZVwiOiBcIlx1N2FlMFx1ODI4MlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL3ZpZGVvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMCwgXCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZXJlc291cmNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMSwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGQ0NFx1NmU5MFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2Jhbm5lcmNvdXJzZS9cIiwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1N2JhMVx1NzQwNlwifV0iLCJfYXV0aF91c2VyX2hhc2giOiJhYjQ4ZTc2MDMzY2MyMTk0NDI0MWJiNGYwMjkyYTcyZWMyZTYwMzA3IiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2019-02-12 09:40:20');
INSERT INTO `django_session` VALUES ('ju427r4ww75p57pb18xr3exba08tg124', 'NzZkMWUzZmFkMTllNmYzODc2ZjA4ZDFiZGEyOWYzMmQ0OGE2N2IwZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFiNDhlNzYwMzNjYzIxOTQ0MjQxYmI0ZjAyOTJhNzJlYzJlNjAzMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2019-02-11 09:16:40');
INSERT INTO `django_session` VALUES ('md1rcabq49fnryek31d7o7buhxksno6s', 'ZmVkNjdhYmMwNmU0OTQ0NDI0ZDQ0MTcxYTk0Y2VmM2ZiMWQ5NjcxOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwidmlkZW8iXSwiX3JlbF9sZXNzb25fX2lkX19leGFjdD0zIl0sIm5hdl9tZW51IjoiW3tcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTIsIFwidGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTMsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTY3M2FcdTY3ODRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0LCBcInRpdGxlXCI6IFwiXHU2NTU5XHU1ZTA4XCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcInRpdGxlXCI6IFwiXHU2NzNhXHU2Nzg0XHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDUsIFwidGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU1NmZlXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNSwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NTRhOFx1OGJlMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTYsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJtZXNzYWdlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NmQ4OFx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE5LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NTM2XHU4NWNmXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY0Y2RcdTRmNWNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDIxLCBcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDIsIFwidGl0bGVcIjogXCJcdTdlYzRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNCwgXCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNywgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2Jhbm5lcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOCwgXCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2xlc3Nvbi9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOSwgXCJ0aXRsZVwiOiBcIlx1N2FlMFx1ODI4MlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL3ZpZGVvL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMCwgXCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZXJlc291cmNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMSwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGQ0NFx1NmU5MFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL3ZpZGVvL1wiLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU3YmExXHU3NDA2XCJ9XSIsIl9hdXRoX3VzZXJfaGFzaCI6ImFiNDhlNzYwMzNjYzIxOTQ0MjQxYmI0ZjAyOTJhNzJlYzJlNjAzMDciLCJfYXV0aF91c2VyX2lkIjoiMSJ9', '2019-02-11 13:45:08');
INSERT INTO `django_session` VALUES ('nq3p9szf51aisrq8d18qydhh1c8dndus', 'YjU5ZWJlYzQ2OGNiMDEyNmM2NzQ5MTg4ZGFjYzQ0OGY5NWNhMGQ3Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjhiZWFlYjJmNDhmNDBmMGE1ZmIxNTRkNTI0OTVhYjc3MzAwZjRiYWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQifQ==', '2019-02-13 06:33:11');
INSERT INTO `django_session` VALUES ('ruuj4qwne4n80usxzxmgbdixw4psb9pj', 'MjY5NGQwOGFmNGYwOTRjZGM1Zjk1MWU1MzVhMDQ5ZDVkNDFiMjkzMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlkNDA3NmIwMTNkMTFkMGJmOWZhMjQzMDg1ZjkwYTZhNDdmODFhZWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2019-03-13 13:56:49');
INSERT INTO `django_session` VALUES ('uvejz7pr5jje5mc7z3ypghhwp1vjxg3h', 'MjI1OGFiOTQ3MTBhZWQ4MDUwMzM4ODUzNmEyMDkyYzI3ZjUxMzlkMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXSwibmF2X21lbnUiOiJbe1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMiwgXCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMywgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vdGVhY2hlci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTQsIFwidGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwidGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogMywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNSwgXCJ0aXRsZVwiOiBcIlx1OTBhZVx1N2JiMVx1OWE4Y1x1OGJjMVx1NzgwMVwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9iYW5uZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDYsIFwidGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJhc2svXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE1LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU1NGE4XHU4YmUyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcm1lc3NhZ2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE3LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2ZDg4XHU2MDZmXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi9jb3Vyc2Vjb21tZW50cy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTgsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTksIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjRjZFx1NGY1Y1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwib3JkZXJcIjogMjEsIFwidGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwidGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMiwgXCJ0aXRsZVwiOiBcIlx1N2VjNFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0LCBcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwidGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA3LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvYmFubmVyY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvbGVzc29uL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA5LCBcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvdmlkZW8vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwLCBcInRpdGxlXCI6IFwiXHU4OWM2XHU5ODkxXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2NvdXJzZXMvdmlkZW8vXCIsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTdiYTFcdTc0MDZcIn1dIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWI0OGU3NjAzM2NjMjE5NDQyNDFiYjRmMDI5MmE3MmVjMmU2MDMwNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2019-03-10 15:11:34');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id`(`course_id`) USING BTREE,
  INDEX `operation_coursecomm_user_id_f5ff70b3_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (1, '卢本伟牛逼', '2019-01-28 02:25:08', 3, 2);
INSERT INTO `operation_coursecomments` VALUES (2, '皮', '2019-01-30 06:29:48', 6, 4);

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (1, '我是全英雄联盟最骚的骚猪!', '13370763530', 'pdd', '2019-01-30 06:31:47');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2019-01-27 15:51:28', 4, 1);
INSERT INTO `operation_usercourse` VALUES (2, '2019-01-28 02:24:46', 2, 2);
INSERT INTO `operation_usercourse` VALUES (3, '2019-01-28 02:25:02', 3, 2);
INSERT INTO `operation_usercourse` VALUES (4, '2019-01-28 08:28:48', 5, 3);
INSERT INTO `operation_usercourse` VALUES (5, '2019-01-28 09:16:45', 1, 1);
INSERT INTO `operation_usercourse` VALUES (6, '2019-01-28 09:16:50', 2, 1);
INSERT INTO `operation_usercourse` VALUES (7, '2019-01-28 12:11:44', 2, 4);
INSERT INTO `operation_usercourse` VALUES (8, '2019-01-28 12:15:00', 3, 4);
INSERT INTO `operation_usercourse` VALUES (9, '2019-01-28 12:15:17', 1, 4);
INSERT INTO `operation_usercourse` VALUES (10, '2019-01-28 13:45:15', 3, 1);
INSERT INTO `operation_usercourse` VALUES (11, '2019-01-29 09:38:16', 7, 1);
INSERT INTO `operation_usercourse` VALUES (12, '2019-01-30 06:26:10', 7, 4);
INSERT INTO `operation_usercourse` VALUES (13, '2019-01-30 06:27:10', 6, 4);
INSERT INTO `operation_usercourse` VALUES (14, '2019-02-27 13:57:19', 1, 2);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (1, 2, 2, '2019-01-28 06:47:44', 2);
INSERT INTO `operation_userfavorite` VALUES (2, 2, 1, '2019-01-28 06:47:45', 2);
INSERT INTO `operation_userfavorite` VALUES (3, 5, 3, '2019-01-28 08:29:01', 3);
INSERT INTO `operation_userfavorite` VALUES (4, 1, 3, '2019-01-28 13:46:58', 1);
INSERT INTO `operation_userfavorite` VALUES (5, 1, 2, '2019-01-28 13:47:02', 1);
INSERT INTO `operation_userfavorite` VALUES (6, 1, 1, '2019-01-28 13:47:06', 1);
INSERT INTO `operation_userfavorite` VALUES (7, 7, 1, '2019-01-29 09:38:14', 1);
INSERT INTO `operation_userfavorite` VALUES (8, 6, 1, '2019-01-30 03:10:57', 1);
INSERT INTO `operation_userfavorite` VALUES (9, 2, 2, '2019-01-30 06:25:58', 4);
INSERT INTO `operation_userfavorite` VALUES (10, 7, 1, '2019-01-30 06:26:08', 4);
INSERT INTO `operation_userfavorite` VALUES (11, 1, 2, '2019-01-30 06:30:41', 4);

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES (1, 2, '欢迎注册!!!', 1, '2019-01-28 02:20:46');
INSERT INTO `operation_usermessage` VALUES (2, 3, '欢迎注册!!!', 1, '2019-01-28 08:25:53');
INSERT INTO `operation_usermessage` VALUES (3, 4, '欢迎注册!!!', 1, '2019-01-28 12:10:26');
INSERT INTO `operation_usermessage` VALUES (4, 4, '我给你再说一遍，卢本伟没有开挂', 1, '2019-01-30 06:32:00');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (1, '重庆市', '重庆市', '2019-01-27 14:49:00');
INSERT INTO `organization_citydict` VALUES (2, '北京市', '北京市', '2019-01-27 14:49:00');
INSERT INTO `organization_citydict` VALUES (3, '上海市', '上海市', '2019-01-27 14:49:00');
INSERT INTO `organization_citydict` VALUES (4, '深圳', '深圳', '2019-01-27 14:49:00');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `students` int(11) NOT NULL,
  `courses_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_courseo_city_id_4a842f85_fk_organizat`(`city_id`) USING BTREE,
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, '厌世狗科技', 'https://www.dogebug.cn/', '全国知名', 'gr', 4, 2, 'org/2019/01/pdd4.jpg', '重庆市渝北区渝鲁大道', 0, 0, '2019-01-27 14:50:00', 1);
INSERT INTO `organization_courseorg` VALUES (2, '嫖老师网络会所', '除了pdd的直播间，你可以在任何地方看见pdd', '全国知名', 'pxjg', 0, 2, 'org/2019/01/timg.jpg', '上海', 0, 0, '2019-01-27 14:58:00', 3);
INSERT INTO `organization_courseorg` VALUES (3, '芦苇科学研究中心', '我再说一次，我卢本位没有开挂', '全国知名', 'pxjg', 0, 0, 'org/2019/01/55k.jpg', '上海', 0, 0, '2019-01-27 15:00:00', 3);
INSERT INTO `organization_courseorg` VALUES (4, '清华大学', '清华同方不要误会', '全国知名', 'gx', 0, 0, 'org/2019/01/qhdx.jpg', '北京市', 0, 0, '2019-01-27 15:01:00', 2);
INSERT INTO `organization_courseorg` VALUES (5, '北京大学', '北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学', '全国知名', 'gx', 3, 0, 'org/2019/01/bjdx.jpg', '北京市', 0, 0, '2019-01-27 15:10:00', 2);

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `age` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teacher_org_id_cd000a1a_fk_organizat`(`org_id`) USING BTREE,
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, '厌世狗', 5, '厌世狗网络科技有限公司', '同事兼教师', '手把手教学', 3, 1, '2019-01-27 15:10:00', 20, 'teacher/2019/01/pdd4.jpg', 1);
INSERT INTO `organization_teacher` VALUES (2, '刘某', 2, '嫖老师网络会所', '主播兼教师', '骚猪', 0, 0, '2019-01-27 15:12:00', 25, 'teacher/2019/01/timg1.jpg', 2);
INSERT INTO `organization_teacher` VALUES (3, '卢本位', 3, '芦苇科学研究中心', '科学家', '我没有开挂', 0, 0, '2019-01-27 15:12:00', 20, 'teacher/2019/01/55k2.jpg', 3);
INSERT INTO `organization_teacher` VALUES (4, '奥巴马', 2, '美国退休院', '前总统', '教育是“美国繁荣的根源”', 0, 0, '2019-01-27 15:14:00', 57, 'teacher/2019/01/aobama.png', 4);
INSERT INTO `organization_teacher` VALUES (5, '马云', 0, '支付宝', '老大', '我对钱没有兴趣', 2, 1, '2019-01-27 15:17:00', 20, 'teacher/2019/01/mayun.png', 5);
INSERT INTO `organization_teacher` VALUES (6, '大司马', 1, '厌世狗网络科技有限公司', '吹牛皮', '你皮任你皮', 0, 0, '2019-01-28 13:26:00', 30, 'teacher/2019/01/dasima.jpg', 1);

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, '1', 'banner/2019/01/57a801860001c34b12000460.jpg', 'https://www.dogebug.cn', 1, '2019-01-27 15:18:00');
INSERT INTO `users_banner` VALUES (2, '2', 'banner/2019/01/57aa86a0000145c512000460.jpg', 'https://www.dogebug.cn', 2, '2019-01-27 15:18:00');
INSERT INTO `users_banner` VALUES (3, '3', 'banner/2019/01/57a801860001c34b12000460_z4Vb8zl.jpg', 'https://www.dogebug.cn', 3, '2019-01-27 15:19:00');
INSERT INTO `users_banner` VALUES (4, '4', 'banner/2019/01/57aa86a0000145c512000460_eqjGugw.jpg', 'https://www.dogebug.cn', 4, '2019-01-27 15:19:00');
INSERT INTO `users_banner` VALUES (5, '5', 'banner/2019/01/57a801860001c34b12000460_z4Vb8zl_x9TUSfA.jpg', 'https://www.dogebug.cn', 5, '2019-01-27 15:19:00');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (1, 'XP6ZRkthL9WdmpO4', '569578851@qq.com', 'register', '2019-01-28 02:20:46');
INSERT INTO `users_emailverifyrecord` VALUES (2, 'YdcReboT5w4FAZ1p', '575951825@qq.com', 'register', '2019-01-28 08:25:53');
INSERT INTO `users_emailverifyrecord` VALUES (3, 'eYXxOG20w6QtyiIp', '188594125@qq.com', 'register', '2019-01-28 12:10:26');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birday` date NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$36000$3Ds3PfFHrU7r$cHA8H6XOJkWJkVxl4wqkDomuNOUyJSQZEVXINWIuq90=', '2019-02-24 15:07:58', 1, 'dzt', '', '', '', 1, 1, '2019-01-27 14:48:09', '厌世狗', '1995-10-09', 'male', '九寨印象', '1337076353', 'image/2019/02/微信图片_20190227105214.png');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$36000$wPbqHhRA3y5q$ovhZYBmi9G/wdIbcyXMJ1qdK+2eeKd0vvnFeaLxCpbM=', '2019-02-27 13:56:48', 0, '569578851@qq.com', '', '', '569578851@qq.com', 0, 1, '2019-01-28 02:20:46', '', NULL, 'male', '', NULL, 'image/2019/01/ysg_JJ5AXWX.jpg');
INSERT INTO `users_userprofile` VALUES (3, 'pbkdf2_sha256$36000$lJbAkLG04Lst$cOw4ESSRr9d9V8kRR4HsO0d31ycveEoYiR5wnRVuqEM=', '2019-01-28 08:26:29', 0, '575951825@qq.com', '', '', '575951825@qq.com', 0, 1, '2019-01-28 08:25:53', 'qq', NULL, 'male', 'qq', NULL, 'image/2019/01/5bc0c043fed9f968203973d328300b0c_u1378961750853897277fm27gp0.jpg');
INSERT INTO `users_userprofile` VALUES (4, 'pbkdf2_sha256$36000$6iojaHhtvUek$smevl1NvUzs2nZG8l5BVF6OfmnvAdukNWnq0EYvc678=', '2019-02-13 06:46:40', 0, '188594125@qq.com', '', '', '188594125@qq.com', 0, 1, '2019-01-28 12:10:26', '卢本伟', '2019-01-30', 'male', '11', '111', 'image/2019/01/55k3.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2019-01-27 14:49:13', '119.86.41.147', '1', '重庆市', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (2, '2019-01-27 14:49:27', '119.86.41.147', '2', '北京市', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (3, '2019-01-27 14:49:35', '119.86.41.147', '3', '上海市', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (4, '2019-01-27 14:49:48', '119.86.41.147', '4', '深圳', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (5, '2019-01-27 14:58:45', '119.86.41.147', '1', '厌世狗科技', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (6, '2019-01-27 15:00:29', '119.86.41.147', '2', '嫖老师网络会所', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (7, '2019-01-27 15:01:46', '119.86.41.147', '3', '芦苇科学研究中心', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (8, '2019-01-27 15:10:05', '119.86.41.147', '4', '清华大学', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (9, '2019-01-27 15:10:37', '119.86.41.147', '5', '北京大学', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (10, '2019-01-27 15:12:05', '119.86.41.147', '1', '厌世狗', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (11, '2019-01-27 15:12:53', '119.86.41.147', '2', '刘某', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (12, '2019-01-27 15:14:01', '119.86.41.147', '3', '卢本位', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (13, '2019-01-27 15:17:31', '119.86.41.147', '4', '奥巴马', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (14, '2019-01-27 15:18:19', '119.86.41.147', '5', '马云', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (15, '2019-01-27 15:18:43', '119.86.41.147', '1', 'Banner object', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (16, '2019-01-27 15:19:01', '119.86.41.147', '2', 'Banner object', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (17, '2019-01-27 15:19:09', '119.86.41.147', '3', 'Banner object', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (18, '2019-01-27 15:19:20', '119.86.41.147', '4', 'Banner object', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (19, '2019-01-27 15:19:26', '119.86.41.147', '5', 'Banner object', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (20, '2019-01-27 15:51:23', '119.86.41.147', '1', 'print(\'ok\')', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (21, '2019-01-27 15:51:54', '119.86.41.147', '1', 'print(\'ok\')', 'change', '修改 course', 9, 1);
INSERT INTO `xadmin_log` VALUES (22, '2019-01-28 09:10:30', '125.86.80.83', '1', '我是全英雄联盟最骚的骚猪!', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (23, '2019-01-28 09:18:54', '125.86.80.83', '1', '我是全英雄联盟最骚的骚猪!', 'change', '修改 url', 12, 1);
INSERT INTO `xadmin_log` VALUES (24, '2019-01-28 09:19:06', '125.86.80.83', '2', '我是全英雄联盟最骚的骚猪!', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (25, '2019-01-28 13:29:29', '119.86.46.139', '6', '大司马', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (26, '2019-01-28 13:36:00', '119.86.46.139', '3', '一手正方形打野', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (27, '2019-01-28 13:45:08', '119.86.46.139', '4', '五五开的沙漠骆驼', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (28, '2019-01-29 09:36:46', '125.86.82.230', '7', 'Legends Never Die', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (29, '2019-01-29 09:37:51', '125.86.82.230', '5', 'Legends Never Die', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (30, '2019-01-29 09:40:13', '125.86.82.230', '5', 'Legends Never Die', 'change', '修改 learn_times', 12, 1);
INSERT INTO `xadmin_log` VALUES (31, '2019-01-30 06:33:04', '125.86.82.230', '4', 'UserMessage object', 'create', '已添加。', 21, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'courses_course_editform_portal', 'box-0,lesson_set-group,courseresource_set-group', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
