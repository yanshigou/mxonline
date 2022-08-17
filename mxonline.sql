/*
 Navicat MySQL Data Transfer

 Source Server         : 香港服务器
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 69.172.85.246:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 08/01/2019 10:02:18
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
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `auth_permission` VALUES (33, 'Can add 教程资源', 9, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (34, 'Can change 教程资源', 9, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 教程资源', 9, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (36, 'Can add 章节', 10, 'add_lesson');
INSERT INTO `auth_permission` VALUES (37, 'Can change 章节', 10, 'change_lesson');
INSERT INTO `auth_permission` VALUES (38, 'Can delete 章节', 10, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (39, 'Can add 教程', 11, 'add_course');
INSERT INTO `auth_permission` VALUES (40, 'Can change 教程', 11, 'change_course');
INSERT INTO `auth_permission` VALUES (41, 'Can delete 教程', 11, 'delete_course');
INSERT INTO `auth_permission` VALUES (42, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (43, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (44, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (45, 'Can view 教程', 11, 'view_course');
INSERT INTO `auth_permission` VALUES (46, 'Can view 教程资源', 9, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (47, 'Can view 章节', 10, 'view_lesson');
INSERT INTO `auth_permission` VALUES (48, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (49, 'Can add 直播机构', 13, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (50, 'Can change 直播机构', 13, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 直播机构', 13, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (52, 'Can add 城市', 14, 'add_citydict');
INSERT INTO `auth_permission` VALUES (53, 'Can change 城市', 14, 'change_citydict');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 城市', 14, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (55, 'Can add 主播', 15, 'add_teacher');
INSERT INTO `auth_permission` VALUES (56, 'Can change 主播', 15, 'change_teacher');
INSERT INTO `auth_permission` VALUES (57, 'Can delete 主播', 15, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (58, 'Can view 城市', 14, 'view_citydict');
INSERT INTO `auth_permission` VALUES (59, 'Can view 直播机构', 13, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (60, 'Can view 主播', 15, 'view_teacher');
INSERT INTO `auth_permission` VALUES (61, 'Can add 用户咨询', 16, 'add_userask');
INSERT INTO `auth_permission` VALUES (62, 'Can change 用户咨询', 16, 'change_userask');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 用户咨询', 16, 'delete_userask');
INSERT INTO `auth_permission` VALUES (64, 'Can add 用户教程', 17, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (65, 'Can change 用户教程', 17, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (66, 'Can delete 用户教程', 17, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (67, 'Can add 用户收藏', 18, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (68, 'Can change 用户收藏', 18, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (69, 'Can delete 用户收藏', 18, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (70, 'Can add 教程评论', 19, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (71, 'Can change 教程评论', 19, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (72, 'Can delete 教程评论', 19, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (73, 'Can add 用户消息', 20, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (74, 'Can change 用户消息', 20, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 用户消息', 20, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (76, 'Can view 教程评论', 19, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (77, 'Can view 用户咨询', 16, 'view_userask');
INSERT INTO `auth_permission` VALUES (78, 'Can view 用户教程', 17, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (79, 'Can view 用户收藏', 18, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (80, 'Can view 用户消息', 20, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (81, 'Can add User Setting', 21, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (82, 'Can change User Setting', 21, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (83, 'Can delete User Setting', 21, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (84, 'Can add log entry', 22, 'add_log');
INSERT INTO `auth_permission` VALUES (85, 'Can change log entry', 22, 'change_log');
INSERT INTO `auth_permission` VALUES (86, 'Can delete log entry', 22, 'delete_log');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Widget', 23, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Widget', 23, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Widget', 23, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (90, 'Can add Bookmark', 24, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (91, 'Can change Bookmark', 24, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (92, 'Can delete Bookmark', 24, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (93, 'Can view Bookmark', 24, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (94, 'Can view log entry', 22, 'view_log');
INSERT INTO `auth_permission` VALUES (95, 'Can view User Setting', 21, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (96, 'Can view User Widget', 23, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (97, 'Can add captcha store', 25, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (98, 'Can change captcha store', 25, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (99, 'Can delete captcha store', 25, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (100, 'Can view captcha store', 25, 'view_captchastore');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (8, 'FERJ', 'ferj', 'cd30f09ce25a892cc96619626df6a6987f65ceb4', '2018-12-21 23:19:58');
INSERT INTO `captcha_captchastore` VALUES (9, 'ELYD', 'elyd', '9497a4b05ff6e552ad8637b9d7bb6ebb7c4c7235', '2018-12-21 23:20:35');
INSERT INTO `captcha_captchastore` VALUES (10, 'JEDZ', 'jedz', '218a2c57fa47929939e69fc77f830488a7d94e9d', '2018-12-21 23:20:36');

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
  `add_time` datetime NOT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `youneed_know` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_course_course_org_id_4d2c4aab_fk_organizat`(`course_org_id`) USING BTREE,
  INDEX `courses_course_teacher_id_846fa526_fk_organization_teacher_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES (1, '拼音', '打字', 'abcde', 'gj', 90, 0, 0, 'courses/2018/11/aobama.png', 4, '2018-11-01 15:27:00', 1, '后端开发', '', 1, '哈哈哈哈', '嘿嘿嘿嘿嘿嘿嘿嘿嘿好', 0);
INSERT INTO `courses_course` VALUES (2, '青铜排位', '融入青铜5', '嫖主播带大家完美融入青铜5教学', 'gj', 90, 77, 88, 'courses/2018/12/pdd.jpg', 1003, '2018-12-10 19:59:00', 2, '后端开发', '', 2, '哈哈哈哈', '嘿嘿嘿嘿嘿嘿嘿嘿嘿好', 1);
INSERT INTO `courses_course` VALUES (3, '白银排位', '白银叱咤风云', '化身白银 叱咤风云', 'zj', 90, 21, 12, 'courses/2018/12/pdd_qxpbWs7.jpg', 15, '2018-12-11 21:42:00', 2, '后端开发', '', 2, '哈哈哈哈哈哈哈哈', '嘿嘿嘿嘿嘿嘿嘿嘿嘿好', 0);
INSERT INTO `courses_course` VALUES (4, 'python入门', 'python入门到精通', 'python入门到精通', 'cj', 30, 2, 11, 'courses/2018/12/540e57300001d6d906000338-240-135_Z3HIQ2t.jpg', 2, '2018-12-11 21:43:00', 1, '后端开发', '', 1, '哈哈哈哈', '嘿嘿嘿嘿嘿嘿嘿嘿嘿好', 0);
INSERT INTO `courses_course` VALUES (5, 'python精通', 'python入门到精通', 'python入门到精通', 'cj', 30, 3, 4, 'courses/2018/12/540e57300001d6d906000338-240-135_Z3HIQ2t_UpinzT0.jpg', 15, '2018-12-11 21:45:00', 1, '后端开发', '', 1, '哈哈哈哈', '嘿嘿嘿嘿嘿嘿嘿嘿嘿好', 1);
INSERT INTO `courses_course` VALUES (6, '黄金排位', '黄金呼风唤雨', '融入黄金 呼风唤雨', 'zj', 30, 46, 11, 'courses/2018/12/pdd_v48DKOH.jpg', 90, '2018-12-11 21:45:00', 2, '后端开发', '', 3, '哈哈哈哈', '嘿嘿嘿嘿嘿嘿嘿嘿嘿好', 0);
INSERT INTO `courses_course` VALUES (7, '白金排位', '三角形中单正方形打野', '白金排位三角形中单正方形打野', 'zj', 40, 23, 11, 'courses/2018/12/pdd_FMnyOxR.jpg', 67, '2018-12-11 21:46:00', 3, '后端开发', '', 3, '哈哈哈哈', '嘿嘿嘿嘿嘿嘿嘿嘿嘿好', 0);
INSERT INTO `courses_course` VALUES (8, '钻石排位', '钻石守门员', '如何做好一个钻石守门员', 'cj', 70, 20, 30, 'courses/2018/12/pdd_eNKJWwB.jpg', 138, '2018-12-11 21:48:00', 3, '后端开发', '', 3, '哈哈哈哈', '嘿嘿嘿嘿嘿嘿嘿嘿嘿好', 1);

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
INSERT INTO `courses_courseresource` VALUES (1, '1', 'course/2018/11/aobama.png', '2018-11-01 15:29:00', 1);
INSERT INTO `courses_courseresource` VALUES (2, '简灯笼绝招', 'course/2018/12/u2979902520973921033fm26gp0.jpg', '2018-12-14 10:33:00', 8);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES (1, '1', '2018-11-01 15:28:00', 1);
INSERT INTO `courses_lesson` VALUES (2, '秒选亚缩', '2018-12-14 10:42:00', 8);
INSERT INTO `courses_lesson` VALUES (3, '秒选劫', '2018-12-14 10:43:00', 7);
INSERT INTO `courses_lesson` VALUES (4, '秒选瞎子', '2018-12-14 10:43:00', 6);
INSERT INTO `courses_lesson` VALUES (5, '秒选剑圣', '2018-12-14 10:43:00', 3);
INSERT INTO `courses_lesson` VALUES (6, '秒选盖伦', '2018-12-14 10:43:00', 2);

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_video_lesson_id_59f2396e_fk_courses_lesson_id`(`lesson_id`) USING BTREE,
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES (1, '1', '2018-11-01 15:29:00', 1, 30, 'http://vjs.zencdn.net/v/oceans.mp4');
INSERT INTO `courses_video` VALUES (2, '天下武功为快不破', '2018-12-14 10:44:00', 2, 1, 'http://vjs.zencdn.net/v/oceans.mp4');
INSERT INTO `courses_video` VALUES (3, '天下武功为快不破', '2018-12-14 10:45:00', 3, 10, 'http://vjs.zencdn.net/v/oceans.mp4');
INSERT INTO `courses_video` VALUES (4, '天下武功为快不破', '2018-12-14 10:45:00', 4, 2, 'http://vjs.zencdn.net/v/oceans.mp4');
INSERT INTO `courses_video` VALUES (5, '天下武功为快不破', '2018-12-14 10:45:00', 5, 11, 'http://vjs.zencdn.net/v/oceans.mp4');

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (25, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (9, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (19, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (16, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (14, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (13, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (15, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (7, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'userwidget');

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
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (11, 'users', '0001_initial', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (12, 'admin', '0001_initial', '2018-11-17 15:19:58');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0002_logentry_remove_auto_add', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (14, 'captcha', '0001_initial', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (15, 'organization', '0001_initial', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (16, 'organization', '0002_auto_20180913_1452', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (17, 'organization', '0003_auto_20180914_1410', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (18, 'organization', '0004_auto_20180914_1443', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (19, 'courses', '0001_initial', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (20, 'courses', '0002_auto_20180910_1142', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (21, 'courses', '0003_course_course_org', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (22, 'operation', '0001_initial', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (23, 'organization', '0005_teacher_image', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (24, 'sessions', '0001_initial', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (25, 'users', '0002_banner_emailverifyrecord', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (26, 'users', '0003_auto_20180908_2201', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (27, 'users', '0004_auto_20180909_1257', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (28, 'users', '0005_auto_20181116_1644', '2018-11-17 15:19:59');
INSERT INTO `django_migrations` VALUES (29, 'xadmin', '0001_initial', '2018-11-17 15:20:00');
INSERT INTO `django_migrations` VALUES (30, 'xadmin', '0002_log', '2018-11-17 15:20:00');
INSERT INTO `django_migrations` VALUES (31, 'xadmin', '0003_auto_20160715_0100', '2018-11-17 15:20:00');
INSERT INTO `django_migrations` VALUES (32, 'courses', '0004_course_category', '2018-12-13 17:55:10');
INSERT INTO `django_migrations` VALUES (33, 'courses', '0005_course_tag', '2018-12-13 17:55:10');
INSERT INTO `django_migrations` VALUES (34, 'courses', '0006_auto_20181214_0944', '2018-12-14 09:44:55');
INSERT INTO `django_migrations` VALUES (35, 'organization', '0006_teacher_age', '2018-12-19 09:13:00');
INSERT INTO `django_migrations` VALUES (36, 'users', '0006_auto_20181225_1201', '2018-12-25 12:01:44');
INSERT INTO `django_migrations` VALUES (37, 'courses', '0007_course_is_banner', '2019-01-02 09:21:04');
INSERT INTO `django_migrations` VALUES (38, 'organization', '0007_courseorg_tag', '2019-01-02 09:21:05');

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
INSERT INTO `django_session` VALUES ('giso8zwdyyjx8cxyvb562z1d1egeod6t', 'NWFjOWIzYTQzMDg1MzNlNTVhZDMyNTk0NDRiZjYzNTRjNzllOTU4Nzp7IkxJU1RfUVVFUlkiOltbImNvdXJzZXMiLCJjb3Vyc2UiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjYyNmU0NTEyNTc4ODI0MjJiNzk4YmJlOWIxOWYwN2NjMWNlNmM5ZDIiLCJuYXZfbWVudSI6Ilt7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExLCBcInRpdGxlXCI6IFwiXHU1N2NlXHU1ZTAyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jb3Vyc2VvcmcvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEyLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU2NzNhXHU2Nzg0XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi90ZWFjaGVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMywgXCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vdGVhY2hlci9cIiwgXCJ0aXRsZVwiOiBcIlx1NjczYVx1Njc4NFx1N2JhMVx1NzQwNlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA1LCBcInRpdGxlXCI6IFwiXHU5MGFlXHU3YmIxXHU5YThjXHU4YmMxXHU3ODAxXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2Jhbm5lci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNiwgXCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTQsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTU0YThcdThiZTJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE1LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTYsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL2NvdXJzZWNvbW1lbnRzL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNywgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGJjNFx1OGJiYVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmZhdm9yaXRlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxOCwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjUzNlx1ODVjZlwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjRjZFx1NGY1Y1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwib3JkZXJcIjogMjAsIFwidGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwidGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMiwgXCJ0aXRsZVwiOiBcIlx1N2VjNFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0LCBcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwidGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA3LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvbGVzc29uL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4LCBcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvdmlkZW8vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDksIFwidGl0bGVcIjogXCJcdTg5YzZcdTk4OTFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2VyZXNvdXJjZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTAsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThkNDRcdTZlOTBcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vY291cnNlcy9sZXNzb24vXCIsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTdiYTFcdTc0MDZcIn1dIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2019-01-16 09:22:06');
INSERT INTO `django_session` VALUES ('gn6qbeqdwst9ia6hzwhynrffg7277k35', 'MmE3NzA0NzdlZjkwMzRjNGRmMjIxZmE0MmZmYWM4NGUzNzhjNjY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsImJhbm5lciJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNjI2ZTQ1MTI1Nzg4MjQyMmI3OThiYmU5YjE5ZjA3Y2MxY2U2YzlkMiIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2019-01-15 21:52:05');
INSERT INTO `django_session` VALUES ('l0jmsbpy05ryf4be4rdhlh73qhnduokw', 'ZTdjNDhhODU2YThmNWFkYTE4N2I2ZmUxZmJjOGIzMDYwMzlkNjJlZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlcmVzb3VyY2UiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjYyNmU0NTEyNTc4ODI0MjJiNzk4YmJlOWIxOWYwN2NjMWNlNmM5ZDIiLCJfYXV0aF91c2VyX2lkIjoiMiJ9', '2019-01-01 10:13:08');
INSERT INTO `django_session` VALUES ('mogjo3gvlbpfd09y6hnlrv8fgnym1bal', 'MjRlZTRlNmZhZTMyNGI2NTE3NzU3ZjlhNWE3ZjFlMGE5NTBhMWZmZDp7IkxJU1RfUVVFUlkiOltbIm9wZXJhdGlvbiIsInVzZXJhc2siXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjYyNmU0NTEyNTc4ODI0MjJiNzk4YmJlOWIxOWYwN2NjMWNlNmM5ZDIiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-12-07 15:08:24');
INSERT INTO `django_session` VALUES ('unnffh5fbvjro4k643298nbprqlz4xij', 'Y2EzOGUxNjgyNDk4ZmFiYjRkOGViZjljYTUyZmIzYTlkYmM4NDY2OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmY2IyNDY3ZTUwOWFkYTUyNjY0ZjRlNGQ2MDk4NTVlZmJiZTBiNjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMifQ==', '2018-12-25 11:40:05');
INSERT INTO `django_session` VALUES ('vgwwh2brc3x7ywiv626jhwfe7ws8tbaf', 'MTZlYTQ3MTEyNTJiMTAwYTM1YjdmYzcxNTU4YWZkODEzYTIyZTQ4Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNjI2ZTQ1MTI1Nzg4MjQyMmI3OThiYmU5YjE5ZjA3Y2MxY2U2YzlkMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJ3aXphcmRfeGFkbWludXNlcndpZGdldF9hZG1pbl93aXphcmRfZm9ybV9wbHVnaW4iOnsic3RlcF9maWxlcyI6eyJXaWRnZXRcdTdjN2JcdTU3OGIiOnt9fSwic3RlcCI6IldpZGdldFx1N2M3Ylx1NTc4YiIsImV4dHJhX2RhdGEiOnt9LCJzdGVwX2RhdGEiOnsiV2lkZ2V0XHU3YzdiXHU1NzhiIjp7InN0ZXBfMC13aWRnZXRfdHlwZSI6WyJjaGFydCJdLCJfc2F2ZSI6WyIiXSwieGFkbWludXNlcndpZGdldF9hZG1pbl93aXphcmRfZm9ybV9wbHVnaW4tY3VycmVudF9zdGVwIjpbIldpZGdldFx1N2M3Ylx1NTc4YiJdLCJzdGVwXzAtcGFnZV9pZCI6WyJob21lIl0sInVzZXIiOlsyXSwiY3NyZm1pZGRsZXdhcmV0b2tlbiI6WyJJN2xMS1M0Q3hLdTllQXg3U3MzVG4zS0MzOFp2ZnZJa3FGYURYQ3gwMjRTMXJMMjNwTmJvRUt3Y2djazNnMUJNIiwiSTdsTEtTNEN4S3U5ZUF4N1NzM1RuM0tDMzhadmZ2SWtxRmFEWEN4MDI0UzFyTDIzcE5ib0VLd2NnY2szZzFCTSJdfX19fQ==', '2018-12-31 09:06:27');
INSERT INTO `django_session` VALUES ('vr346f8dn89qrfwb2fzni9li2jadzyfu', 'MzY4YmU5OGJjNDY1MGJmYTc0ZjRiOWZmMzIzMjM2YjhlZDYyZTRkNDp7IkxJU1RfUVVFUlkiOltbInVzZXJzIiwidXNlcnByb2ZpbGUiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjYyNmU0NTEyNTc4ODI0MjJiNzk4YmJlOWIxOWYwN2NjMWNlNmM5ZDIiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2019-01-02 20:26:05');
INSERT INTO `django_session` VALUES ('x4ykr4omgj7mnbqfy1jtu0xov0525hvv', 'NDkwM2UxMjY5YTVkNTA5MWI2ODViZGRiMzEwNmZmMmQ5YmM0MGFhNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyNzQ3MTg2NzAzNzNhMTM3ZDBlMzgxZTFhZTYyOGIxZDBiNDU5NzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-12-01 15:41:34');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (1, '哈哈哈', '2018-12-17 09:05:34', 8, 2);
INSERT INTO `operation_coursecomments` VALUES (2, 'yanshigou', '2018-12-21 23:16:26', 8, 4);
INSERT INTO `operation_coursecomments` VALUES (3, '鹿尾巴', '2019-01-02 16:16:59', 6, 2);

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
INSERT INTO `operation_userask` VALUES (1, 'qqqq', '13883562563', 'waa', '2018-11-17 15:42:37');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2018-12-17 09:05:19', 8, 2);
INSERT INTO `operation_usercourse` VALUES (2, '2018-12-17 09:06:45', 5, 2);
INSERT INTO `operation_usercourse` VALUES (3, '2018-12-19 09:15:57', 1, 2);
INSERT INTO `operation_usercourse` VALUES (4, '2018-12-19 20:26:38', 6, 2);
INSERT INTO `operation_usercourse` VALUES (5, '2018-12-21 23:16:15', 8, 4);
INSERT INTO `operation_usercourse` VALUES (6, '2019-01-03 15:19:26', 7, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (2, 2, 2, '2018-12-11 17:06:00', 2);
INSERT INTO `operation_userfavorite` VALUES (6, 8, 1, '2018-12-13 22:14:24', 2);
INSERT INTO `operation_userfavorite` VALUES (7, 3, 3, '2018-12-19 09:14:52', 2);
INSERT INTO `operation_userfavorite` VALUES (8, 3, 2, '2018-12-19 09:14:53', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (1, '重庆', '重庆市', '2018-11-01 15:24:00');
INSERT INTO `organization_citydict` VALUES (2, '北京市', '北京市', '2018-12-11 16:28:00');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courses_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_courseo_city_id_4a842f85_fk_organizat`(`city_id`) USING BTREE,
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, '长毛象', '长毛象科技公司', 2, 0, 'org/2018/11/aobama.png', '杨家坪', '2018-11-01 15:24:00', 1, 'pxjg', 1, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (2, 'PDD电竞', 'LOL分部', 1, 0, 'org/2018/11/u2979902520973921033fm26gp0.jpg', '杨家坪', '2018-11-01 15:41:00', 1, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (3, '厌世狗科技', 'https://www.dogebug.cn/', 202, 200, 'org/2018/12/u2979902520973921033fm26gp0.jpg', '北京市天安门2楼', '2018-12-11 17:26:00', 2, 'pxjg', 3, 89, '全国知名');

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
  `org_id` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teacher_org_id_cd000a1a_fk_organizat`(`org_id`) USING BTREE,
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, '厌世狗', 1, '长毛象', 'python', '飞龙骑脸怎么输', 0, 0, '2018-11-01 15:25:00', 1, 'teacher/2018/11/aobama.png', 20);
INSERT INTO `organization_teacher` VALUES (2, '厌世狗', 5, 'xxx', 'xxx', '666', 66, 99, '2018-12-10 19:55:00', 2, 'teacher/2018/12/default_middile_7.png', 20);
INSERT INTO `organization_teacher` VALUES (3, '狗哥', 2, '厌世狗科技', '大哥', '你可能血赚，但我永远不亏', 88, 33, '2018-12-11 17:34:00', 3, 'teacher/2018/12/u2979902520973921033fm26gp0.jpg', 20);

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
INSERT INTO `users_banner` VALUES (1, '1', 'banner/2019/01/57a801860001c34b12000460.jpg', 'https://www.dogebug.cn', 1, '2019-01-01 21:50:00');
INSERT INTO `users_banner` VALUES (2, '2', 'banner/2019/01/57aa86a0000145c512000460.jpg', 'https://www.dogebug.cn', 2, '2019-01-01 21:51:00');
INSERT INTO `users_banner` VALUES (3, '3', 'banner/2019/01/57a801860001c34b12000460_z4Vb8zl.jpg', 'https://www.dogebug.cn', 3, '2019-01-01 21:51:00');
INSERT INTO `users_banner` VALUES (4, '4', 'banner/2019/01/57aa86a0000145c512000460_GXIBATC.jpg', 'https://www.dogebug.cn', 4, '2019-01-01 21:51:00');
INSERT INTO `users_banner` VALUES (5, '5', 'banner/2019/01/57a801860001c34b12000460_z4Vb8zl_luymLPt.jpg', 'https://www.dogebug.cn', 5, '2019-01-01 21:51:00');

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
INSERT INTO `users_emailverifyrecord` VALUES (1, 'm5UYEPcUN75f5SGA', '2318423730@qq.com', 'register', '2018-11-17 15:39:10');
INSERT INTO `users_emailverifyrecord` VALUES (2, '3FxMPGKOGMWE8wIm', '791621554@qq.com', 'register', '2018-12-11 11:38:24');
INSERT INTO `users_emailverifyrecord` VALUES (3, 'gEtIQQm8uxFoHY9g', 'yanshigou@foxmail.com', 'register', '2018-12-21 23:15:40');

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
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$36000$AOo6Lh9yf7CM$B6Z+Ui24M8QMZwUxOjBwOxGHYG3JFUgydTQOxkvNNuk=', '2018-11-17 15:41:34', 0, '2318423730@qq.com', '', '', '2318423730@qq.com', 0, 1, '2018-11-17 15:39:10', '', NULL, 'male', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$36000$N7HN5pnmjPf8$j3paMKxBhMnrFGHs8z+D6edQg+c+/NOl3yfgNC6gFR8=', '2019-01-02 09:21:29', 1, 'dzt', '', '', '', 1, 1, '2018-11-23 15:07:00', '厌世狗', '2018-12-25', 'male', '重庆', NULL, 'image/2018/12/ysg.jpg');
INSERT INTO `users_userprofile` VALUES (3, 'pbkdf2_sha256$36000$gelOIShF6pBO$qDZXFIEvQwPbYVFmY8LTHIOBmjBiiFuo1PHL9Tv3Pc0=', '2018-12-11 11:40:05', 0, '791621554@qq.com', '', '', '791621554@qq.com', 0, 1, '2018-12-11 11:38:24', '', NULL, 'male', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (4, 'pbkdf2_sha256$36000$QCM6AaNS2vUP$9fj3mInCa3pPbW3i9/cj6E5IZHavQGdhpVj8kZSxXOQ=', '2018-12-21 23:16:07', 0, 'yanshigou@foxmail.com', '', '', 'yanshigou@foxmail.com', 0, 1, '2018-12-21 23:15:40', '', NULL, 'male', '', NULL, 'image/default.png');

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
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2018-11-01 15:24:50', '127.0.0.1', '1', '重庆', 'create', '已添加。', 13, 2);
INSERT INTO `xadmin_log` VALUES (2, '2018-11-01 15:25:21', '127.0.0.1', '1', '长毛象', 'create', '已添加。', 14, 2);
INSERT INTO `xadmin_log` VALUES (3, '2018-11-01 15:26:25', '127.0.0.1', '1', '厌世狗', 'create', '已添加。', 15, 2);
INSERT INTO `xadmin_log` VALUES (4, '2018-11-01 15:28:01', '127.0.0.1', '1', '拼音', 'create', '已添加。', 9, 2);
INSERT INTO `xadmin_log` VALUES (5, '2018-11-01 15:28:07', '127.0.0.1', '1', 'Lesson object', 'create', '已添加。', 11, 2);
INSERT INTO `xadmin_log` VALUES (6, '2018-11-01 15:29:13', '127.0.0.1', '1', '1', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (7, '2018-11-01 15:29:28', '127.0.0.1', '1', '1', 'create', '已添加。', 10, 2);
INSERT INTO `xadmin_log` VALUES (8, '2018-11-01 15:43:49', '127.0.0.1', '2', 'PDD电竞', 'create', '已添加。', 14, 2);
INSERT INTO `xadmin_log` VALUES (9, '2018-12-10 19:57:22', '119.86.46.77', '2', '厌世狗', 'create', '已添加。', 15, 2);
INSERT INTO `xadmin_log` VALUES (10, '2018-12-10 20:01:55', '119.86.46.77', '2', '青铜排位', 'create', '已添加。', 11, 2);
INSERT INTO `xadmin_log` VALUES (11, '2018-12-11 16:28:38', '125.86.82.192', '2', '北京市', 'create', '已添加。', 14, 2);
INSERT INTO `xadmin_log` VALUES (12, '2018-12-11 17:30:02', '125.86.82.192', '3', '厌世狗科技', 'create', '已添加。', 13, 2);
INSERT INTO `xadmin_log` VALUES (13, '2018-12-11 17:37:16', '125.86.82.192', '3', '狗哥', 'create', '已添加。', 15, 2);
INSERT INTO `xadmin_log` VALUES (14, '2018-12-11 21:43:08', '119.86.47.226', '3', '白银排位', 'create', '已添加。', 11, 2);
INSERT INTO `xadmin_log` VALUES (15, '2018-12-11 21:45:29', '119.86.47.226', '4', 'python入门', 'create', '已添加。', 11, 2);
INSERT INTO `xadmin_log` VALUES (16, '2018-12-11 21:45:54', '119.86.47.226', '5', 'python精通', 'create', '已添加。', 11, 2);
INSERT INTO `xadmin_log` VALUES (17, '2018-12-11 21:46:44', '119.86.47.226', '6', '黄金排位', 'create', '已添加。', 11, 2);
INSERT INTO `xadmin_log` VALUES (18, '2018-12-11 21:48:09', '119.86.47.226', '7', '白金排位', 'create', '已添加。', 11, 2);
INSERT INTO `xadmin_log` VALUES (19, '2018-12-11 21:49:00', '119.86.47.226', '8', '钻石排位', 'create', '已添加。', 11, 2);
INSERT INTO `xadmin_log` VALUES (20, '2018-12-14 10:34:48', '125.86.81.159', '2', '简灯笼绝招', 'create', '已添加。', 9, 2);
INSERT INTO `xadmin_log` VALUES (21, '2018-12-14 10:35:11', '125.86.81.159', '1', '1', 'change', '修改 url 和 learn_times', 12, 2);
INSERT INTO `xadmin_log` VALUES (22, '2018-12-14 10:42:59', '125.86.81.159', '2', '秒选亚缩', 'create', '已添加。', 10, 2);
INSERT INTO `xadmin_log` VALUES (23, '2018-12-14 10:43:16', '125.86.81.159', '3', '秒选劫', 'create', '已添加。', 10, 2);
INSERT INTO `xadmin_log` VALUES (24, '2018-12-14 10:43:28', '125.86.81.159', '4', '秒选瞎子', 'create', '已添加。', 10, 2);
INSERT INTO `xadmin_log` VALUES (25, '2018-12-14 10:43:46', '125.86.81.159', '5', '秒选剑圣', 'create', '已添加。', 10, 2);
INSERT INTO `xadmin_log` VALUES (26, '2018-12-14 10:43:56', '125.86.81.159', '6', '秒选盖伦', 'create', '已添加。', 10, 2);
INSERT INTO `xadmin_log` VALUES (27, '2018-12-14 10:44:59', '125.86.81.159', '2', '天下武功为快不破', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (28, '2018-12-14 10:45:13', '125.86.81.159', '3', '天下武功为快不破', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (29, '2018-12-14 10:45:22', '125.86.81.159', '4', '天下武功为快不破', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (30, '2018-12-14 10:45:34', '125.86.81.159', '5', '天下武功为快不破', 'create', '已添加。', 12, 2);
INSERT INTO `xadmin_log` VALUES (31, '2018-12-17 09:06:27', '125.86.81.128', '2', 'dzt', 'change', '修改 last_login，nick_name，address 和 image', 6, 2);
INSERT INTO `xadmin_log` VALUES (32, '2018-12-17 21:54:45', '119.86.47.119', '5', '天下武功为快不破', 'change', '修改 url', 12, 2);
INSERT INTO `xadmin_log` VALUES (33, '2018-12-17 21:54:50', '119.86.47.119', '4', '天下武功为快不破', 'change', '修改 url', 12, 2);
INSERT INTO `xadmin_log` VALUES (34, '2018-12-17 21:54:54', '119.86.47.119', '3', '天下武功为快不破', 'change', '修改 url', 12, 2);
INSERT INTO `xadmin_log` VALUES (35, '2018-12-17 21:55:04', '119.86.47.119', '2', '天下武功为快不破', 'change', '修改 url', 12, 2);
INSERT INTO `xadmin_log` VALUES (36, '2018-12-17 21:55:10', '119.86.47.119', '1', '1', 'change', '修改 url', 12, 2);
INSERT INTO `xadmin_log` VALUES (37, '2019-01-01 21:51:14', '119.86.42.72', '1', 'Banner object', 'create', '已添加。', 8, 2);
INSERT INTO `xadmin_log` VALUES (38, '2019-01-01 21:51:27', '119.86.42.72', '2', 'Banner object', 'create', '已添加。', 8, 2);
INSERT INTO `xadmin_log` VALUES (39, '2019-01-01 21:51:42', '119.86.42.72', '3', 'Banner object', 'create', '已添加。', 8, 2);
INSERT INTO `xadmin_log` VALUES (40, '2019-01-01 21:51:53', '119.86.42.72', '4', 'Banner object', 'create', '已添加。', 8, 2);
INSERT INTO `xadmin_log` VALUES (41, '2019-01-01 21:52:03', '119.86.42.72', '5', 'Banner object', 'create', '已添加。', 8, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 2);

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
