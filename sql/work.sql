/*
 Navicat Premium Data Transfer

 Source Server         : shx
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : work

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 19/12/2022 14:28:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jdt
-- ----------------------------
DROP TABLE IF EXISTS `jdt`;
CREATE TABLE `jdt`  (
  `qid` int(0) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jdt
-- ----------------------------

-- ----------------------------
-- Table structure for pdt
-- ----------------------------
DROP TABLE IF EXISTS `pdt`;
CREATE TABLE `pdt`  (
  `question_id` int(0) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt
-- ----------------------------
INSERT INTO `pdt` VALUES (1, '世界上第一台通用计算机诞生时间是1945年', '错');
INSERT INTO `pdt` VALUES (2, '抽象方法必须在抽象类中，所以抽象类中的方法都必须是抽象方法。', '错');
INSERT INTO `pdt` VALUES (3, 'Java支持多重继承。', '错');
INSERT INTO `pdt` VALUES (4, 'Java语言是编译解释型语言。', '対');
INSERT INTO `pdt` VALUES (5, '一个类中含有几个构造方法，称为构造方法的重载。对于重载的方法，其参数列表可以相同。', '対');
INSERT INTO `pdt` VALUES (6, '成员变量的值会因为对象的不同而不同。', '対');
INSERT INTO `pdt` VALUES (7, 'Java的源代码中定义几个类，编译结果就生成几个以“.class”后缀的字节码。', '対');
INSERT INTO `pdt` VALUES (8, '在java继承机制中，父类中的私有 private成员不能被子类继承。', '错');
INSERT INTO `pdt` VALUES (9, 'Java 语言的标识符是区分大小写的。', '対');
INSERT INTO `pdt` VALUES (10, '有时候为了避免引起混淆，构造方法的方法名可以不与所属类名同名。', '错');
INSERT INTO `pdt` VALUES (11, '在Java中声明变量时必须指定一个类型。', '対');
INSERT INTO `pdt` VALUES (12, 'Java中，一个类可以有多个直接父类。', '错');
INSERT INTO `pdt` VALUES (13, '接口是特殊的类，所以接口也可以继承，子接口将继承父接口的所有常量和抽象方法。', '対');
INSERT INTO `pdt` VALUES (14, 'String是基本数据类型()；', '错');
INSERT INTO `pdt` VALUES (15, '数组获取长度使用length()方法', '错');
INSERT INTO `pdt` VALUES (16, '注释的作用是使程序在执行时在屏幕上显示//之后的内容()', '対');
INSERT INTO `pdt` VALUES (17, '子类要调用父类的方法，必须使用super关键字 ()', '错');
INSERT INTO `pdt` VALUES (18, 'java程序里，创建的类对象用关键字new，回收无用的类对象使用关键字free()', '错');
INSERT INTO `pdt` VALUES (19, '对于基本数据类型byte、short、int、long、float、double，它们的数据都是有符号的数值，既能存储正数，也能存储负数。', '対');
INSERT INTO `pdt` VALUES (20, '语句 System.out.println(4+8+\"Hello,world!\"); 的输出结果是12Hello,world!。', '対');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result`  (
  `record_id` int(0) NOT NULL COMMENT '考试记录编号',
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '考试用户名',
  `test_time` char(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '考试时间',
  `test_result` int(0) NOT NULL COMMENT '考试成绩',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of result
-- ----------------------------

-- ----------------------------
-- Table structure for sub
-- ----------------------------
DROP TABLE IF EXISTS `sub`;
CREATE TABLE `sub`  (
  `question_id` int(0) NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT ' 题目',
  `choice_a` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'a',
  `choice_b` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'b',
  `choice_c` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'c',
  `choice_d` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'd',
  `answer` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '答案',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub
-- ----------------------------
INSERT INTO `sub` VALUES (1, 'Java语言的开发时间', '1995', '2000', '1895', '2022', 'a');
INSERT INTO `sub` VALUES (2, '以下属于面向对象的特征的是', '重载', '重写', '封装', 'io', 'c');
INSERT INTO `sub` VALUES (3, '在使用super 和this关键字时，以下描述正确的是', '在子类构造方法中使用super()显示调用父类的构造方法，super()必须写在子类构造方法的第一行，否则编译不通过', 'super()和this()不一定要放在构造方法内第一行', 'this()和super()可以同时出现在一个构造函数中', 'this()和super()可以在static环境中使用，包括static方法和static语句块', 'a');
INSERT INTO `sub` VALUES (4, '以下对封装的描述正确的是()', '只能对一个类中的方法进行封装，不能对属性进行封装', '如果子类继承了父类，对于父类中进行封装的方法，子类仍然可以直接调用', '封装的意义不大，因此在编码时尽量不要使用', '封装的主要作用在于对外隐藏内部实现细节，增强程序的安全性', 'd');
INSERT INTO `sub` VALUES (5, '以下对继承的描述错误的是()', 'Java中的继承允许一个子类继承多个父类', '父类更具有通用性，子类更具体', 'Java中的继承存在着传递性', '当实例化子类时会递归调用父类中的构造方法', 'a');
INSERT INTO `sub` VALUES (6, '访问修饰符作用范围由大到小是()', 'private-default-protected-public', 'public-default-protected-private', 'private-protected-default-public', 'public-protected-default-private', 'd');
INSERT INTO `sub` VALUES (7, '多态的表现形式有()', '重写', '抽象', '继承', '封装', 'a');
INSERT INTO `sub` VALUES (8, '以下对重载描述错误的是()', '方法重载只能发生在一个类的内部', '构造方法不能重载', '重载要求方法名相同，参数列表不同', '方法的返回值类型不是区分方法重载的条件', 'b');
INSERT INTO `sub` VALUES (9, '以下对接口描述错误的有()', '接口没有提供构造方法', '接口中的方法默认使用public、abstract修饰', '接口中的属性默认使用public、static、final修饰', '接口不允许多继承', 'd');
INSERT INTO `sub` VALUES (10, '在try-catch-finally语句块中，以下可以单独与finally一起使用的是(B)', 'catch', 'try', 'throws', 'throw', 'b');
INSERT INTO `sub` VALUES (11, '下列选项中关于java中super关键字的说法错误的是(  )', 'super关键字是在子类对象内部指代其父类对象的引用', 'super关键字不仅可以指代子类的直接父类，还可以指代父类的父类', '子类可以通过super关键字调用父类的方法', '子类可以通过super关键字调用父类的属性', 'b');
INSERT INTO `sub` VALUES (12, '在Java中开发JDBC应用程序时，使用DriverManager类的getConnection()方法建立与数据源的连接语句为：  　　Connection con = DriverManager.getConnection(“jdbc:odbc:news”);  　　URL连接中的“news”表示的是()', '数据库中表的名称', '数据库服务器的机器名', '数据源的名称', '用户名', 'c');
INSERT INTO `sub` VALUES (13, '在Java中,JDBCAPI定义了一组用于与数据库进行通信的接口和类，它们包括在()包中。', 'java.lang', 'java.sql', 'java.util', 'java.math', 'b');
INSERT INTO `sub` VALUES (14, '以下对JDBC事务描述错误的是(  )', 'JDBC事务属于JAVA事务的一种', 'JDBC事务属于容器事务类型', 'JDBC事务可以保证操作的完整性和一致性', 'JDBC事务是由Connection发起的，并由Connection控制', 'b');
INSERT INTO `sub` VALUES (15, '要删除book表中书籍(bookName)是”java”的记录，以下代码正确的是()  　　String sql=”delete from book where bookName=?”;  　　PreparedStatement pst=con.preparedStatement(sql);  　　______________________________  　　pst.execute();', 'pst.setString(1,”java”);', 'pst.setString(0,”java”);', 'pst.setInt(0,”java”);', '以上选项都不正确', 'a');
INSERT INTO `sub` VALUES (16, '以下负责建立与数据库连接的是()', 'Statement', 'PreparedStatement', 'ResultSet', 'DriverManager', 'd');
INSERT INTO `sub` VALUES (17, '关于下面程序片段，结论正确的是（      ）。  String a =”Java”;  String b=”Java”;  String x=”Ja”;  String y=”va”;  String c=x+y;', 'a和b指向同一个实例对象，a和c指向同一个实例对象', 'a和b指向同一个实例对象，a和c不指向同一个实例对象', 'a和b不指向同一个实例对象，a和c指向同一个实例对象', 'a和b不指向同一个实例对象，a和c不指向同一个实例对象', 'b');
INSERT INTO `sub` VALUES (18, '不允许作为类及类成员的访问控制符是（      ）。', 'public', 'private', 'static', 'protected', 'c');
INSERT INTO `sub` VALUES (19, 'Java中，byte数据类型的取值范围是（       ）。', '-256~255　', '-255~255', '-128~127', '-127~128', 'c');
INSERT INTO `sub` VALUES (20, '构造函数何时会被调用？（         ）', '创建对象时', '可以出现在非抽象类中', '是没有方法体的方法', '抽象类中的方法都是抽象方法', 'a');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacher_id` int(0) NOT NULL,
  `teachername` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT COMMENT ' 用户id',
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT ' 用户名',
  `userpwd` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '小王', '123456');
INSERT INTO `user` VALUES (2, '小李', '123456');
INSERT INTO `user` VALUES (3, '小李', '123456');
INSERT INTO `user` VALUES (4, '小李', '123456');
INSERT INTO `user` VALUES (5, '小李', '123456');
INSERT INTO `user` VALUES (6, '小李', '123456');
INSERT INTO `user` VALUES (7, '小李', '123456');
INSERT INTO `user` VALUES (8, '石函旭', '123456');
INSERT INTO `user` VALUES (9, '', '');
INSERT INTO `user` VALUES (10, '1111', '1');
INSERT INTO `user` VALUES (11, 'JerAx', '123');
INSERT INTO `user` VALUES (12, '小小', '123');
INSERT INTO `user` VALUES (13, '????', '123');
INSERT INTO `user` VALUES (14, 'sad', '123');
INSERT INTO `user` VALUES (15, '???', '123456');
INSERT INTO `user` VALUES (16, '???', '123');
INSERT INTO `user` VALUES (17, '于昊成', '123');

SET FOREIGN_KEY_CHECKS = 1;
