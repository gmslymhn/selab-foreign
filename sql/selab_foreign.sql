/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : selab_foreign

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 14/02/2024 19:35:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tyut_department
-- ----------------------------
DROP TABLE IF EXISTS `tyut_department`;
CREATE TABLE `tyut_department`  (
  `department_id` int NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `user_department` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户部门',
  `user_posts` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户职位',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_department
-- ----------------------------
INSERT INTO `tyut_department` VALUES (1, '软件开发', '软开负责人', NULL);
INSERT INTO `tyut_department` VALUES (2, '网络安全', '网安负责人', NULL);
INSERT INTO `tyut_department` VALUES (3, '虚拟现实', 'VR负责人', NULL);
INSERT INTO `tyut_department` VALUES (4, '人工智能', 'AI负责人', NULL);
INSERT INTO `tyut_department` VALUES (5, '创新实验室', '总负责人', NULL);
INSERT INTO `tyut_department` VALUES (6, '外部网站', '首页管理员', '管理首页信息');
INSERT INTO `tyut_department` VALUES (7, '外部网站', '超级管理员', '管理外部网站所有信息');
INSERT INTO `tyut_department` VALUES (8, '外部网站', '招新管理员', '在特定时间 等同超级管理员 其他时间负责招新事宜');
INSERT INTO `tyut_department` VALUES (9, '外部网站', '审核员', '审核信息 进行静态部署');
INSERT INTO `tyut_department` VALUES (10, '外部网站', '项目经理', '方向部门介绍 部门项目展示');

-- ----------------------------
-- Table structure for tyut_department_tag
-- ----------------------------
DROP TABLE IF EXISTS `tyut_department_tag`;
CREATE TABLE `tyut_department_tag`  (
  `user_id` bigint NOT NULL COMMENT '用户id',
  `department_id` int NOT NULL COMMENT '部门id',
  `create_user` bigint NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` bigint NULL DEFAULT NULL COMMENT '修改用户',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` bit(1) NULL DEFAULT NULL COMMENT '逻辑删除（1删除 0未删除）',
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_department_tag
-- ----------------------------

-- ----------------------------
-- Table structure for tyut_directory
-- ----------------------------
DROP TABLE IF EXISTS `tyut_directory`;
CREATE TABLE `tyut_directory`  (
  `directory_id` int NOT NULL AUTO_INCREMENT COMMENT '目录id',
  `directory_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目录名字',
  `directory_grade` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目录等级（1为一级 2为二级）',
  `directory_superior` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目录上级',
  `directory_permissions` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目录权限',
  `directory_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目录状态（0停用 1可用）',
  `create_user` bigint NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `del_flag` bit(1) NULL DEFAULT NULL COMMENT '逻辑删除（1删除 0未删除）',
  PRIMARY KEY (`directory_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3215 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_directory
-- ----------------------------
INSERT INTO `tyut_directory` VALUES (1, '创新实验室', '1', NULL, '', '1', NULL, '2024-02-13 17:52:13', b'0');
INSERT INTO `tyut_directory` VALUES (2, '首页', '2', '创新实验室', '', '1', NULL, '2024-02-13 17:52:37', b'0');
INSERT INTO `tyut_directory` VALUES (3, '组织介绍', '2', '创新实验室', '', '1', NULL, '2024-02-13 17:52:54', b'0');
INSERT INTO `tyut_directory` VALUES (4, '组织架构', '2', '创新实验室', '', '1', NULL, '2024-02-13 17:54:38', b'0');
INSERT INTO `tyut_directory` VALUES (5, '机构动态', '2', '创新实验室', '', '1', NULL, '2024-02-13 17:55:56', b'0');
INSERT INTO `tyut_directory` VALUES (6, '联系我们', '2', '创新实验室', 'contact', '1', NULL, '2024-02-13 17:57:24', b'0');
INSERT INTO `tyut_directory` VALUES (7, '建立初衷', '3', '组织介绍', NULL, '1', NULL, '2024-02-13 17:58:16', b'0');
INSERT INTO `tyut_directory` VALUES (8, '人员介绍', '3', '组织介绍', NULL, '1', NULL, '2024-02-13 17:58:39', b'0');
INSERT INTO `tyut_directory` VALUES (9, '历史时间轴', '3', '组织介绍', NULL, '1', NULL, '2024-02-13 17:59:08', b'0');
INSERT INTO `tyut_directory` VALUES (10, '软件开发', '3', '组织架构', NULL, '1', NULL, '2024-02-13 18:01:02', b'0');
INSERT INTO `tyut_directory` VALUES (11, '网络安全', '3', '组织架构', NULL, '1', NULL, '2024-02-13 18:01:31', b'0');
INSERT INTO `tyut_directory` VALUES (12, '人工智能', '3', '组织架构', NULL, '1', NULL, '2024-02-13 18:01:41', b'0');
INSERT INTO `tyut_directory` VALUES (13, '虚拟现实', '3', '组织架构', NULL, '1', NULL, '2024-02-13 18:01:58', b'0');
INSERT INTO `tyut_directory` VALUES (14, '日常活动', '3', '机构动态', NULL, '1', NULL, '2024-02-13 18:03:14', b'0');
INSERT INTO `tyut_directory` VALUES (15, '招新事宜', '3', '机构动态', NULL, '1', NULL, '2024-02-13 18:03:48', b'0');
INSERT INTO `tyut_directory` VALUES (100, '创新实验室后台', '1', NULL, 'selab', '1', NULL, '2024-02-13 18:05:05', b'0');
INSERT INTO `tyut_directory` VALUES (101, '首页管理', '2', '创新实验室后台', 'home', '1', NULL, '2024-02-13 18:05:43', b'0');
INSERT INTO `tyut_directory` VALUES (102, '系统管理', '2', '创新实验室后台', 'admin', '1', NULL, '2024-02-13 18:09:25', b'0');
INSERT INTO `tyut_directory` VALUES (103, '系统工具', '2', '创新实验室后台', NULL, '1', NULL, '2024-02-13 18:10:08', b'0');
INSERT INTO `tyut_directory` VALUES (104, '外部网站', '2', '创新实验室后台', 'foreign', '1', NULL, '2024-02-13 18:14:52', b'0');
INSERT INTO `tyut_directory` VALUES (105, '日志管理', '2', '创新实验室后台', 'log', '1', NULL, '2024-02-13 18:10:47', b'0');
INSERT INTO `tyut_directory` VALUES (106, '用户管理', '3', '系统管理', NULL, '1', NULL, '2024-02-13 18:15:18', b'0');
INSERT INTO `tyut_directory` VALUES (107, '角色管理', '3', '系统管理', NULL, '1', NULL, '2024-02-13 18:16:27', b'0');
INSERT INTO `tyut_directory` VALUES (108, '菜单管理', '3', '系统管理', NULL, '1', NULL, '2024-02-13 18:16:53', b'0');
INSERT INTO `tyut_directory` VALUES (109, '字典管理', '3', '系统管理', NULL, '1', NULL, '2024-02-13 18:18:13', b'0');
INSERT INTO `tyut_directory` VALUES (110, '参数设置', '3', '系统管理', NULL, '1', NULL, '2024-02-13 18:18:38', b'0');
INSERT INTO `tyut_directory` VALUES (111, '系统接口', '3', '系统工具', NULL, '1', NULL, '2024-02-13 18:19:37', b'0');
INSERT INTO `tyut_directory` VALUES (112, '静态资源管理', '3', '外部网站', 'static', '1', NULL, '2024-02-13 18:24:14', b'0');
INSERT INTO `tyut_directory` VALUES (113, '人员介绍管理', '3', '外部网站', 'introduce', '1', NULL, '2024-02-13 18:29:04', b'0');
INSERT INTO `tyut_directory` VALUES (114, '历史时间轴', '3', '外部网站', 'history', '1', NULL, '2024-02-13 18:29:30', b'0');
INSERT INTO `tyut_directory` VALUES (115, '组织架构管理', '3', '外部网站', 'architecture', '1', NULL, '2024-02-13 18:31:51', b'0');
INSERT INTO `tyut_directory` VALUES (116, '动态内容管理', '3', '外部网站', 'dynamic', '1', NULL, '2024-02-13 18:33:20', b'0');
INSERT INTO `tyut_directory` VALUES (117, '登陆日志', '3', '日志管理', 'login', '1', NULL, '2024-02-13 18:34:09', b'0');
INSERT INTO `tyut_directory` VALUES (3213, '321', '3', '321', NULL, NULL, NULL, '2024-02-13 18:23:49', NULL);

-- ----------------------------
-- Table structure for tyut_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tyut_login_log`;
CREATE TABLE `tyut_login_log`  (
  `login_log_id` int NOT NULL AUTO_INCREMENT COMMENT '登陆日志id',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `login_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登陆时间',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登陆ip',
  `login_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登陆是否成功（0失败 1成功）',
  `login_total` int NULL DEFAULT NULL COMMENT '登陆次数（登陆失败不会增加）',
  PRIMARY KEY (`login_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_login_log
-- ----------------------------
INSERT INTO `tyut_login_log` VALUES (1, 321, '2024-02-11 22:19:04', NULL, '1', 11);

-- ----------------------------
-- Table structure for tyut_personnel
-- ----------------------------
DROP TABLE IF EXISTS `tyut_personnel`;
CREATE TABLE `tyut_personnel`  (
  `personnel_id` int NOT NULL COMMENT '人员id',
  `personnel_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '人员姓名',
  `personnel_era` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任职年代',
  `personnel_department` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '人员部门',
  `personnel_posts` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '人员职位',
  `personnel_contribute` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '人员贡献',
  `create_user` bigint NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` bigint NULL DEFAULT NULL COMMENT '修改用户',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` bit(1) NULL DEFAULT NULL COMMENT '逻辑删除（1删除 0未删除）',
  PRIMARY KEY (`personnel_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_personnel
-- ----------------------------

-- ----------------------------
-- Table structure for tyut_resource
-- ----------------------------
DROP TABLE IF EXISTS `tyut_resource`;
CREATE TABLE `tyut_resource`  (
  `resource_id` bigint NOT NULL AUTO_INCREMENT COMMENT '静态资源id',
  `resource_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源名字',
  `resource_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源描述',
  `resource_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源路径',
  `resource_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源类型（0文本 1图片 2视频）',
  `resource_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源状态（1正常 0停用）',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` bigint NULL DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` bigint NULL DEFAULT NULL COMMENT '修改用户',
  `del_flag` bit(1) NULL DEFAULT NULL COMMENT '逻辑删除（1删除 0未删除）',
  PRIMARY KEY (`resource_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_resource
-- ----------------------------
INSERT INTO `tyut_resource` VALUES (1, 'logo', '实验室logo', NULL, NULL, '0', '2024-02-11 22:01:06', NULL, '2024-02-11 22:02:53', NULL, NULL);

-- ----------------------------
-- Table structure for tyut_role
-- ----------------------------
DROP TABLE IF EXISTS `tyut_role`;
CREATE TABLE `tyut_role`  (
  `role_id` bigint NOT NULL COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密钥',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色状态是否停用（1停用 0未停用）',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `menu_check_strictly` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '与菜单树选项关联显示（1关联 0不关联）',
  `create_user` bigint NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` bigint NULL DEFAULT NULL COMMENT '修改用户',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_role
-- ----------------------------

-- ----------------------------
-- Table structure for tyut_user
-- ----------------------------
DROP TABLE IF EXISTS `tyut_user`;
CREATE TABLE `tyut_user`  (
  `user_id` bigint NOT NULL COMMENT '用户id',
  `user_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `user_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户姓名',
  `user_avatar` int NULL DEFAULT NULL COMMENT '头像资源',
  `login_total` int NULL DEFAULT NULL COMMENT '登陆次数',
  `last_login_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后登陆ip',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `user_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户状态（0停用 1可用）',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_user
-- ----------------------------
INSERT INTO `tyut_user` VALUES (1, '1', '1', '1', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tyut_user_information
-- ----------------------------
DROP TABLE IF EXISTS `tyut_user_information`;
CREATE TABLE `tyut_user_information`  (
  `user_id` bigint NOT NULL COMMENT '用户id',
  `user_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户姓名',
  `user_sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户性别（0女 1男 2未知 ）',
  `user_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户电话',
  `user_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user` bigint NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` bigint NULL DEFAULT NULL COMMENT '修改用户',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` bit(1) NULL DEFAULT NULL COMMENT '逻辑删除（1删除 0未删除）',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_user_information
-- ----------------------------

-- ----------------------------
-- Table structure for tyut_user_salt
-- ----------------------------
DROP TABLE IF EXISTS `tyut_user_salt`;
CREATE TABLE `tyut_user_salt`  (
  `user_id` bigint NOT NULL COMMENT '用户id',
  `user_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `user_salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '盐',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色id（权限）',
  `login_total` int NULL DEFAULT NULL COMMENT '登陆次数',
  `ascription_id` bigint NULL DEFAULT NULL COMMENT '归属id',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tyut_user_salt
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
