/*
 Navicat Premium Data Transfer

 Source Server         : university
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : divar

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 29/05/2023 19:26:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for advertisements
-- ----------------------------
DROP TABLE IF EXISTS `advertisements`;
CREATE TABLE `advertisements`  (
  `ads_id` int NOT NULL AUTO_INCREMENT,
  `ads_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `ads_price` int NOT NULL DEFAULT 0,
  `ads_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NULL,
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `ads_category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL DEFAULT 'متفرقه',
  `ads_creation_date` timestamp NOT NULL DEFAULT current_timestamp,
  `ads_status` enum('Accepted','Pending','Rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL DEFAULT 'Pending',
  `ads_province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `ads_city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `ads_expire_date` datetime NOT NULL,
  PRIMARY KEY (`ads_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `advertisements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advertisements
-- ----------------------------
INSERT INTO `advertisements` VALUES (1, 'خرید خانه', 10000000, 'خانه 300 متری', 'user1', 'املاک', '2020-11-02 14:39:12', 'Rejected', 'خراسان جنوبی', 'بیرجند', '2023-01-28 18:09:12');
INSERT INTO `advertisements` VALUES (2, 'فروش آپارتمان', 5000000, 'آپارتمان 80 متری', 'user1', 'املاک', '2020-01-30 19:02:17', 'Accepted', 'تهران', 'تهران', '2023-01-06 22:32:17');
INSERT INTO `advertisements` VALUES (3, 'گوشی سامسونگ', 3000000, 'گوشی سامسونگ S21', 'user1', 'لوازم الکترونیکی', '2020-09-10 23:36:38', 'Pending', 'خراسان جنوبی', 'بیرجند', '2023-03-11 03:06:38');
INSERT INTO `advertisements` VALUES (4, 'تبلت ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user1', 'لوازم الکترونیکی', '2019-06-06 19:33:40', 'Accepted', 'اصفهان', 'اصفهان', '2023-01-29 23:03:40');
INSERT INTO `advertisements` VALUES (5, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user2', 'وسایل نقلیه', '2022-11-09 05:20:39', 'Pending', 'خراسان جنوبی', 'بیرحند', '2023-03-04 08:50:39');
INSERT INTO `advertisements` VALUES (6, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user2', 'لوازم الکترونیکی', '2022-08-08 07:38:39', 'Accepted', 'تهران', 'تهران', '2023-03-06 11:08:39');
INSERT INTO `advertisements` VALUES (7, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user3', 'لوازم الکترونیکی', '2021-06-19 17:28:29', 'Accepted', 'تهران', 'تهران', '2023-04-27 20:58:29');
INSERT INTO `advertisements` VALUES (8, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user3', 'مبلمان', '2021-04-09 16:24:04', 'Accepted', 'تهران', 'تهران', '2023-02-22 19:54:04');
INSERT INTO `advertisements` VALUES (9, 'یک باب منزل', 5000000, 'زیر بنا 100متر می باشد', 'user3', 'املاک', '2022-11-28 07:02:49', 'Accepted', 'تهران', 'تهران', '2023-04-28 10:32:49');
INSERT INTO `advertisements` VALUES (10, 'سامسونگ A21', 2900000, 'گوشی سامسونگ A21', 'user3', 'لوازم الکترونیکی', '2019-06-11 19:58:51', 'Accepted', 'خراسان رضوی', 'مشهد', '2023-02-05 23:28:51');
INSERT INTO `advertisements` VALUES (11, 'IPAD', 5800000, 'تبلت 2020', 'user3', 'لوازم الکترونیکی', '2022-04-21 01:10:30', 'Accepted', 'فارس', 'شیراز', '2023-02-06 04:40:30');
INSERT INTO `advertisements` VALUES (12, 'خودرو پژو 206', 450000000, 'خودرو پژو 206 مدل 1400', 'user3', 'وسایل نقلیه', '2019-02-03 11:02:26', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-05-17 14:32:26');
INSERT INTO `advertisements` VALUES (13, 'آیفون X', 14000000, 'گوشی آیفون x باتری صد در صد', 'user3', 'لوازم الکترونیکی', '2021-06-06 08:29:40', 'Rejected', 'فارس', 'شیراز', '2023-03-15 11:59:40');
INSERT INTO `advertisements` VALUES (14, 'لپ تاپ hp', 18000000, 'لپ تاپ اچ پی', 'user3', 'لوازم الکترونیکی', '2022-07-07 15:43:41', 'Accepted', 'تهران', 'تهران', '2023-04-10 19:13:41');
INSERT INTO `advertisements` VALUES (15, 'مبل چوبی', 5000000, 'مبل راحتی نو', 'user3', 'مبلمان', '2022-02-07 02:15:23', 'Accepted', 'تهران', 'تهران', '2023-03-06 05:45:23');
INSERT INTO `advertisements` VALUES (16, 'فروش زمین', 25000000, 'زمین 90 متری', 'user4', 'املاک', '2020-04-12 03:20:01', 'Accepted', 'تهران', 'تهران', '2023-04-16 06:50:01');
INSERT INTO `advertisements` VALUES (17, 'شیائومی نوت8', 3000000, 'گوشی شیائومی سالم', 'user4', 'لوازم الکترونیکی', '2022-05-12 11:29:32', 'Accepted', 'خراسان جنوبی', 'قاین', '2023-04-28 14:59:32');
INSERT INTO `advertisements` VALUES (18, 'ایرپاد', 6000000, 'ایرپاد اپل اصل', 'user4', 'لوازم الکترونیکی', '2022-05-06 05:15:34', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-05-24 08:45:34');
INSERT INTO `advertisements` VALUES (19, 'پارس  tu5', 15000000, 'خودرو پارس تی یو فایو  مدل 1395', 'user4', 'وسایل نقلیه', '2020-07-05 04:55:44', 'Pending', 'خراسان جنوبی', 'بیرحند', '2023-03-22 08:25:44');
INSERT INTO `advertisements` VALUES (20, 'آیفون 13', 4000000, 'آیفون 13 پرومکس تمیز و سالم', 'user4', 'لوازم الکترونیکی', '2019-05-23 06:55:04', 'Rejected', 'تهران', 'تهران', '2023-03-22 10:25:04');
INSERT INTO `advertisements` VALUES (21, 'لپ تاپ استوک dell', 8000000, 'لپ تاپ اروپایی با cpu قوی', 'user4', 'لوازم الکترونیکی', '2022-09-15 04:06:43', 'Accepted', 'تهران', 'تهران', '2023-01-17 07:36:43');
INSERT INTO `advertisements` VALUES (22, 'میز غذا خوری', 5000000, 'میز کاملا سالم و نو هستش', 'user4', 'مبلمان', '2020-09-04 02:15:17', 'Accepted', 'تهران', 'تهران', '2023-01-26 05:45:17');
INSERT INTO `advertisements` VALUES (23, 'یک واحد آپارتمان', 5000000, 'یک باب آپارتمان 120 متری به فروش می رسد', 'user4', 'املاک', '2019-02-18 07:26:49', 'Accepted', 'تهران', 'تهران', '2023-02-25 10:56:49');
INSERT INTO `advertisements` VALUES (24, 'samsung j7', 3000000, 'گوشی سامسونک جی سون سالم و تمیز یه فروش می رسد', 'user4', 'لوازم الکترونیکی', '2021-03-21 20:27:01', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-02-10 23:57:01');
INSERT INTO `advertisements` VALUES (25, 'تبلت لنوو', 6000000, 'فروش تبلت لنوو کمی خط و خش دارد زیر قیمت', 'user4', 'لوازم الکترونیکی', '2019-09-03 04:18:25', 'Rejected', 'اصفهان', 'اصفهان', '2023-05-20 07:48:25');
INSERT INTO `advertisements` VALUES (26, 'پراید صبا 96', 15000000, 'پراید صبا مدل 96 یک در رنگ لاستیک سالم', 'user5', 'وسایل نقلیه', '2019-02-25 23:48:04', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-04-14 03:18:04');
INSERT INTO `advertisements` VALUES (27, 'هندزفری گردنی لنووو', 4000000, 'کیفیت عالی بیس معمولی', 'user5', 'لوازم الکترونیکی', '2021-01-31 10:10:07', 'Accepted', 'تهران', 'تهران', '2023-05-23 13:40:07');
INSERT INTO `advertisements` VALUES (28, 'شارژر اپل ', 8000000, 'شارژر اصل اپل مناسب برای آیفون 13', 'user5', 'لوازم الکترونیکی', '2022-12-09 14:28:42', 'Accepted', 'تهران', 'تهران', '2023-01-15 17:58:42');
INSERT INTO `advertisements` VALUES (29, 'میز و صندلی آشپزخانه', 5000000, 'تمام اجناس زیر قیمت به فروش میرسد!', 'user5', 'مبلمان', '2019-10-14 14:01:33', 'Accepted', 'تهران', 'تهران', '2023-05-09 17:31:33');
INSERT INTO `advertisements` VALUES (30, 'زمین 120 متری', 5000000, 'یک قطعه زمین 120 متری در منطقه ونک به فروش می رسد', 'user5', 'املاک', '2020-08-30 10:02:31', 'Accepted', 'تهران', 'تهران', '2023-02-20 13:32:31');
INSERT INTO `advertisements` VALUES (31, 'lg g5', 3000000, 'گوشی ال جی \"جی پنج\" با باتری عالی بدون خط و خش', 'user5', 'لوازم الکترونیکی', '2021-07-07 06:25:11', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-03-19 09:55:11');
INSERT INTO `advertisements` VALUES (32, 'ماوس لاجیتک', 6000000, 'ماوس بی سیم لاجیتک', 'user5', 'لوازم الکترونیکی', '2022-03-21 20:50:52', 'Accepted', 'اصفهان', 'اصفهان', '2023-01-25 00:20:52');
INSERT INTO `advertisements` VALUES (33, 'فراری', 15000000, 'فراری تولید داخل با بدنه پی کی', 'user5', 'وسایل نقلیه', '2020-03-27 13:46:43', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-02-09 17:16:43');
INSERT INTO `advertisements` VALUES (34, 'آیفون طرح اصل', 1000000, 'گوشی آیفون 11 طرح اصل به فروش می رسد با قیمت عالی', 'user5', 'لوازم الکترونیکی', '2022-09-27 22:16:35', 'Accepted', 'تهران', 'تهران', '2023-01-03 01:46:35');
INSERT INTO `advertisements` VALUES (35, 'مک بوک پرو', 69500000, 'مک بوک جدید رنگ نقره ای', 'user5', 'لوازم الکترونیکی', '2019-10-12 05:57:41', 'Accepted', 'تهران', 'تهران', '2023-01-13 09:27:41');
INSERT INTO `advertisements` VALUES (36, 'میز غذاخوری', 2400000, 'میز غذا خوری 6 نفره تمیز', 'user5', 'مبلمان', '2022-01-13 03:24:40', 'Accepted', 'تهران', 'تهران', '2023-05-01 06:54:40');
INSERT INTO `advertisements` VALUES (37, 'آپارتمان', 5000000, 'آپارتمان 80 متری', 'user5', 'املاک', '2021-12-15 19:13:50', 'Accepted', 'تهران', 'تهران', '2023-04-27 22:43:50');
INSERT INTO `advertisements` VALUES (38, 'گوشی موبایل', 3000000, 'گوشی سامسونگ S21', 'user5', 'لوازم الکترونیکی', '2021-01-21 07:14:05', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-04-10 10:44:05');
INSERT INTO `advertisements` VALUES (39, 'ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user5', 'لوازم الکترونیکی', '2021-03-29 04:35:32', 'Accepted', 'اصفهان', 'اصفهان', '2023-05-16 08:05:32');
INSERT INTO `advertisements` VALUES (40, 'سمند سورن', 15000000, 'خودرو سمند سورن قرمز مدل 1396', 'user5', 'وسایل نقلیه', '2019-04-04 08:23:11', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-04-23 11:53:11');
INSERT INTO `advertisements` VALUES (41, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user5', 'لوازم الکترونیکی', '2021-01-01 19:36:47', 'Rejected', 'تهران', 'تهران', '2023-03-13 23:06:47');
INSERT INTO `advertisements` VALUES (42, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user5', 'لوازم الکترونیکی', '2020-04-18 19:46:35', 'Accepted', 'تهران', 'تهران', '2023-03-07 23:16:35');
INSERT INTO `advertisements` VALUES (43, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user5', 'مبلمان', '2020-05-02 15:41:53', 'Accepted', 'تهران', 'تهران', '2023-04-05 19:11:53');
INSERT INTO `advertisements` VALUES (44, 'فروش آپارتمان', 5000000, 'آپارتمان 80 متری', 'user5', 'املاک', '2020-07-28 20:14:45', 'Accepted', 'تهران', 'تهران', '2023-03-19 23:44:45');
INSERT INTO `advertisements` VALUES (45, 'گوشی سامسونگ', 3000000, 'گوشی سامسونگ S21', 'user5', 'لوازم الکترونیکی', '2022-11-15 21:00:11', 'Rejected', 'خراسان جنوبی', 'بیرجند', '2023-02-27 00:30:11');
INSERT INTO `advertisements` VALUES (46, 'تبلت ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user6', 'لوازم الکترونیکی', '2022-09-18 18:19:39', 'Accepted', 'اصفهان', 'اصفهان', '2023-03-24 21:49:39');
INSERT INTO `advertisements` VALUES (47, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user6', 'وسایل نقلیه', '2019-07-29 23:00:44', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-04-08 02:30:44');
INSERT INTO `advertisements` VALUES (48, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user7', 'لوازم الکترونیکی', '2021-05-27 20:38:36', 'Pending', 'تهران', 'تهران', '2023-03-22 00:08:36');
INSERT INTO `advertisements` VALUES (49, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user7', 'لوازم الکترونیکی', '2022-12-04 14:58:41', 'Accepted', 'تهران', 'تهران', '2023-04-13 18:28:41');
INSERT INTO `advertisements` VALUES (50, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user9', 'مبلمان', '2019-02-01 16:29:05', 'Accepted', 'تهران', 'تهران', '2023-02-07 19:59:05');
INSERT INTO `advertisements` VALUES (51, 'فروش آپارتمان', 5000000, 'آپارتمان 80 متری', 'user9', 'املاک', '2020-04-11 11:44:59', 'Accepted', 'تهران', 'تهران', '2023-01-05 15:14:59');
INSERT INTO `advertisements` VALUES (52, 'گوشی سامسونگ', 3000000, 'گوشی سامسونگ S21', 'user9', 'لوازم الکترونیکی', '2021-11-07 09:27:04', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-04-09 12:57:04');
INSERT INTO `advertisements` VALUES (53, 'تبلت ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user9', 'لوازم الکترونیکی', '2019-09-16 12:10:52', 'Accepted', 'اصفهان', 'اصفهان', '2023-05-11 15:40:52');
INSERT INTO `advertisements` VALUES (54, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user9', 'وسایل نقلیه', '2021-10-24 05:22:17', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-01-28 08:52:17');
INSERT INTO `advertisements` VALUES (55, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user9', 'لوازم الکترونیکی', '2020-02-17 20:51:34', 'Accepted', 'تهران', 'تهران', '2023-02-19 00:21:34');
INSERT INTO `advertisements` VALUES (56, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user9', 'لوازم الکترونیکی', '2022-01-14 02:01:19', 'Accepted', 'تهران', 'تهران', '2023-03-03 05:31:19');
INSERT INTO `advertisements` VALUES (57, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user9', 'مبلمان', '2020-08-17 13:13:11', 'Accepted', 'تهران', 'تهران', '2023-04-05 16:43:11');
INSERT INTO `advertisements` VALUES (58, 'فروش آپارتمان', 5000000, 'آپارتمان 80 متری', 'user9', 'املاک', '2020-02-05 06:40:43', 'Accepted', 'تهران', 'تهران', '2023-02-08 10:10:43');
INSERT INTO `advertisements` VALUES (59, 'گوشی سامسونگ', 3000000, 'گوشی سامسونگ S21', 'user9', 'لوازم الکترونیکی', '2022-03-12 11:53:40', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-03-23 15:23:40');
INSERT INTO `advertisements` VALUES (60, 'تبلت ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user10', 'لوازم الکترونیکی', '2021-06-03 12:36:33', 'Accepted', 'اصفهان', 'اصفهان', '2023-01-14 16:06:33');
INSERT INTO `advertisements` VALUES (61, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user10', 'وسایل نقلیه', '2019-07-23 04:37:58', 'Pending', 'خراسان جنوبی', 'بیرحند', '2023-02-22 08:07:58');
INSERT INTO `advertisements` VALUES (62, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user11', 'لوازم الکترونیکی', '2020-09-16 07:05:29', 'Accepted', 'تهران', 'تهران', '2023-02-15 10:35:29');
INSERT INTO `advertisements` VALUES (63, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user12', 'لوازم الکترونیکی', '2022-02-28 09:17:20', 'Accepted', 'تهران', 'تهران', '2023-01-05 12:47:20');
INSERT INTO `advertisements` VALUES (64, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user13', 'مبلمان', '2021-07-27 09:42:44', 'Pending', 'تهران', 'تهران', '2023-01-17 13:12:44');
INSERT INTO `advertisements` VALUES (65, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user13', 'وسایل نقلیه', '2022-07-06 04:21:13', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-03-06 07:51:13');
INSERT INTO `advertisements` VALUES (66, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user13', 'لوازم الکترونیکی', '2022-04-18 20:45:47', 'Accepted', 'تهران', 'تهران', '2023-04-30 00:15:47');
INSERT INTO `advertisements` VALUES (67, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user14', 'لوازم الکترونیکی', '2022-04-23 07:49:30', 'Accepted', 'تهران', 'تهران', '2023-05-13 11:19:30');
INSERT INTO `advertisements` VALUES (68, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user15', 'مبلمان', '2019-08-21 01:20:29', 'Accepted', 'تهران', 'تهران', '2023-04-19 04:50:29');
INSERT INTO `advertisements` VALUES (69, 'فروش آپارتمان', 5000000, 'آپارتمان 80 متری', 'user15', 'املاک', '2021-06-27 11:56:18', 'Accepted', 'تهران', 'تهران', '2023-02-02 15:26:18');
INSERT INTO `advertisements` VALUES (70, 'گوشی سامسونگ', 3000000, 'گوشی سامسونگ S21', 'user15', 'لوازم الکترونیکی', '2022-01-20 18:26:30', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-01-22 21:56:30');
INSERT INTO `advertisements` VALUES (71, 'تبلت ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user16', 'لوازم الکترونیکی', '2021-09-21 16:53:16', 'Pending', 'اصفهان', 'اصفهان', '2023-05-03 20:23:16');
INSERT INTO `advertisements` VALUES (72, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user16', 'وسایل نقلیه', '2020-02-20 02:15:25', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-02-01 05:45:25');
INSERT INTO `advertisements` VALUES (73, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user16', 'لوازم الکترونیکی', '2019-12-24 10:48:25', 'Accepted', 'تهران', 'تهران', '2023-05-04 14:18:25');
INSERT INTO `advertisements` VALUES (74, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user16', 'لوازم الکترونیکی', '2020-01-15 12:57:06', 'Accepted', 'تهران', 'تهران', '2023-05-16 16:27:06');
INSERT INTO `advertisements` VALUES (75, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user17', 'مبلمان', '2020-07-12 13:58:43', 'Accepted', 'تهران', 'تهران', '2023-03-08 17:28:43');
INSERT INTO `advertisements` VALUES (76, 'فروش آپارتمان', 5000000, 'آپارتمان 80 متری', 'user18', 'املاک', '2022-02-12 17:11:11', 'Accepted', 'تهران', 'تهران', '2023-05-18 20:41:11');
INSERT INTO `advertisements` VALUES (77, 'گوشی سامسونگ', 3000000, 'گوشی سامسونگ S21', 'user19', 'لوازم الکترونیکی', '2020-04-03 23:16:13', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-02-06 02:46:13');
INSERT INTO `advertisements` VALUES (78, 'تبلت ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user20', 'لوازم الکترونیکی', '2021-10-02 13:52:31', 'Accepted', 'اصفهان', 'اصفهان', '2023-02-12 17:22:31');
INSERT INTO `advertisements` VALUES (79, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user21', 'وسایل نقلیه', '2019-02-15 19:14:46', 'Rejected', 'خراسان جنوبی', 'بیرحند', '2023-01-16 22:44:46');
INSERT INTO `advertisements` VALUES (80, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user22', 'لوازم الکترونیکی', '2022-12-19 17:19:37', 'Accepted', 'تهران', 'تهران', '2023-03-08 20:49:37');
INSERT INTO `advertisements` VALUES (81, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user23', 'لوازم الکترونیکی', '2020-02-13 18:50:13', 'Pending', 'تهران', 'تهران', '2023-01-28 22:20:13');
INSERT INTO `advertisements` VALUES (82, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user23', 'مبلمان', '2022-01-22 18:49:24', 'Accepted', 'تهران', 'تهران', '2023-01-30 22:19:24');
INSERT INTO `advertisements` VALUES (83, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user24', 'وسایل نقلیه', '2020-10-18 21:06:22', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-03-24 00:36:22');
INSERT INTO `advertisements` VALUES (84, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user24', 'لوازم الکترونیکی', '2022-11-03 11:09:09', 'Accepted', 'تهران', 'تهران', '2023-03-23 14:39:09');
INSERT INTO `advertisements` VALUES (85, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user25', 'لوازم الکترونیکی', '2020-06-05 08:11:50', 'Accepted', 'تهران', 'تهران', '2023-05-02 11:41:50');
INSERT INTO `advertisements` VALUES (86, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user26', 'مبلمان', '2019-09-05 14:35:27', 'Accepted', 'تهران', 'تهران', '2023-03-13 18:05:27');
INSERT INTO `advertisements` VALUES (87, 'فروش آپارتمان', 5000000, 'آپارتمان 80 متری', 'user26', 'املاک', '2021-01-16 22:35:45', 'Accepted', 'تهران', 'تهران', '2023-01-06 02:05:45');
INSERT INTO `advertisements` VALUES (88, 'گوشی سامسونگ', 3000000, 'گوشی سامسونگ S21', 'user27', 'لوازم الکترونیکی', '2020-12-12 04:38:14', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-02-27 08:08:14');
INSERT INTO `advertisements` VALUES (89, 'تبلت ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user28', 'لوازم الکترونیکی', '2019-11-08 02:59:30', 'Accepted', 'اصفهان', 'اصفهان', '2023-05-23 06:29:30');
INSERT INTO `advertisements` VALUES (90, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user29', 'وسایل نقلیه', '2019-07-21 15:13:24', 'Pending', 'خراسان جنوبی', 'بیرحند', '2023-03-22 18:43:24');
INSERT INTO `advertisements` VALUES (91, 'گوشی آیفون', 4000000, 'گوشی آیفون 11', 'user29', 'لوازم الکترونیکی', '2020-06-05 18:35:04', 'Accepted', 'تهران', 'تهران', '2023-05-23 22:05:04');
INSERT INTO `advertisements` VALUES (92, 'لپ تاپ ایسوس', 8000000, 'لپ تاپ ایسوس Zenbook', 'user29', 'لوازم الکترونیکی', '2021-03-04 16:58:56', 'Accepted', 'تهران', 'تهران', '2023-04-24 20:28:56');
INSERT INTO `advertisements` VALUES (93, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user29', 'مبلمان', '2019-12-15 20:16:05', 'Accepted', 'تهران', 'تهران', '2023-04-13 23:46:05');
INSERT INTO `advertisements` VALUES (94, 'فروش آپارتمان', 5000000, 'آپارتمان 80 متری', 'user29', 'املاک', '2019-09-25 02:18:28', 'Accepted', 'تهران', 'تهران', '2023-01-17 05:48:28');
INSERT INTO `advertisements` VALUES (95, 'گوشی سامسونگ', 3000000, 'گوشی سامسونگ S21', 'user29', 'لوازم الکترونیکی', '2022-06-10 01:50:57', 'Accepted', 'خراسان جنوبی', 'بیرجند', '2023-04-16 05:20:57');
INSERT INTO `advertisements` VALUES (96, 'تبلت ایپد', 6000000, 'تبلت ایپد Pro 2022', 'user29', 'لوازم الکترونیکی', '2019-01-06 14:20:28', 'Rejected', 'اصفهان', 'اصفهان', '2023-04-27 17:50:28');
INSERT INTO `advertisements` VALUES (97, 'خودرو پژو 405', 15000000, 'خودرو پژو 405 مدل 1395', 'user30', 'وسایل نقلیه', '2022-03-14 07:54:04', 'Accepted', 'خراسان جنوبی', 'بیرحند', '2023-01-07 11:24:04');
INSERT INTO `advertisements` VALUES (100, 'مبل راحتی', 5000000, 'مبل راحتی نو', 'user30', 'مبلمان', '2020-09-04 17:55:24', 'Pending', 'تهران', 'تهران', '2023-01-14 21:25:24');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `img_id` int NOT NULL AUTO_INCREMENT,
  `img_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `ads_id` int NOT NULL,
  PRIMARY KEY (`img_id`) USING BTREE,
  UNIQUE INDEX `img_path`(`img_path` ASC) USING BTREE,
  INDEX `ads_id`(`ads_id` ASC) USING BTREE,
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`ads_id`) REFERENCES `advertisements` (`ads_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, '/home/user/documents/img1.jpg', 1);
INSERT INTO `images` VALUES (2, '/home/user/documents/img2.png', 2);
INSERT INTO `images` VALUES (3, '/home/user/documents/img3.jpg', 2);
INSERT INTO `images` VALUES (4, '/home/user/photos/img4.png', 3);
INSERT INTO `images` VALUES (5, '/home/user/pictures/img5.jpg', 3);
INSERT INTO `images` VALUES (6, '/home/user/documents/img6.png', 4);
INSERT INTO `images` VALUES (7, '/home/user/downloads/img7.jpg', 4);
INSERT INTO `images` VALUES (8, '/home/user/photos/img8.png', 5);
INSERT INTO `images` VALUES (9, '/home/user/pictures/img9.jpg', 6);
INSERT INTO `images` VALUES (10, '/home/user/documents/img10.png', 6);
INSERT INTO `images` VALUES (11, '/home/user/downloads/img11.jpg', 7);
INSERT INTO `images` VALUES (12, '/home/user/photos/img12.png', 7);
INSERT INTO `images` VALUES (13, '/home/user/pictures/img13.jpg', 7);
INSERT INTO `images` VALUES (14, '/home/user/documents/img14.png', 8);
INSERT INTO `images` VALUES (15, '/home/user/downloads/img15.jpg', 8);
INSERT INTO `images` VALUES (16, '/home/user/pictures/img16.jpg', 8);
INSERT INTO `images` VALUES (17, '/home/user/documents/img17.png', 8);
INSERT INTO `images` VALUES (18, '/home/user/downloads/img18.jpg', 9);
INSERT INTO `images` VALUES (19, '/home/user/photos/img19.png', 9);
INSERT INTO `images` VALUES (20, '/home/user/pictures/img20.jpg', 11);
INSERT INTO `images` VALUES (21, '/home/user/documents/img21.png', 11);
INSERT INTO `images` VALUES (22, '/home/user/downloads/img22.jpg', 11);
INSERT INTO `images` VALUES (23, '/home/user/photos/img23.png', 12);
INSERT INTO `images` VALUES (24, '/home/user/pictures/img24.jpg', 13);
INSERT INTO `images` VALUES (25, '/home/user/documents/img25.png', 13);
INSERT INTO `images` VALUES (26, '/home/user/downloads/img26.jpg', 14);
INSERT INTO `images` VALUES (27, '/home/user/photos/img27.png', 14);
INSERT INTO `images` VALUES (28, '/home/user/pictures/img28.jpg', 14);
INSERT INTO `images` VALUES (29, '/home/user/documents/img29.png', 15);
INSERT INTO `images` VALUES (30, '/home/user/downloads/img30.jpg', 15);
INSERT INTO `images` VALUES (31, '/home/user/pictures/img31.jpg', 15);
INSERT INTO `images` VALUES (32, '/home/user/documents/img32.png', 15);
INSERT INTO `images` VALUES (33, '/home/user/downloads/img33.jpg', 16);
INSERT INTO `images` VALUES (34, '/home/user/photos/img34.png', 17);
INSERT INTO `images` VALUES (35, '/home/user/pictures/img35.jpg', 17);
INSERT INTO `images` VALUES (36, '/home/user/documents/img36.png', 17);
INSERT INTO `images` VALUES (37, '/home/user/downloads/img37.jpg', 18);
INSERT INTO `images` VALUES (38, '/home/user/photos/img38.png', 18);
INSERT INTO `images` VALUES (39, '/home/user/pictures/img39.jpg', 19);
INSERT INTO `images` VALUES (40, '/home/user/documents/img40.png', 21);
INSERT INTO `images` VALUES (41, '/home/user/downloads/img41.jpg', 21);
INSERT INTO `images` VALUES (42, '/home/user/photos/img42.png', 22);
INSERT INTO `images` VALUES (43, '/home/user/pictures/img43.jpg', 23);
INSERT INTO `images` VALUES (44, '/home/user/documents/img44.png', 23);
INSERT INTO `images` VALUES (45, '/home/user/downloads/img45.jpg', 23);
INSERT INTO `images` VALUES (46, '/home/user/pictures/img46.jpg', 23);
INSERT INTO `images` VALUES (47, '/home/user/documents/img47.png', 24);
INSERT INTO `images` VALUES (48, '/home/user/downloads/img48.jpg', 24);
INSERT INTO `images` VALUES (49, '/home/user/photos/img49.png', 25);
INSERT INTO `images` VALUES (50, '/home/user/pictures/img50.jpg', 25);
INSERT INTO `images` VALUES (51, '/home/user/documents/img51.png', 25);
INSERT INTO `images` VALUES (52, '/home/user/downloads/img52.jpg', 26);
INSERT INTO `images` VALUES (53, '/home/user/photos/img53.png', 26);
INSERT INTO `images` VALUES (54, '/home/user/pictures/img54.jpg', 26);
INSERT INTO `images` VALUES (55, '/home/user/documents/img55.png', 26);
INSERT INTO `images` VALUES (56, '/home/user/downloads/img56.jpg', 27);
INSERT INTO `images` VALUES (57, '/home/user/photos/img57.png', 27);
INSERT INTO `images` VALUES (58, '/home/user/pictures/img58.jpg', 27);
INSERT INTO `images` VALUES (59, '/home/user/documents/img59.png', 28);
INSERT INTO `images` VALUES (60, '/home/user/downloads/img60.jpg', 28);
INSERT INTO `images` VALUES (61, '/home/user/pictures/img61.jpg', 29);
INSERT INTO `images` VALUES (62, '/home/user/documents/img62.png', 29);
INSERT INTO `images` VALUES (63, '/home/user/downloads/img63.jpg', 29);
INSERT INTO `images` VALUES (64, '/home/user/photos/img64.png', 31);
INSERT INTO `images` VALUES (65, '/home/user/pictures/img65.jpg', 31);
INSERT INTO `images` VALUES (66, '/home/user/documents/img66.png', 31);
INSERT INTO `images` VALUES (67, '/home/user/downloads/img67.jpg', 33);
INSERT INTO `images` VALUES (68, '/home/user/photos/img68.png', 33);
INSERT INTO `images` VALUES (69, '/home/user/pictures/img69.jpg', 33);
INSERT INTO `images` VALUES (70, '/home/user/documents/img70.png', 33);
INSERT INTO `images` VALUES (71, '/home/user/downloads/img71.jpg', 33);
INSERT INTO `images` VALUES (72, '/home/user/photos/img72.png', 34);
INSERT INTO `images` VALUES (73, '/home/user/pictures/img73.jpg', 34);
INSERT INTO `images` VALUES (74, '/home/user/documents/img74.png', 34);
INSERT INTO `images` VALUES (75, '/home/user/downloads/img75.jpg', 34);
INSERT INTO `images` VALUES (76, '/home/user/pictures/img76.jpg', 34);
INSERT INTO `images` VALUES (77, '/home/user/documents/img77.png', 34);

-- ----------------------------
-- Table structure for log_table
-- ----------------------------
DROP TABLE IF EXISTS `log_table`;
CREATE TABLE `log_table`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `log_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `date_action` datetime NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_table
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `prm_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`role_id`, `prm_id`) USING BTREE,
  INDEX `prm_id`(`prm_id` ASC) USING BTREE,
  CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`prm_id`) REFERENCES `permissions` (`prm_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (5, 1);
INSERT INTO `permission_role` VALUES (2, 2);
INSERT INTO `permission_role` VALUES (3, 2);
INSERT INTO `permission_role` VALUES (4, 2);
INSERT INTO `permission_role` VALUES (6, 2);
INSERT INTO `permission_role` VALUES (2, 3);
INSERT INTO `permission_role` VALUES (3, 3);
INSERT INTO `permission_role` VALUES (4, 3);
INSERT INTO `permission_role` VALUES (5, 3);
INSERT INTO `permission_role` VALUES (6, 3);
INSERT INTO `permission_role` VALUES (6, 4);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `prm_id` int NOT NULL AUTO_INCREMENT,
  `prm_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`prm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'accessAll');
INSERT INTO `permissions` VALUES (2, 'createAds');
INSERT INTO `permissions` VALUES (3, 'editAds');
INSERT INTO `permissions` VALUES (4, 'deleteAds');
INSERT INTO `permissions` VALUES (5, 'viewUsers');
INSERT INTO `permissions` VALUES (6, 'viewAdds');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `role_id` int NOT NULL,
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`role_id`, `user_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 'user1');
INSERT INTO `role_user` VALUES (2, 'user10');
INSERT INTO `role_user` VALUES (2, 'user11');
INSERT INTO `role_user` VALUES (2, 'user12');
INSERT INTO `role_user` VALUES (2, 'user13');
INSERT INTO `role_user` VALUES (2, 'user14');
INSERT INTO `role_user` VALUES (2, 'user15');
INSERT INTO `role_user` VALUES (2, 'user16');
INSERT INTO `role_user` VALUES (2, 'user17');
INSERT INTO `role_user` VALUES (2, 'user18');
INSERT INTO `role_user` VALUES (2, 'user19');
INSERT INTO `role_user` VALUES (2, 'user2');
INSERT INTO `role_user` VALUES (2, 'user20');
INSERT INTO `role_user` VALUES (2, 'user21');
INSERT INTO `role_user` VALUES (2, 'user22');
INSERT INTO `role_user` VALUES (2, 'user23');
INSERT INTO `role_user` VALUES (2, 'user24');
INSERT INTO `role_user` VALUES (2, 'user25');
INSERT INTO `role_user` VALUES (2, 'user26');
INSERT INTO `role_user` VALUES (2, 'user27');
INSERT INTO `role_user` VALUES (2, 'user28');
INSERT INTO `role_user` VALUES (2, 'user29');
INSERT INTO `role_user` VALUES (2, 'user30');
INSERT INTO `role_user` VALUES (2, 'user4');
INSERT INTO `role_user` VALUES (2, 'user6');
INSERT INTO `role_user` VALUES (2, 'user7');
INSERT INTO `role_user` VALUES (2, 'user9');
INSERT INTO `role_user` VALUES (3, 'user3');
INSERT INTO `role_user` VALUES (4, 'user8');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `role_status` enum('Enable','Disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL DEFAULT 'Enable',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'Enable');
INSERT INTO `roles` VALUES (2, 'User', 'Enable');
INSERT INTO `roles` VALUES (3, 'Wrtiter', 'Enable');
INSERT INTO `roles` VALUES (4, 'Guest', 'Enable');

-- ----------------------------
-- Table structure for user_mobiles
-- ----------------------------
DROP TABLE IF EXISTS `user_mobiles`;
CREATE TABLE `user_mobiles`  (
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`user_id`, `mobile`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile` ASC) USING BTREE,
  CONSTRAINT `user_mobiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_mobiles
-- ----------------------------
INSERT INTO `user_mobiles` VALUES ('user1', '09126633415');
INSERT INTO `user_mobiles` VALUES ('user1', '09142745598');
INSERT INTO `user_mobiles` VALUES ('user1', '09148704370');
INSERT INTO `user_mobiles` VALUES ('user10', '09401495064');
INSERT INTO `user_mobiles` VALUES ('user11', '09185464321');
INSERT INTO `user_mobiles` VALUES ('user11', '09623264855');
INSERT INTO `user_mobiles` VALUES ('user11', '09802073639');
INSERT INTO `user_mobiles` VALUES ('user12', '09492011761');
INSERT INTO `user_mobiles` VALUES ('user13', '09185424321');
INSERT INTO `user_mobiles` VALUES ('user13', '09641779357');
INSERT INTO `user_mobiles` VALUES ('user13', '09719974433');
INSERT INTO `user_mobiles` VALUES ('user14', '09577583077');
INSERT INTO `user_mobiles` VALUES ('user15', '09814969305');
INSERT INTO `user_mobiles` VALUES ('user16', '09436198599');
INSERT INTO `user_mobiles` VALUES ('user17', '09123459049');
INSERT INTO `user_mobiles` VALUES ('user17', '09165787789');
INSERT INTO `user_mobiles` VALUES ('user18', '09181294321');
INSERT INTO `user_mobiles` VALUES ('user19', '09200183181');
INSERT INTO `user_mobiles` VALUES ('user19', '09989143923');
INSERT INTO `user_mobiles` VALUES ('user2', '09684142642');
INSERT INTO `user_mobiles` VALUES ('user20', '09695558508');
INSERT INTO `user_mobiles` VALUES ('user21', '09347710149');
INSERT INTO `user_mobiles` VALUES ('user22', '09154545389');
INSERT INTO `user_mobiles` VALUES ('user23', '09180924321');
INSERT INTO `user_mobiles` VALUES ('user24', '09643446456');
INSERT INTO `user_mobiles` VALUES ('user25', '09159768459');
INSERT INTO `user_mobiles` VALUES ('user25', '09338193144');
INSERT INTO `user_mobiles` VALUES ('user26', '09155467789');
INSERT INTO `user_mobiles` VALUES ('user27', '09184763452');
INSERT INTO `user_mobiles` VALUES ('user28', '09058636633');
INSERT INTO `user_mobiles` VALUES ('user28', '09941193335');
INSERT INTO `user_mobiles` VALUES ('user29', '09405889081');
INSERT INTO `user_mobiles` VALUES ('user29', '09671617904');
INSERT INTO `user_mobiles` VALUES ('user3', '09691181233');
INSERT INTO `user_mobiles` VALUES ('user30', '09376317897');
INSERT INTO `user_mobiles` VALUES ('user4', '09668998879');
INSERT INTO `user_mobiles` VALUES ('user4', '09972170788');
INSERT INTO `user_mobiles` VALUES ('user5', '09187544321');
INSERT INTO `user_mobiles` VALUES ('user5', '09972189988');
INSERT INTO `user_mobiles` VALUES ('user5', '09984731693');
INSERT INTO `user_mobiles` VALUES ('user6', '09176895589');
INSERT INTO `user_mobiles` VALUES ('user6', '09942273704');
INSERT INTO `user_mobiles` VALUES ('user7', '09187344521');
INSERT INTO `user_mobiles` VALUES ('user8', '09252494190');
INSERT INTO `user_mobiles` VALUES ('user9', '09905346255');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `user_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('user1', 'Ali', '1234k5678');
INSERT INTO `users` VALUES ('user10', 'Latife', 'p2e223aswds1234');
INSERT INTO `users` VALUES ('user11', 'Ahmad', '945R45678');
INSERT INTO `users` VALUES ('user12', 'Mari', '435paword');
INSERT INTO `users` VALUES ('user13', 'Mehdi', '122fgrc123');
INSERT INTO `users` VALUES ('user14', 'Erfan', '33FRVzxc');
INSERT INTO `users` VALUES ('user15', 'Dani', '876VRV1234');
INSERT INTO `users` VALUES ('user16', 'Alireza', 'frt23rg678');
INSERT INTO `users` VALUES ('user17', 'saeed', 'pacgcsword');
INSERT INTO `users` VALUES ('user18', 'Amir', 'abwFRNRT');
INSERT INTO `users` VALUES ('user19', 'Fateme', 'deKJdfMFc');
INSERT INTO `users` VALUES ('user2', 'Reza', 'password');
INSERT INTO `users` VALUES ('user20', 'Yunes', 'pNHGs1234');
INSERT INTO `users` VALUES ('user21', 'Sahar', '98T5NF678');
INSERT INTO `users` VALUES ('user22', 'Mehrab', '4Nword');
INSERT INTO `users` VALUES ('user23', 'Xale', '1EFN4rc123');
INSERT INTO `users` VALUES ('user24', 'Fateme B', '33NGF65dzxc');
INSERT INTO `users` VALUES ('user25', 'Zeynab', 'MRT6rtr1234');
INSERT INTO `users` VALUES ('user26', 'Ehsan B', '3BGt23rg678');
INSERT INTO `users` VALUES ('user27', 'Mohsen', 'pFBgcsword');
INSERT INTO `users` VALUES ('user28', 'Soheil', 'abF43hfgfd23');
INSERT INTO `users` VALUES ('user29', 'Amir B', 'EWEhfgfd23');
INSERT INTO `users` VALUES ('user3', 'Mohmad', '677bc123');
INSERT INTO `users` VALUES ('user30', 'Puya', 'QC4dedfzxc');
INSERT INTO `users` VALUES ('user4', 'Zahra', 'qweasdzxc');
INSERT INTO `users` VALUES ('user5', 'Ehsan', '78ds1234');
INSERT INTO `users` VALUES ('user6', 'Saeed', 'fjo32345678');
INSERT INTO `users` VALUES ('user7', 'Yaser', 'nbsd32word');
INSERT INTO `users` VALUES ('user8', 'Sadegh', 'e2reabc123');
INSERT INTO `users` VALUES ('user9', 'Roze', 'e42eqwedefzxc');

-- ----------------------------
-- Table structure for visiting
-- ----------------------------
DROP TABLE IF EXISTS `visiting`;
CREATE TABLE `visiting`  (
  `visit_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NULL DEFAULT NULL,
  `ads_id` int NOT NULL,
  `visit_status` enum('Saved','Visited') CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL DEFAULT 'Visited',
  `visit_date` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`visit_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `ads_id`(`ads_id` ASC) USING BTREE,
  CONSTRAINT `visiting_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `visiting_ibfk_2` FOREIGN KEY (`ads_id`) REFERENCES `advertisements` (`ads_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_persian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visiting
-- ----------------------------
INSERT INTO `visiting` VALUES (1, 'user1', 1, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (2, 'user1', 2, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (3, 'user1', 4, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (4, 'user1', 8, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (5, 'user1', 9, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (6, 'user1', 10, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (7, 'user1', 22, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (8, 'user1', 34, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (9, 'user2', 1, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (10, 'user2', 3, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (11, 'user2', 5, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (12, 'user2', 7, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (13, 'user3', 9, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (14, 'user3', 11, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (15, 'user3', 23, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (16, 'user4', 32, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (17, 'user4', 2, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (18, 'user4', 4, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (19, 'user4', 3, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (20, 'user4', 23, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (21, 'user5', 1, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (22, 'user5', 2, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (23, 'user5', 4, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (24, 'user5', 3, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (25, 'user5', 12, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (26, 'user5', 16, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (27, 'user5', 28, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (28, 'user5', 15, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (29, 'user5', 34, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (30, 'user6', 31, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (31, 'user6', 21, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (32, 'user6', 26, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (33, 'user7', 2, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (34, 'user8', 3, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (35, 'user9', 3, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (36, 'user10', 1, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (37, 'user10', 2, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (38, 'user10', 4, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (39, 'user11', 3, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (40, 'user12', 3, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (41, 'user13', 1, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (42, 'user14', 2, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (43, 'user15', 4, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (44, 'user16', 3, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (45, 'user16', 3, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (46, 'user17', 1, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (47, 'user17', 2, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (48, 'user18', 4, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (49, 'user18', 3, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (50, 'user19', 3, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (51, 'user20', 1, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (52, 'user22', 2, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (53, 'user25', 4, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (54, 'user25', 3, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (55, 'user25', 4, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (56, 'user27', 1, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (57, 'user27', 2, 'Saved', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (58, 'user28', 4, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (59, 'user29', 3, 'Visited', '2023-05-22 06:47:13');
INSERT INTO `visiting` VALUES (60, 'user30', 3, 'Saved', '2023-05-22 06:47:13');

-- ----------------------------
-- View structure for ad_images
-- ----------------------------
DROP VIEW IF EXISTS `ad_images`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ad_images` AS SELECT
ads.ads_id AS 'کد اگهی',
ads.ads_name AS 'نام اگهی',
ads.ads_price AS 'قیمت',
ads.ads_description AS 'توضیحات',
ads.ads_category AS 'دسته بندی',
ads.ads_creation_date AS 'تاریخ ساخت',
ads.ads_status AS 'وضعیت اگهی',
ads.ads_province AS 'استان اگهی',
ads.ads_city AS 'شهر اگهی',
ads.ads_expire_date AS 'تاریخ انقضا اگهی',-- images.img_path
-- COALESCE ( images.img_path, ', ' ) 
    GROUP_CONCAT(DISTINCT images.img_path
        SEPARATOR ' ; ') AS 'عکس های آگهی'
FROM
	advertisements ads
	LEFT JOIN images ON ads.ads_id = images.ads_id 
GROUP BY
	ads.ads_id ;

-- ----------------------------
-- View structure for permission_name
-- ----------------------------
DROP VIEW IF EXISTS `permission_name`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `permission_name` AS SELECT
u.user_name AS 'نام کاربر',
prm.prm_name AS 'مجوز های داده شده' 
FROM
	users AS u
	JOIN role_user ru ON u.user_id = ru.user_id
	JOIN permission_role pr ON ru.role_id = pr.role_id
	JOIN permissions AS prm ON pr.prm_id = prm.prm_id 
GROUP BY
	u.user_id ;

-- ----------------------------
-- Function structure for disp_percent_ads
-- ----------------------------
DROP FUNCTION IF EXISTS `disp_percent_ads`;
delimiter ;;
CREATE FUNCTION `disp_percent_ads`(input_category VARCHAR ( 50 ))
 RETURNS decimal(5,2)
BEGIN
		DECLARE	outpercent DECIMAL(5,2);
		SELECT 
		COUNT( ADS.ads_id )/ (SELECT	COUNT( ads_id ) FROM	advertisements )* 100 INTO  outpercent
		FROM
			advertisements ADS 
		WHERE
			ADS.ads_category =input_category;
		RETURN outpercent;
	
	END
;;
delimiter ;

-- ----------------------------
-- Function structure for getUserRoles
-- ----------------------------
DROP FUNCTION IF EXISTS `getUserRoles`;
delimiter ;;
CREATE FUNCTION `getUserRoles`(userId INT)
 RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_persian_ci
BEGIN
		DECLARE	roleList VARCHAR ( 255 );
		SELECT
			GROUP_CONCAT( r.role_name SEPARATOR ', ' ) INTO roleList 
		FROM
			roles r
			JOIN role_user ru ON r.role_id = ru.role_id 
		WHERE
			ru.user_id = userId;
			
		RETURN roleList;
		
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for search_in_ads
-- ----------------------------
DROP PROCEDURE IF EXISTS `search_in_ads`;
delimiter ;;
CREATE PROCEDURE `search_in_ads`(IN text_search VARCHAR(50))
BEGIN 
	SELECT
	 * 
	FROM
		advertisements AD 
	WHERE
		AD.ads_name LIKE CONCAT('%',text_search,'%') or AD.ads_description LIKE CONCAT('%',text_search,'%')
	ORDER BY AD.ads_creation_date DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for show_ads_by_location
-- ----------------------------
DROP PROCEDURE IF EXISTS `show_ads_by_location`;
delimiter ;;
CREATE PROCEDURE `show_ads_by_location`(IN province VARCHAR(20),IN city VARCHAR(20),category VARCHAR(50))
BEGIN 
	SELECT
		* 
	FROM
		advertisements AD 
	WHERE
		AD.ads_province = province AND AD.ads_city = city and AD.ads_category = category
	ORDER BY AD.ads_creation_date DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for show_viewers_of_ads
-- ----------------------------
DROP PROCEDURE IF EXISTS `show_viewers_of_ads`;
delimiter ;;
CREATE PROCEDURE `show_viewers_of_ads`(IN input_ads_id INT)
BEGIN
	SELECT
		US.user_name 
	FROM
		visiting VI
		JOIN users US USING ( user_id ) 
	WHERE
		VI.ads_id = input_ads_id;
	
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table advertisements
-- ----------------------------
DROP TRIGGER IF EXISTS `ads_status_update`;
delimiter ;;
CREATE TRIGGER `ads_status_update` AFTER UPDATE ON `advertisements` FOR EACH ROW INSERT INTO log_table
 SET log_type = 'Change ADS Statue',
     date_action = NOW(),
     description = CONCAT('وضعیت آکهی کاربر از حالت ',OLD.ads_status,' به حالت ',NEW.ads_status,'تغییر یافت')
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table advertisements
-- ----------------------------
DROP TRIGGER IF EXISTS `ads_delete`;
delimiter ;;
CREATE TRIGGER `ads_delete` AFTER DELETE ON `advertisements` FOR EACH ROW INSERT INTO log_table
 SET log_type = 'Delete ADS',
     date_action = NOW(),
     description = CONCAT('اگهی با عنوان ',OLD.ads_name,' با توضیحات ',OLD.ads_description,' حذف شد')
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
