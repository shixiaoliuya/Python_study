/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : django_test

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 03/08/2023 22:03:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app01_admin
-- ----------------------------
DROP TABLE IF EXISTS `app01_admin`;
CREATE TABLE `app01_admin`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_admin
-- ----------------------------
INSERT INTO `app01_admin` VALUES (1, 'admin', 'd17c9c9a79b44c84594a2a4afc29936d');
INSERT INTO `app01_admin` VALUES (3, 'test', 'd17c9c9a79b44c84594a2a4afc29936d');

-- ----------------------------
-- Table structure for app01_city
-- ----------------------------
DROP TABLE IF EXISTS `app01_city`;
CREATE TABLE `app01_city`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `count` int NOT NULL,
  `img` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_city
-- ----------------------------
INSERT INTO `app01_city` VALUES (1, '长沙', 23123, 'city/QQ图片20230202124928.jpg');

-- ----------------------------
-- Table structure for app01_department
-- ----------------------------
DROP TABLE IF EXISTS `app01_department`;
CREATE TABLE `app01_department`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_department
-- ----------------------------
INSERT INTO `app01_department` VALUES (1, 'IT运维部门');
INSERT INTO `app01_department` VALUES (2, '销售部');
INSERT INTO `app01_department` VALUES (3, '企划部');
INSERT INTO `app01_department` VALUES (4, '新媒体');
INSERT INTO `app01_department` VALUES (10, '新互动');
INSERT INTO `app01_department` VALUES (11, '技术部');
INSERT INTO `app01_department` VALUES (12, '推广部');
INSERT INTO `app01_department` VALUES (13, '品牌部');
INSERT INTO `app01_department` VALUES (14, '宣传部');
INSERT INTO `app01_department` VALUES (15, 'test部');
INSERT INTO `app01_department` VALUES (16, 'test2部');

-- ----------------------------
-- Table structure for app01_information
-- ----------------------------
DROP TABLE IF EXISTS `app01_information`;
CREATE TABLE `app01_information`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `age` int NOT NULL,
  `img` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_information
-- ----------------------------
INSERT INTO `app01_information` VALUES (1, 'admin', 23, 'static\\img\\ACM.jpg');
INSERT INTO `app01_information` VALUES (2, 'test', 43, 'D:\\py_works\\Django学习\\djangoProject1\\media\\u=1687753566,2291911024&fm=26&gp=0.jpg');

-- ----------------------------
-- Table structure for app01_order
-- ----------------------------
DROP TABLE IF EXISTS `app01_order`;
CREATE TABLE `app01_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `oid` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` int NOT NULL,
  `status` smallint NOT NULL,
  `admin_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `app01_order_admin_id_06590413_fk_app01_admin_id`(`admin_id`) USING BTREE,
  CONSTRAINT `app01_order_admin_id_06590413_fk_app01_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `app01_admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_order
-- ----------------------------
INSERT INTO `app01_order` VALUES (1, '202307291347256257', 'lianghao', 23, 2, 1);
INSERT INTO `app01_order` VALUES (2, '202307291734554430', 'test', 232, 2, 1);
INSERT INTO `app01_order` VALUES (3, '202307291740218486', '新的订单_test', 43, 2, 1);
INSERT INTO `app01_order` VALUES (6, '202307302152008816', 'test_dingdan', 32, 2, 1);
INSERT INTO `app01_order` VALUES (7, '202307302152569346', 'Test新订单', 98, 2, 1);

-- ----------------------------
-- Table structure for app01_prettnum
-- ----------------------------
DROP TABLE IF EXISTS `app01_prettnum`;
CREATE TABLE `app01_prettnum`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` int NOT NULL,
  `level` smallint NOT NULL,
  `status` smallint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7542 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_prettnum
-- ----------------------------
INSERT INTO `app01_prettnum` VALUES (1, '17758376654', 21, 1, 2);
INSERT INTO `app01_prettnum` VALUES (2, '18898764532', 56, 2, 1);
INSERT INTO `app01_prettnum` VALUES (4, '14345678911', 2, 1, 2);
INSERT INTO `app01_prettnum` VALUES (7, '14891134567', 23, 1, 1);
INSERT INTO `app01_prettnum` VALUES (9, '15678910456', 324, 3, 1);
INSERT INTO `app01_prettnum` VALUES (10, '15845678911', 8, 1, 1);
INSERT INTO `app01_prettnum` VALUES (11, '15973804548', 56, 2, 2);
INSERT INTO `app01_prettnum` VALUES (12, '15839747192', 25, 1, 2);
INSERT INTO `app01_prettnum` VALUES (13, '13973924718', 245, 3, 2);
INSERT INTO `app01_prettnum` VALUES (14, '18873964718', 88, 2, 1);
INSERT INTO `app01_prettnum` VALUES (15, '15945679247', 45, 1, 1);
INSERT INTO `app01_prettnum` VALUES (16, '15973464718', 34, 2, 1);
INSERT INTO `app01_prettnum` VALUES (17, '15246989739', 9, 1, 2);
INSERT INTO `app01_prettnum` VALUES (18, '16673945718', 25, 2, 1);
INSERT INTO `app01_prettnum` VALUES (19, '15941718924', 23, 2, 1);
INSERT INTO `app01_prettnum` VALUES (20, '15459743718', 34, 2, 2);
INSERT INTO `app01_prettnum` VALUES (21, '15489456710', 11, 1, 2);
INSERT INTO `app01_prettnum` VALUES (22, '15792439718', 45, 2, 1);
INSERT INTO `app01_prettnum` VALUES (25, '15392974718', 22, 1, 2);
INSERT INTO `app01_prettnum` VALUES (26, '15948567911', 22, 2, 2);
INSERT INTO `app01_prettnum` VALUES (27, '15135478231', 2, 1, 2);
INSERT INTO `app01_prettnum` VALUES (28, '15977183924', 77, 2, 2);
INSERT INTO `app01_prettnum` VALUES (29, '18158131407', 66, 2, 2);
INSERT INTO `app01_prettnum` VALUES (30, '18166159088', 88, 2, 1);
INSERT INTO `app01_prettnum` VALUES (31, '17766145042', 88, 2, 1);
INSERT INTO `app01_prettnum` VALUES (32, '15974818392', 2, 1, 1);
INSERT INTO `app01_prettnum` VALUES (33, '15974716392', 3, 1, 1);
INSERT INTO `app01_prettnum` VALUES (34, '15973924418', 6, 1, 2);
INSERT INTO `app01_prettnum` VALUES (35, '15343428910', 5, 2, 1);
INSERT INTO `app01_prettnum` VALUES (36, '16745678910', 8, 1, 2);
INSERT INTO `app01_prettnum` VALUES (37, '15973934718', 25, 2, 2);
INSERT INTO `app01_prettnum` VALUES (38, '15343978911', 2, 1, 2);
INSERT INTO `app01_prettnum` VALUES (39, '15914718392', 6, 1, 2);
INSERT INTO `app01_prettnum` VALUES (40, '15974524718', 2, 1, 2);
INSERT INTO `app01_prettnum` VALUES (42, '16345678911', 2, 1, 2);
INSERT INTO `app01_prettnum` VALUES (7243, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7244, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7245, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7246, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7247, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7248, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7249, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7250, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7251, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7252, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7253, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7254, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7255, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7256, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7257, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7258, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7259, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7260, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7261, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7262, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7263, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7264, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7265, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7266, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7267, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7268, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7269, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7270, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7271, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7272, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7273, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7274, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7275, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7276, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7277, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7278, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7279, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7280, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7281, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7282, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7284, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7285, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7286, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7287, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7288, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7289, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7290, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7291, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7292, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7293, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7294, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7295, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7296, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7297, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7298, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7299, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7300, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7301, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7302, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7303, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7304, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7305, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7306, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7307, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7308, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7309, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7310, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7311, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7312, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7313, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7314, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7315, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7316, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7317, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7318, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7319, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7320, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7321, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7322, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7323, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7324, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7325, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7326, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7327, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7328, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7329, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7330, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7331, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7332, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7333, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7334, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7335, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7336, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7337, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7338, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7339, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7340, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7341, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7342, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7343, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7344, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7345, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7346, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7347, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7348, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7349, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7350, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7351, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7352, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7353, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7354, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7355, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7356, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7357, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7358, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7359, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7360, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7361, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7362, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7363, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7364, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7365, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7366, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7367, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7368, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7369, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7370, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7371, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7372, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7373, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7374, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7375, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7376, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7377, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7378, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7379, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7380, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7381, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7382, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7383, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7384, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7385, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7386, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7387, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7388, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7389, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7390, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7391, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7392, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7393, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7394, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7395, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7396, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7397, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7398, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7399, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7400, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7401, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7402, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7403, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7404, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7405, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7406, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7407, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7408, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7409, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7410, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7411, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7412, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7413, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7414, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7415, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7416, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7417, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7418, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7419, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7420, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7421, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7422, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7423, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7424, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7425, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7426, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7427, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7428, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7429, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7430, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7431, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7432, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7433, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7434, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7435, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7436, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7437, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7438, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7439, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7440, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7441, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7442, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7443, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7444, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7445, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7446, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7447, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7448, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7449, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7450, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7451, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7452, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7453, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7454, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7455, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7456, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7457, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7458, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7459, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7460, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7461, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7462, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7463, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7464, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7465, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7466, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7467, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7468, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7469, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7470, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7471, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7472, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7473, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7474, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7475, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7476, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7477, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7478, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7479, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7480, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7481, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7482, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7483, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7484, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7485, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7486, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7487, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7488, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7489, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7490, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7491, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7492, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7493, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7494, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7495, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7496, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7497, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7498, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7499, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7500, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7501, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7502, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7503, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7504, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7505, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7506, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7507, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7508, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7509, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7510, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7511, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7512, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7513, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7514, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7515, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7516, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7517, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7518, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7519, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7520, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7521, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7522, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7523, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7524, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7525, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7526, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7527, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7528, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7529, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7530, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7531, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7532, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7533, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7534, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7535, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7536, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7537, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7538, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7539, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7540, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7541, '188888888', 1, 1, 1);
INSERT INTO `app01_prettnum` VALUES (7542, '188888888', 1, 1, 1);

-- ----------------------------
-- Table structure for app01_task
-- ----------------------------
DROP TABLE IF EXISTS `app01_task`;
CREATE TABLE `app01_task`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` smallint NOT NULL,
  `title` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `app01_task_user_id_93daa16a_fk_app01_admin_id`(`user_id`) USING BTREE,
  CONSTRAINT `app01_task_user_id_93daa16a_fk_app01_admin_id` FOREIGN KEY (`user_id`) REFERENCES `app01_admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_task
-- ----------------------------
INSERT INTO `app01_task` VALUES (1, 1, 'test', 'test', 1);

-- ----------------------------
-- Table structure for app01_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `app01_userinfo`;
CREATE TABLE `app01_userinfo`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `age` int NOT NULL,
  `account` decimal(10, 2) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `gender` smallint NOT NULL,
  `depart_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `app01_userinfo_depart_id_e22e0907_fk_app01_department_id`(`depart_id`) USING BTREE,
  CONSTRAINT `app01_userinfo_depart_id_e22e0907_fk_app01_department_id` FOREIGN KEY (`depart_id`) REFERENCES `app01_department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_userinfo
-- ----------------------------
INSERT INTO `app01_userinfo` VALUES (1, 'test', '123', 21, 3000.00, '2023-07-17 16:57:54.000000', 1, 1);
INSERT INTO `app01_userinfo` VALUES (2, 'wangwu', '2654321', 32, 32424.00, '2011-11-11 00:00:00.000000', 1, 2);
INSERT INTO `app01_userinfo` VALUES (3, 'zhangsan', '987654', 45, 32432.00, '2017-11-11 00:00:00.000000', 1, 3);
INSERT INTO `app01_userinfo` VALUES (4, 'lisi', '122344', 31, 6521.00, '2013-11-12 00:00:00.000000', 2, 4);
INSERT INTO `app01_userinfo` VALUES (6, 'xiaowang', '545547', 23, 2345.00, '2023-07-25 00:00:00.000000', 1, 2);
INSERT INTO `app01_userinfo` VALUES (7, 'xiaozhang', '1511002', 27, 32424.00, '2023-07-25 00:00:00.000000', 2, 3);
INSERT INTO `app01_userinfo` VALUES (8, 'xiaoli', '123456', 26, 3278.00, '2023-07-26 00:00:00.000000', 1, 2);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add user info', 7, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (26, 'Can change user info', 7, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (27, 'Can delete user info', 7, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (28, 'Can view user info', 7, 'view_userinfo');
INSERT INTO `auth_permission` VALUES (29, 'Can add user info', 8, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (30, 'Can change user info', 8, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (31, 'Can delete user info', 8, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (32, 'Can view user info', 8, 'view_userinfo');
INSERT INTO `auth_permission` VALUES (33, 'Can add department', 9, 'add_department');
INSERT INTO `auth_permission` VALUES (34, 'Can change department', 9, 'change_department');
INSERT INTO `auth_permission` VALUES (35, 'Can delete department', 9, 'delete_department');
INSERT INTO `auth_permission` VALUES (36, 'Can view department', 9, 'view_department');
INSERT INTO `auth_permission` VALUES (37, 'Can add prett num', 10, 'add_prettnum');
INSERT INTO `auth_permission` VALUES (38, 'Can change prett num', 10, 'change_prettnum');
INSERT INTO `auth_permission` VALUES (39, 'Can delete prett num', 10, 'delete_prettnum');
INSERT INTO `auth_permission` VALUES (40, 'Can view prett num', 10, 'view_prettnum');
INSERT INTO `auth_permission` VALUES (41, 'Can add admin', 11, 'add_admin');
INSERT INTO `auth_permission` VALUES (42, 'Can change admin', 11, 'change_admin');
INSERT INTO `auth_permission` VALUES (43, 'Can delete admin', 11, 'delete_admin');
INSERT INTO `auth_permission` VALUES (44, 'Can view admin', 11, 'view_admin');
INSERT INTO `auth_permission` VALUES (45, 'Can add task', 12, 'add_task');
INSERT INTO `auth_permission` VALUES (46, 'Can change task', 12, 'change_task');
INSERT INTO `auth_permission` VALUES (47, 'Can delete task', 12, 'delete_task');
INSERT INTO `auth_permission` VALUES (48, 'Can view task', 12, 'view_task');
INSERT INTO `auth_permission` VALUES (49, 'Can add order', 13, 'add_order');
INSERT INTO `auth_permission` VALUES (50, 'Can change order', 13, 'change_order');
INSERT INTO `auth_permission` VALUES (51, 'Can delete order', 13, 'delete_order');
INSERT INTO `auth_permission` VALUES (52, 'Can view order', 13, 'view_order');
INSERT INTO `auth_permission` VALUES (53, 'Can add information', 14, 'add_information');
INSERT INTO `auth_permission` VALUES (54, 'Can change information', 14, 'change_information');
INSERT INTO `auth_permission` VALUES (55, 'Can delete information', 14, 'delete_information');
INSERT INTO `auth_permission` VALUES (56, 'Can view information', 14, 'view_information');
INSERT INTO `auth_permission` VALUES (57, 'Can add city', 15, 'add_city');
INSERT INTO `auth_permission` VALUES (58, 'Can change city', 15, 'change_city');
INSERT INTO `auth_permission` VALUES (59, 'Can delete city', 15, 'delete_city');
INSERT INTO `auth_permission` VALUES (60, 'Can view city', 15, 'view_city');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (11, 'app01', 'admin');
INSERT INTO `django_content_type` VALUES (15, 'app01', 'city');
INSERT INTO `django_content_type` VALUES (9, 'app01', 'department');
INSERT INTO `django_content_type` VALUES (14, 'app01', 'information');
INSERT INTO `django_content_type` VALUES (13, 'app01', 'order');
INSERT INTO `django_content_type` VALUES (10, 'app01', 'prettnum');
INSERT INTO `django_content_type` VALUES (12, 'app01', 'task');
INSERT INTO `django_content_type` VALUES (8, 'app01', 'userinfo');
INSERT INTO `django_content_type` VALUES (7, 'app_test', 'userinfo');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-07-04 14:25:34.945972');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-07-04 14:25:35.208562');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-07-04 14:25:35.275660');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-07-04 14:25:35.282675');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-04 14:25:35.291618');
INSERT INTO `django_migrations` VALUES (6, 'app_test', '0001_initial', '2023-07-04 14:25:35.303585');
INSERT INTO `django_migrations` VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2023-07-04 14:25:35.350723');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2023-07-04 14:25:35.380319');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0003_alter_user_email_max_length', '2023-07-04 14:25:35.415206');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0004_alter_user_username_opts', '2023-07-04 14:25:35.423181');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0005_alter_user_last_login_null', '2023-07-04 14:25:35.488049');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0006_require_contenttypes_0002', '2023-07-04 14:25:35.490043');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2023-07-04 14:25:35.498056');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0008_alter_user_username_max_length', '2023-07-04 14:25:35.528963');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2023-07-04 14:25:35.559965');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0010_alter_group_name_max_length', '2023-07-04 14:25:35.588863');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0011_update_proxy_permissions', '2023-07-04 14:25:35.595844');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2023-07-04 14:25:35.628765');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2023-07-04 14:25:35.647765');
INSERT INTO `django_migrations` VALUES (20, 'app01', '0001_initial', '2023-07-11 13:45:22.924487');
INSERT INTO `django_migrations` VALUES (21, 'app01', '0002_prettnum_alter_userinfo_depart_alter_userinfo_gender', '2023-07-19 07:54:48.372197');
INSERT INTO `django_migrations` VALUES (22, 'app01', '0003_admin_alter_userinfo_gender', '2023-07-23 07:28:21.817464');
INSERT INTO `django_migrations` VALUES (23, 'app01', '0004_alter_userinfo_gender_task', '2023-07-26 08:30:16.896266');
INSERT INTO `django_migrations` VALUES (24, 'app01', '0005_order', '2023-07-26 12:24:15.957923');
INSERT INTO `django_migrations` VALUES (25, 'app01', '0006_information_alter_userinfo_gender', '2023-08-02 05:54:25.810606');
INSERT INTO `django_migrations` VALUES (26, 'app01', '0007_city', '2023-08-02 06:35:52.366517');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('45gwu0ns6a7ayestvn6z2vh8vnxmgxcp', 'eyJpbWFnZV9jb2RlIjoiT2hIRyIsIl9zZXNzaW9uX2V4cGlyeSI6ODY0MDAsImluZm8iOnsiaWQiOjEsIm5hbWUiOiJhZG1pbiJ9fQ:1qPcDl:6ZnjemXC_gw9UWIV8Ik62qLyFjFw9gG1Ep8g53v0OHE', '2023-07-30 05:10:29.802519');
INSERT INTO `django_session` VALUES ('fagl8mhg94t8ooi54cbkovi937z60ya2', 'eyJpbWFnZV9jb2RlIjoiUkVMUCIsIl9zZXNzaW9uX2V4cGlyeSI6NjB9:1qOItR:1KdpOFrU_NY5b4T7HMtrA7Ckx8CWrjACz9DSIKOYyFk', '2023-07-25 14:21:05.354760');
INSERT INTO `django_session` VALUES ('g55ggj47echmd20isxmx2hu6qp4e83jv', 'eyJpbWFnZV9jb2RlIjoiaWxvSSIsIl9zZXNzaW9uX2V4cGlyeSI6ODY0MDAsImluZm8iOnsiaWQiOjEsIm5hbWUiOiJhZG1pbiJ9fQ:1qOa39:qys6yqhi88VsW930RcVjPVVLYM5_lVsx2FTydTStLZI', '2023-07-27 08:39:15.317409');
INSERT INTO `django_session` VALUES ('i51emv3ab3snv6dydzh9alwvmbxcp7pi', 'eyJpbWFnZV9jb2RlIjoid0dmZyIsIl9zZXNzaW9uX2V4cGlyeSI6ODY0MDAsImluZm8iOnsiaWQiOjEsIm5hbWUiOiJhZG1pbiJ9fQ:1qR2QQ:ldK5NfdBoFXjwX9eo9ZwpcPO8RTuV5dWAnQGovsZtk8', '2023-08-03 03:21:26.429362');
INSERT INTO `django_session` VALUES ('l9brun6ts0glxwxx705dm3rk3nieoa5x', 'eyJpbmZvIjp7ImlkIjoxLCJuYW1lIjoiYWRtaW4ifX0:1qNqhu:uo2Zcc-u9epTU5zZ2ntoYcBiKuoQnG8vTJvuRv0l7Lk', '2023-08-07 08:14:18.155615');
INSERT INTO `django_session` VALUES ('llw8gctvz01wtssbi1mu3zchamzf5bny', 'eyJpbWFnZV9jb2RlIjoibEN6dSIsIl9zZXNzaW9uX2V4cGlyeSI6ODY0MDAsImluZm8iOnsiaWQiOjEsIm5hbWUiOiJhZG1pbiJ9fQ:1qQSz3:iwDGL-XI9sD7ALoTBwQNiZlJrmW5WJIiLhGEA8KlKGk', '2023-08-01 13:30:49.400832');
INSERT INTO `django_session` VALUES ('t9rj8cbisiholkcy361pd085aku7lhwm', 'eyJpbWFnZV9jb2RlIjoiVUxKbSIsIl9zZXNzaW9uX2V4cGlyeSI6NjB9:1qOJ2e:w_dAWzGTy7FhXmY7gnSQ6FN3y81wQ5sqSui6HXyu-iM', '2023-07-25 14:30:36.183100');
INSERT INTO `django_session` VALUES ('w07j1q05xe54ze2fu7ric7kinri1pq1r', 'eyJpbWFnZV9jb2RlIjoieFhIaiIsIl9zZXNzaW9uX2V4cGlyeSI6ODY0MDAsImluZm8iOnsiaWQiOjEsIm5hbWUiOiJhZG1pbiJ9fQ:1qQ6Ax:1JfOuIa1xtvLbwmBdE3qE_wmOn2ctDrOXdnCSXyCaG4', '2023-07-31 13:09:35.429479');

SET FOREIGN_KEY_CHECKS = 1;
