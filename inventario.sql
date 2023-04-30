/*
 Navicat Premium Data Transfer

 Source Server         : Francisco
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : inventario

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 29/04/2023 23:07:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos`  (
  `coddepto` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `nombre` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`coddepto`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departamentos
-- ----------------------------
INSERT INTO `departamentos` VALUES ('d01', 'AdministraciÃ³n');
INSERT INTO `departamentos` VALUES ('d02', 'Ventas');
INSERT INTO `departamentos` VALUES ('d03', 'Mantenimiento');
INSERT INTO `departamentos` VALUES ('d04', 'Marketing y Publicidad');

-- ----------------------------
-- Table structure for movimientos
-- ----------------------------
DROP TABLE IF EXISTS `movimientos`;
CREATE TABLE `movimientos`  (
  `codproducto` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  `factura` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cantidad` int(11) NULL DEFAULT NULL,
  `punitario` double(20, 0) NULL DEFAULT NULL,
  `total` double NULL DEFAULT NULL,
  `codmovi` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movimientos
-- ----------------------------
INSERT INTO `movimientos` VALUES ('pr01', '2012-05-25', '145', 5, 200, 25000, '8');
INSERT INTO `movimientos` VALUES ('pr01', '2012-05-27', '896', 3, 120, 15000, '9');
INSERT INTO `movimientos` VALUES ('pr01', '2012-05-28', '6942', 3, 1500, 21500, '10');
INSERT INTO `movimientos` VALUES ('pr02', '2012-05-30', '8796', 1, 400, 10000, '11');
INSERT INTO `movimientos` VALUES ('pr02', '2012-05-27', '9865', 1, 500, 9000, '12');
INSERT INTO `movimientos` VALUES ('pr02', '2012-05-30', '475', 1, 450, 9000, '13');
INSERT INTO `movimientos` VALUES ('pr03', '2012-05-31', '485', 1, 650, 4500, '14');
INSERT INTO `movimientos` VALUES ('pr03', '2013-04-30', '1520', -9, 400, 25500, '15');
INSERT INTO `movimientos` VALUES ('pr04', '2013-04-30', '1500', -9, 500, 2500, '16');
INSERT INTO `movimientos` VALUES ('pr04', '2013-04-30', '12500', -9, 650, 2000, '17');
INSERT INTO `movimientos` VALUES ('pr04', '2013-05-02', '152', 9, 750, 15000, '18');
INSERT INTO `movimientos` VALUES ('pr04', '2013-05-02', '150', -9, 250, 2000, '19');
INSERT INTO `movimientos` VALUES ('pr04', '2013-05-02', '1522', -9, 125, 2454, '20');
INSERT INTO `movimientos` VALUES ('pr05', '2013-05-02', '1520', -9, 460, 2500, '21');
INSERT INTO `movimientos` VALUES ('pr05', '2013-05-02', '15415', -5, 500, 1200, '22');
INSERT INTO `movimientos` VALUES ('pr05', '2013-05-03', '155', -5, 600, 12582, '23');
INSERT INTO `movimientos` VALUES ('pr05', '2013-05-03', '1520', -5, 700, 1520, '24');
INSERT INTO `movimientos` VALUES ('pr05', '2015-01-26', 'F001', 20, 810, 200, '25');
INSERT INTO `movimientos` VALUES ('pr06', '2015-02-11', '1245', 10, 20, 200, '26');
INSERT INTO `movimientos` VALUES ('pr06', '2015-02-23', '4578', 2, 100, 200, '27');
INSERT INTO `movimientos` VALUES ('pr07', '2015-02-02', '4568', 20, 20, 400, '28');
INSERT INTO `movimientos` VALUES ('pr08', '2015-02-06', '1234', 30, 10, 300, '29');
INSERT INTO `movimientos` VALUES ('pr08', '2015-02-07', '3215', 15, 10, 150, '30');
INSERT INTO `movimientos` VALUES ('pr08', '2015-01-25', '3145', 10, 10, 100, '31');
INSERT INTO `movimientos` VALUES ('pr09', '2015-01-26', '3678', 20, 30, 600, '32');
INSERT INTO `movimientos` VALUES ('pr09', '2015-01-28', '7896', 30, 40, 1200, '33');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `codproducto` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `existencia` double NULL DEFAULT NULL,
  `codproveedor` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `coddepto` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`codproducto`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('pr01', 'Pulseras', 100, 'p04', 'd02');
INSERT INTO `productos` VALUES ('pr02', 'Collares', 200, 'p02', 'd04');
INSERT INTO `productos` VALUES ('pr03', 'Anillos', 50, 'p03', 'd02');

-- ----------------------------
-- Table structure for proveedores
-- ----------------------------
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores`  (
  `codproveedor` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` char(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `direccion` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefono` int(30) NULL DEFAULT NULL,
  `celular` int(30) NULL DEFAULT NULL,
  PRIMARY KEY (`codproveedor`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proveedores
-- ----------------------------
INSERT INTO `proveedores` VALUES ('p01', 'Lady Lee SPS', 'San Pedro Sula', 26471245, 98653265);
INSERT INTO `proveedores` VALUES ('p02', 'Diunsa', 'San Pedro Sula', 26473254, 98563214);
INSERT INTO `proveedores` VALUES ('p03', 'Carrion', 'El Progreso', 26479832, 96457812);
INSERT INTO `proveedores` VALUES ('p04', 'REDHammer', 'Tegucigalpa', 26677235, 96654218);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `usuario` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `clave` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nivel` int(10) NULL DEFAULT NULL,
  `nombre` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`usuario`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('fpineda', 'fpS6RLjVn.zFM', 1, 'Francisco Javier Pineda Ramirez');
INSERT INTO `usuarios` VALUES ('rosita', '12eMC4Wi9/C9o', 0, 'Rosa Vilma');

SET FOREIGN_KEY_CHECKS = 1;
