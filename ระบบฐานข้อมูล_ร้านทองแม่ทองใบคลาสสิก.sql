-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2022 at 11:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GOLDSHOP`
--

-- --------------------------------------------------------

--
-- Table structure for table `ทอง`
--

CREATE TABLE `ทอง` (
  `รหัสสินค้า` varchar(10) COLLATE utf32_thai_520_w2 NOT NULL,
  `น้ำหนัก` decimal(5,4) NOT NULL,
  `ลาย` varchar(100) COLLATE utf32_thai_520_w2 NOT NULL,
  `ราคา` decimal(10,2) NOT NULL,
  `ชนิด` varchar(10) COLLATE utf32_thai_520_w2 NOT NULL CHECK (`ชนิด` in ('แหวน','สร้อยคอ','สร้อยมือ','กำไล','จี้','กรอบพระ','ต่างหู','ทองแท่ง','อื่นๆ')),
  `วันที่ขาย` date DEFAULT NULL,
  `ช่องทางการขาย` varchar(20) COLLATE utf32_thai_520_w2 DEFAULT NULL,
  `วันที่มาส่ง` date NOT NULL,
  `รหัสพนักงาน` varchar(10) COLLATE utf32_thai_520_w2 DEFAULT NULL,
  `รหัสร้าน` varchar(20) COLLATE utf32_thai_520_w2 DEFAULT NULL,
  `เลขสัญญา` varchar(10) COLLATE utf32_thai_520_w2 DEFAULT NULL,
  `รหัสใบสั่งทำ` varchar(10) COLLATE utf32_thai_520_w2 DEFAULT NULL,
  `เลขที่ตั๋วขายฝาก` varchar(10) COLLATE utf32_thai_520_w2 DEFAULT NULL,
  `เลขบัตรประชาชน(ขายโดย)` varchar(13) COLLATE utf32_thai_520_w2 DEFAULT NULL,
  `เลขบัตรประชาชน(ซื้อโดย)` varchar(13) COLLATE utf32_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_thai_520_w2;

--
-- Dumping data for table `ทอง`
--

INSERT INTO `ทอง` (`รหัสสินค้า`, `น้ำหนัก`, `ลาย`, `ราคา`, `ชนิด`, `วันที่ขาย`, `ช่องทางการขาย`, `วันที่มาส่ง`, `รหัสพนักงาน`, `รหัสร้าน`, `เลขสัญญา`, `รหัสใบสั่งทำ`, `เลขที่ตั๋วขายฝาก`, `เลขบัตรประชาชน(ขายโดย)`, `เลขบัตรประชาชน(ซื้อโดย)`) VALUES
('AG0001', '1.0000', 'โซ่คตกิต', '31150.00', 'สร้อยมือ', '2021-12-08', 'เพจร้าน', '2021-11-01', 'A11114', 'S0001', NULL, NULL, NULL, NULL, '1111111111112'),
('AG0002', '0.5000', 'ทาโร่', '15700.00', 'แหวน', NULL, NULL, '2021-11-02', 'A11119', NULL, NULL, NULL, NULL, '1111111111115', NULL),
('AG0003', '1.0000', 'สี่เสา', '31500.00', 'สร้อยคอ', NULL, NULL, '2021-11-07', 'A11112', NULL, NULL, NULL, NULL, '1111111111117', NULL),
('AG0004', '0.5000', 'เบนซ์', '15925.00', 'สร้อยมือ', NULL, NULL, '2021-11-11', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0005', '1.0000', 'ปลอกมีด', '31150.00', 'แหวน', NULL, NULL, '2021-11-14', 'A11116', NULL, NULL, NULL, NULL, '1111111111128', NULL),
('AG0006', '1.0000', 'ทองแท่ง', '31600.00', 'ทองแท่ง', NULL, NULL, '2021-11-16', 'A11114', NULL, NULL, NULL, NULL, '1111111111112', NULL),
('AG0007', '2.0000', 'ทองแท่ง', '61800.00', 'ทองแท่ง', NULL, NULL, '2021-11-20', 'A11119', NULL, NULL, NULL, NULL, '1111111111132', NULL),
('AG0008', '0.2500', 'ซีตรอง', '8000.00', 'สร้อยคอ', '2022-01-20', 'หน้าร้าน', '2021-11-20', 'A11115', NULL, NULL, NULL, 'AC0014', NULL, NULL),
('AG0009', '0.7500', 'หัวใจคั่นปล้อง', '25000.00', 'สร้อยมือ', '2022-03-22', 'หน้าร้าน', '2021-11-22', 'A11113', NULL, NULL, NULL, 'AC0027', NULL, NULL),
('AG0010', '1.0000', 'โซ่ฝรั่ง', '32150.00', 'สร้อยมือ', NULL, NULL, '2021-11-24', 'A11115', NULL, NULL, NULL, NULL, '1111111111115', NULL),
('AG0011', '1.0000', 'แหวนนามสกุล', '31150.00', 'แหวน', '2021-12-02', 'หน้าร้าน', '2021-11-24', 'A11113', 'S0003', NULL, 'BC000001', NULL, NULL, '1111111111111'),
('AG0012', '0.2500', 'ระย้าหัวใจ', '9500.00', 'สร้อยคอ', NULL, 'หน้าร้าน', '2021-12-01', 'A11112', NULL, NULL, NULL, 'AC0024', NULL, NULL),
('AG0013', '0.2500', 'ปลอกมีด', '7800.00', 'แหวน', '2022-01-01', 'หน้าร้าน', '2021-12-01', 'A11113', NULL, NULL, NULL, 'AC0009', NULL, NULL),
('AG0014', '1.0000', 'ผ่าหวาย', '32150.00', 'สร้อยคอ', NULL, NULL, '2021-12-03', 'A11115', NULL, NULL, NULL, NULL, '1111111111134', NULL),
('AG0015', '1.0000', 'มังกร', '31600.00', 'แหวน', NULL, NULL, '2021-12-04', 'A11113', NULL, NULL, NULL, NULL, '1111111111115', NULL),
('AG0016', '0.5000', 'ระย้าหัวใจ', '61800.00', 'สร้อยมือ', NULL, NULL, '2021-12-11', NULL, 'S0002', NULL, NULL, NULL, NULL, NULL),
('AG0017', '2.0000', 'พิกุล', '62090.00', 'กำไล', NULL, NULL, '2021-12-11', NULL, 'S0004', NULL, NULL, NULL, NULL, NULL),
('AG0018', '1.0000', 'ปลอกมีด', '31150.00', 'แหวน', NULL, NULL, '2021-12-11', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0019', '1.0000', 'ปลอกมีด', '31150.00', 'แหวน', '2021-12-25', 'หน้าร้าน', '2021-12-11', 'A11116', 'S0006', NULL, NULL, NULL, NULL, '1111111111138'),
('AG0020', '5.0000', 'ทองแท่ง', '153350.00', 'ทองแท่ง', '2021-12-30', 'หน้าร้าน', '2021-12-11', 'A11116', 'S0004', NULL, NULL, NULL, NULL, '1111111111136'),
('AG0021', '0.5000', 'หัวใจ', '16010.00', 'ต่างหู', '2021-01-01', 'เพจร้าน', '2021-12-11', 'A11115', 'S0004', NULL, NULL, NULL, NULL, '1111111111117'),
('AG0022', '1.0000', 'ปลอกมีด', '31150.00', 'แหวน', NULL, NULL, '2021-12-11', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0023', '0.2500', 'สี่เสา', '8250.00', 'สร้อยคอ', '2021-12-30', 'หน้าร้าน', '2021-12-11', 'A11113', 'S0008', NULL, NULL, NULL, NULL, '1111111111137'),
('AG0024', '0.2500', 'สี่เสา', '8250.00', 'สร้อยคอ', NULL, NULL, '2021-12-11', NULL, 'S0008', NULL, NULL, NULL, NULL, NULL),
('AG0025', '1.0000', 'ปลอกมีด', '31150.00', 'แหวน', NULL, NULL, '2021-12-11', NULL, 'S0008', NULL, NULL, NULL, NULL, NULL),
('AG0026', '2.0000', 'มังกร', '64300.00', 'กำไล', '2021-12-16', 'หน้าร้าน', '2021-12-11', 'A11115', 'S0006', NULL, 'BC000002', NULL, NULL, '1111111111132'),
('AG0027', '1.0000', 'ปลอกมีด', '31150.00', 'แหวน', NULL, NULL, '2021-12-11', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0028', '0.5000', 'ปลอกมีด', '15700.00', 'แหวน', NULL, NULL, '2021-12-11', 'A11117', NULL, NULL, NULL, NULL, '1111111111115', NULL),
('AG0029', '1.0000', 'ปลอกมีด', '31150.00', 'แหวน', NULL, NULL, '2021-12-11', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0030', '1.0000', 'ปลอกมีด', '31150.00', 'แหวน', NULL, NULL, '2021-12-11', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0031', '0.5000', 'ระย้าหัวใจ', '61800.00', 'สร้อยมือ', NULL, NULL, '2021-12-11', NULL, 'S0002', NULL, NULL, NULL, NULL, NULL),
('AG0032', '0.5000', 'ระย้าหัวใจ', '61800.00', 'สร้อยมือ', '2022-01-15', 'หน้าร้าน', '2021-12-11', 'A11113', 'S0002', NULL, NULL, NULL, NULL, '1111111111127'),
('AG0033', '0.5000', 'ระย้าหัวใจ', '61800.00', 'สร้อยมือ', NULL, NULL, '2021-12-11', NULL, 'S0002', NULL, NULL, NULL, NULL, NULL),
('AG0034', '0.5000', 'ระย้าหัวใจ', '61800.00', 'สร้อยมือ', '2021-12-30', 'หน้าร้าน', '2021-12-11', 'A11114', 'S0002', NULL, NULL, NULL, NULL, '1111111111139'),
('AG0035', '0.7500', 'สี่เสา', '25000.00', 'สร้อยคอ', NULL, 'หน้าร้าน', '2021-12-14', 'A11115', NULL, NULL, NULL, 'AC0020', NULL, NULL),
('AG0036', '2.0000', 'โซ่ซีดี', '61800.00', 'สร้อยคอ', NULL, NULL, '2021-12-15', NULL, 'S0001', NULL, NULL, NULL, NULL, NULL),
('AG0037', '1.0000', 'มังกร', '32500.00', 'แหวน', '2022-01-05', 'หน้าร้าน', '2021-12-15', 'A11112', 'S0010', NULL, 'BC000004', NULL, NULL, '1111111111119'),
('AG0038', '0.5000', 'หยดน้ำ', '15400.00', 'จี้', '2021-12-23', 'หน้าร้าน', '2021-12-15', 'A11116', 'S0010', NULL, 'BC000003', NULL, NULL, '1111111111113'),
('AG0039', '0.5000', 'ปลอกมีด', '15925.00', 'แหวน', NULL, NULL, '2021-12-15', NULL, 'S0010', NULL, NULL, NULL, NULL, NULL),
('AG0040', '0.2500', 'สี่เสา', '8250.00', 'สร้อยคอ', NULL, NULL, '2021-12-18', 'A11116', NULL, NULL, NULL, NULL, '1111111111122', NULL),
('AG0041', '0.2500', 'โซ่ฝรั่ง', '8250.00', 'สร้อยมือ', NULL, NULL, '2021-12-24', 'A11118', NULL, NULL, NULL, NULL, '1111111111125', NULL),
('AG0042', '0.2500', 'ปลอกมีดทราย', '7000.00', 'สร้อยคอ', '2022-01-27', 'หน้าร้าน', '2021-12-27', 'A11114', NULL, NULL, NULL, 'AC0016', NULL, NULL),
('AG0043', '2.0000', 'ทองแท่ง', '61800.00', 'ทองแท่ง', NULL, NULL, '2021-12-30', 'A11116', NULL, NULL, NULL, NULL, '1111111111113', NULL),
('AG0044', '2.0000', 'ตาม้า', '61800.00', 'สร้อยมือ', NULL, NULL, '2022-01-01', 'A11115', NULL, NULL, NULL, NULL, '1111111111119', NULL),
('AG0045', '0.5000', 'ตุ้งติ้ง', '14000.00', 'สร้อยมือ', NULL, 'หน้าร้าน', '2022-01-04', 'A11113', NULL, NULL, NULL, 'AC0023', NULL, NULL),
('AG0046', '0.5000', 'ผ่าหวาย', '10000.00', 'สร้อยคอ', NULL, 'หน้าร้าน', '2022-01-10', 'A11112', NULL, NULL, NULL, 'AC0025', NULL, NULL),
('AG0047', '0.5000', 'ระย้าหัวใจ', '15600.00', 'สร้อยมือ', NULL, NULL, '2022-01-11', 'A11118', NULL, NULL, NULL, NULL, '1111111111131', NULL),
('AG0048', '1.0000', 'สี่เสา', '31500.00', 'สร้อยคอ', NULL, NULL, '2022-01-11', 'A11119', NULL, NULL, NULL, NULL, '1111111111119', NULL),
('AG0049', '0.5000', 'ปลอกมีดทราย', '15700.00', 'แหวน', NULL, NULL, '2022-01-11', NULL, 'S0009', NULL, NULL, NULL, NULL, NULL),
('AG0050', '0.5000', 'หยดน้ำ', '15400.00', 'จี้', '2022-01-19', 'หน้าร้าน', '2022-01-11', 'A11114', 'S0003', NULL, 'BC000006', NULL, NULL, '1111111111135'),
('AG0051', '1.0000', 'แหวนนามสกุล', '32500.00', 'แหวน', '2022-01-16', 'หน้าร้าน', '2022-01-11', 'A11112', 'S0005', NULL, 'BC000005', NULL, NULL, '1111111111124'),
('AG0052', '0.2500', 'สี่เสา', '8250.00', 'สร้อยคอ', NULL, NULL, '2022-01-11', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0053', '3.0000', 'มังกร', '91200.00', 'แหวน', '2022-02-02', 'หน้าร้าน', '2022-01-11', 'A11113', 'S0005', NULL, 'BC000007', NULL, NULL, '1111111111112'),
('AG0054', '0.2500', 'สี่เสา', '8250.00', 'สร้อยคอ', NULL, NULL, '2022-01-11', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0055', '0.2500', 'สี่เสา', '8250.00', 'สร้อยคอ', NULL, NULL, '2022-01-11', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0056', '0.2500', 'สี่เสา', '8250.00', 'สร้อยคอ', NULL, NULL, '2022-01-11', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0057', '0.5000', 'เบนซ์', '15925.00', 'สร้อยมือ', '2022-01-30', 'หน้าร้าน', '2022-01-11', 'A11118', 'S0005', NULL, NULL, NULL, NULL, '1111111111127'),
('AG0058', '0.5000', 'เบนซ์', '15925.00', 'สร้อยมือ', NULL, NULL, '2022-01-11', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0059', '3.0000', 'ผ่าหวาย', '93000.00', 'สร้อยคอ', NULL, NULL, '2022-01-11', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0060', '3.0000', 'ผ่าหวาย', '93000.00', 'สร้อยคอ', '2022-01-15', 'หน้าร้าน', '2022-01-11', 'A11117', 'S0005', NULL, NULL, NULL, NULL, '1111111111119'),
('AG0061', '0.5000', 'ปลอกมีดทราย', '15700.00', 'แหวน', NULL, NULL, '2022-01-11', NULL, 'S0009', NULL, NULL, NULL, NULL, NULL),
('AG0062', '0.5000', 'ปลอกมีดทราย', '15700.00', 'แหวน', NULL, NULL, '2022-01-11', NULL, 'S0007', NULL, NULL, NULL, NULL, NULL),
('AG0063', '3.0000', 'ผ่าหวาย', '93000.00', 'สร้อยคอ', NULL, NULL, '2022-01-11', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0064', '0.5000', 'ปลอกมีดทราย', '15700.00', 'แหวน', NULL, NULL, '2022-01-11', NULL, 'S0009', NULL, NULL, NULL, NULL, NULL),
('AG0065', '0.5000', 'ปลอกมีดทราย', '15700.00', 'แหวน', '2022-02-01', 'หน้าร้าน', '2022-01-11', 'A11119', 'S0007', NULL, NULL, NULL, NULL, '1111111111133'),
('AG0066', '0.5000', 'ปลอกมีดทราย', '15700.00', 'แหวน', NULL, NULL, '2022-01-11', NULL, 'S0007', NULL, NULL, NULL, NULL, NULL),
('AG0067', '3.0000', 'ผ่าหวาย', '93000.00', 'สร้อยคอ', NULL, NULL, '2022-01-16', 'A11115', NULL, NULL, NULL, NULL, '1111111111112', NULL),
('AG0068', '5.0000', 'โซ่แบน', '153150.00', 'สร้อยคอ', NULL, NULL, '2022-01-20', 'A11115', NULL, NULL, NULL, NULL, '1111111111116', NULL),
('AG0069', '0.5000', 'ห่วง', '15750.00', 'ต่างหู', NULL, NULL, '2022-01-24', 'A11118', NULL, NULL, NULL, NULL, '1111111111115', NULL),
('AG0070', '0.5000', 'ปลอกมีดทราย', '15700.00', 'แหวน', NULL, NULL, '2022-01-28', 'A11111', NULL, NULL, NULL, NULL, '1111111111128', NULL),
('AG0071', '1.0000', 'ซีตรอง', '31400.00', 'สร้อยคอ', '2022-02-15', 'หน้าร้าน', '2022-02-01', 'A11114', 'S0007', 'CN000001', NULL, NULL, NULL, '1111111111116'),
('AG0072', '0.2500', 'หัวใจคั่นปล้อง', '8438.00', 'สร้อยคอ', NULL, NULL, '2022-02-02', 'A11119', NULL, NULL, NULL, NULL, '1111111111115', NULL),
('AG0073', '0.1250', 'โลมา', '4479.00', 'จี้', NULL, NULL, '2022-02-06', 'A11117', NULL, NULL, NULL, NULL, '1111111111114', NULL),
('AG0074', '0.2500', 'ตาม้า', '7800.00', 'สร้อยคอ', NULL, NULL, '2022-02-10', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0075', '2.0000', 'ประคำ', '61750.00', 'สร้อยมือ', NULL, NULL, '2022-02-10', NULL, 'S0007', NULL, NULL, NULL, NULL, NULL),
('AG0076', '1.0000', 'ปลอกมีด', '31200.00', 'แหวน', NULL, NULL, '2022-02-10', NULL, 'S0007', NULL, NULL, NULL, NULL, NULL),
('AG0077', '3.0000', 'คตกิต', '92100.00', 'สร้อยคอ', NULL, NULL, '2022-02-12', NULL, 'S0002', NULL, NULL, NULL, NULL, NULL),
('AG0078', '3.0000', 'คตกิต', '92100.00', 'สร้อยคอ', NULL, NULL, '2022-02-12', NULL, 'S0002', NULL, NULL, NULL, NULL, NULL),
('AG0079', '3.0000', 'คตกิต', '92100.00', 'สร้อยคอ', '2022-02-22', 'หน้าร้าน', '2022-02-12', 'A11114', 'S0002', NULL, NULL, NULL, NULL, '1111111111118'),
('AG0080', '2.0000', 'ทาโร่', '61700.00', 'กำไล', NULL, NULL, '2022-02-12', NULL, 'S0002', NULL, NULL, NULL, NULL, NULL),
('AG0081', '2.0000', 'ทาโร่', '61700.00', 'กำไล', NULL, NULL, '2022-02-12', NULL, 'S0002', NULL, NULL, NULL, NULL, NULL),
('AG0082', '0.2500', 'ห่วง', '7800.00', 'ต่างหู', NULL, NULL, '2022-02-12', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0083', '0.2500', 'ห่วง', '7800.00', 'ต่างหู', NULL, NULL, '2022-02-12', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0084', '9.9999', 'มังกร', '311000.00', 'สร้อยคอ', '2022-02-18', 'หน้าร้าน', '2022-02-12', 'A11115', 'S0008', NULL, 'BC000008', NULL, NULL, '1111111111131'),
('AG0085', '0.2500', 'ห่วง', '7800.00', 'ต่างหู', NULL, NULL, '2022-02-12', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0086', '0.2500', 'ห่วง', '7800.00', 'ต่างหู', NULL, NULL, '2022-02-12', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0087', '1.0000', 'มังกร', '15700.00', 'แหวน', NULL, NULL, '2022-02-12', NULL, 'S0004', NULL, NULL, NULL, NULL, NULL),
('AG0088', '0.2500', 'ห่วง', '7800.00', 'ต่างหู', '2022-02-28', 'เพจร้าน', '2022-02-12', 'A11119', 'S0006', NULL, NULL, NULL, NULL, '1111111111130'),
('AG0089', '0.2500', 'ห่วง', '7800.00', 'ต่างหู', NULL, NULL, '2022-02-12', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0090', '1.0000', 'มังกร', '15700.00', 'แหวน', NULL, NULL, '2022-02-12', NULL, 'S0004', NULL, NULL, NULL, NULL, NULL),
('AG0091', '0.2500', 'ห่วง', '7800.00', 'ต่างหู', NULL, NULL, '2022-02-12', NULL, 'S0006', NULL, NULL, NULL, NULL, NULL),
('AG0092', '5.0000', 'โซ่แบน', '153150.00', 'สร้อยคอ', NULL, NULL, '2022-02-12', NULL, 'S0008', NULL, NULL, NULL, NULL, NULL),
('AG0093', '1.0000', 'มังกร', '15700.00', 'แหวน', NULL, NULL, '2022-02-12', NULL, 'S0004', NULL, NULL, NULL, NULL, NULL),
('AG0094', '5.0000', 'โซ่แบน', '153150.00', 'สร้อยคอ', NULL, NULL, '2022-02-12', NULL, 'S0008', NULL, NULL, NULL, NULL, NULL),
('AG0095', '1.0000', 'เบนซ์', '32150.00', 'สร้อยมือ', NULL, NULL, '2022-02-17', 'A11120', NULL, NULL, NULL, NULL, '1111111111122', NULL),
('AG0096', '2.0000', 'มังกร', '61800.00', 'แหวน', NULL, NULL, '2022-02-18', 'A11114', NULL, NULL, NULL, NULL, '1111111111130', NULL),
('AG0097', '0.5000', 'ปลอกมีดทราย', '15700.00', 'แหวน', NULL, NULL, '2022-02-21', 'A11113', NULL, NULL, NULL, NULL, '1111111111131', NULL),
('AG0098', '1.0000', 'โซ่แบน', '32150.00', 'สร้อยคอ', NULL, NULL, '2022-02-24', 'A11115', NULL, NULL, NULL, NULL, '1111111111116', NULL),
('AG0099', '0.2500', 'ปลอกมีด', '4200.00', 'แหวน', NULL, 'หน้าร้าน', '2022-02-26', 'A11115', NULL, NULL, NULL, 'AC0028', NULL, NULL),
('AG0100', '3.0000', 'ทองแท่ง', '93000.00', 'ทองแท่ง', NULL, NULL, '2022-02-28', 'A11116', NULL, NULL, NULL, NULL, '1111111111135', NULL),
('AG0101', '2.0000', 'โซ่ฝรั่ง', '61760.00', 'สร้อยมือ', NULL, NULL, '2022-03-12', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0102', '2.0000', 'โซ่ฝรั่ง', '61760.00', 'สร้อยมือ', NULL, NULL, '2022-03-12', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0103', '0.2500', 'หัวใจคั่นปล้อง', '8438.00', 'สร้อยคอ', NULL, NULL, '2022-03-12', NULL, 'S0008', NULL, NULL, NULL, NULL, NULL),
('AG0104', '0.2500', 'หัวใจคั่นปล้อง', '8438.00', 'สร้อยคอ', '2022-03-15', 'หน้าร้าน', '2022-03-12', 'A11116', 'S0008', 'CN000007', NULL, NULL, NULL, '1111111111114'),
('AG0105', '2.0000', 'โซ่ฝรั่ง', '61760.00', 'สร้อยมือ', NULL, NULL, '2022-03-12', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0106', '2.0000', 'โซ่ฝรั่ง', '61760.00', 'สร้อยมือ', NULL, NULL, '2022-03-12', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0107', '0.2500', 'หัวใจคั่นปล้อง', '8438.00', 'สร้อยคอ', NULL, NULL, '2022-03-12', NULL, 'S0008', NULL, NULL, NULL, NULL, NULL),
('AG0108', '2.0000', 'โซ่ฝรั่ง', '61760.00', 'สร้อยมือ', NULL, NULL, '2022-03-12', NULL, 'S0005', NULL, NULL, NULL, NULL, NULL),
('AG0109', '0.2500', 'โบว์', '7600.00', 'ต่างหู', NULL, NULL, '2022-03-12', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0110', '0.2500', 'ห่วง', '7800.00', 'ต่างหู', NULL, NULL, '2022-03-12', 'A11113', NULL, NULL, NULL, NULL, '1111111111111', NULL),
('AG0111', '0.2500', 'หัวใจคั่นปล้อง', '8438.00', 'สร้อยคอ', NULL, NULL, '2022-03-12', NULL, 'S0008', NULL, NULL, NULL, NULL, NULL),
('AG0112', '0.2500', 'โบว์', '7600.00', 'ต่างหู', NULL, NULL, '2022-03-12', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0113', '0.5000', 'ห่วง', '15750.00', 'ต่างหู', NULL, NULL, '2022-03-12', 'A11118', NULL, NULL, NULL, NULL, '1111111111114', NULL),
('AG0114', '0.2500', 'โบว์', '7600.00', 'ต่างหู', NULL, NULL, '2022-03-12', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0115', '0.5000', 'หยดน้ำ', '16000.00', 'จี้', '2022-03-16', 'หน้าร้าน', '2022-03-12', 'A11114', 'S0005', NULL, 'BC000009', NULL, NULL, '1111111111124'),
('AG0116', '1.0000', 'มังกร', '15700.00', 'แหวน', NULL, NULL, '2022-03-13', 'A11117', NULL, NULL, NULL, NULL, '1111111111118', NULL),
('AG0117', '2.0000', 'ทองแท่ง', '61800.00', 'ทองแท่ง', NULL, NULL, '2022-03-15', 'A11120', NULL, NULL, NULL, NULL, '1111111111128', NULL),
('AG0118', '3.0000', 'คั้นปล้อง', '94550.00', 'สร้อยคอ', NULL, NULL, '2022-03-18', NULL, 'S0002', NULL, NULL, NULL, NULL, NULL),
('AG0119', '9.9999', 'ทองแท่ง', '316000.00', 'ทองแท่ง', NULL, NULL, '2022-03-18', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0120', '0.5000', 'หัวใจ', '16010.00', 'ต่างหู', NULL, NULL, '2022-03-18', NULL, 'S0003', NULL, NULL, NULL, NULL, NULL),
('AG0121', '5.0000', 'โซ่ฝร้่ง', '153500.00', 'สร้อยคอ', NULL, NULL, '2022-03-18', NULL, 'S0004', NULL, NULL, NULL, NULL, NULL),
('AG0122', '1.0000', 'พิกุล', '31450.00', 'กำไล', NULL, NULL, '2022-03-18', NULL, 'S0001', NULL, NULL, NULL, NULL, NULL),
('AG0123', '3.0000', 'คตกิต', '92100.00', 'สร้อยคอ', NULL, NULL, '2022-03-19', 'A11117', NULL, NULL, NULL, NULL, '1111111111130', NULL),
('AG0124', '1.0000', 'ทองแท่ง', '32150.00', 'ทองแท่ง', NULL, NULL, '2022-03-23', 'A11113', NULL, NULL, NULL, NULL, '1111111111124', NULL),
('AG0125', '0.1250', 'โลมา', '4479.00', 'จี้', NULL, NULL, '2022-03-25', NULL, 'S0009', NULL, NULL, NULL, NULL, NULL),
('AG0126', '0.2500', 'เหลี่ยมตัดลาย', '8298.00', 'แหวน', NULL, NULL, '2022-03-25', NULL, 'S0001', NULL, NULL, NULL, NULL, NULL),
('AG0127', '0.1250', 'โลมา', '4479.00', 'จี้', NULL, NULL, '2022-03-25', NULL, 'S0009', NULL, NULL, NULL, NULL, NULL),
('AG0128', '0.2500', 'เหลี่ยมตัดลาย', '8298.00', 'แหวน', '2022-03-26', 'หน้าร้าน', '2022-03-25', 'A11112', 'S0001', NULL, NULL, NULL, NULL, '1111111111131'),
('AG0129', '0.1250', 'โลมา', '4479.00', 'จี้', NULL, NULL, '2022-03-25', NULL, 'S0009', NULL, NULL, NULL, NULL, NULL),
('AG0130', '0.2500', 'เหลี่ยมตัดลาย', '8298.00', 'แหวน', NULL, NULL, '2022-03-25', NULL, 'S0001', NULL, NULL, NULL, NULL, NULL),
('AG0131', '0.1250', 'โลมา', '4479.00', 'จี้', NULL, NULL, '2022-03-25', NULL, 'S0009', NULL, NULL, NULL, NULL, NULL),
('AG0132', '1.0000', 'แหวนนามสกุล', '32500.00', 'แหวน', '2022-04-03', 'หน้าร้าน', '2022-03-25', 'A11115', 'S0009', NULL, 'BC000010', NULL, NULL, '1111111111118'),
('AG0133', '0.1250', 'โลมา', '4479.00', 'จี้', NULL, NULL, '2022-03-25', NULL, 'S0009', NULL, NULL, NULL, NULL, NULL),
('AG0134', '1.0000', 'โซ่ฝรั่ง', '35000.00', 'สร้อยคอ', NULL, 'หน้าร้าน', '2022-03-28', 'A11114', NULL, NULL, NULL, 'AC0029', NULL, NULL),
('AG0135', '1.0000', 'แหวนลงยา', '36010.00', 'แหวน', '2022-04-02', 'หน้าร้าน', '2022-03-30', 'A11112', 'S0002', NULL, NULL, NULL, NULL, '1111111111114');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ทอง`
--
ALTER TABLE `ทอง`
  ADD PRIMARY KEY (`รหัสสินค้า`),
  ADD KEY `รหัสพนักงาน` (`รหัสพนักงาน`),
  ADD KEY `รหัสร้าน` (`รหัสร้าน`),
  ADD KEY `เลขสัญญา` (`เลขสัญญา`),
  ADD KEY `รหัสใบสั่งทำ` (`รหัสใบสั่งทำ`),
  ADD KEY `เลขที่ตั๋วขายฝาก` (`เลขที่ตั๋วขายฝาก`),
  ADD KEY `เลขบัตรประชาชน(ขายโดย)` (`เลขบัตรประชาชน(ขายโดย)`),
  ADD KEY `เลขบัตรประชาชน(ซื้อโดย)` (`เลขบัตรประชาชน(ซื้อโดย)`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ทอง`
--
ALTER TABLE `ทอง`
  ADD CONSTRAINT `ทอง_ibfk_1` FOREIGN KEY (`รหัสพนักงาน`) REFERENCES `พนักงาน` (`รหัสพนักงาน`),
  ADD CONSTRAINT `ทอง_ibfk_2` FOREIGN KEY (`รหัสร้าน`) REFERENCES `ร้านขายส่ง1` (`รหัสร้าน`),
  ADD CONSTRAINT `ทอง_ibfk_3` FOREIGN KEY (`เลขสัญญา`) REFERENCES `บัญชีออมทอง` (`เลขสัญญา`),
  ADD CONSTRAINT `ทอง_ibfk_4` FOREIGN KEY (`รหัสใบสั่งทำ`) REFERENCES `ใบสั่งทำ` (`รหัสใบสั่งทำ`),
  ADD CONSTRAINT `ทอง_ibfk_5` FOREIGN KEY (`เลขที่ตั๋วขายฝาก`) REFERENCES `การขายฝาก(จำนำ)` (`เลขที่ตั๋วขายฝาก`),
  ADD CONSTRAINT `ทอง_ibfk_6` FOREIGN KEY (`เลขบัตรประชาชน(ขายโดย)`) REFERENCES `ลูกค้า` (`เลขบัตรประชาชน`),
  ADD CONSTRAINT `ทอง_ibfk_7` FOREIGN KEY (`เลขบัตรประชาชน(ซื้อโดย)`) REFERENCES `ลูกค้า` (`เลขบัตรประชาชน`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
