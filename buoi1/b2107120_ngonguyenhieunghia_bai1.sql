-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2024 at 11:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b2107120`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietddh`
--

CREATE TABLE `chitietddh` (
  `madon` int(10) NOT NULL,
  `masp` int(10) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `chitietddh`
--

INSERT INTO `chitietddh` (`madon`, `masp`, `soluong`, `dongia`) VALUES
(1, 11, 5, 2000),
(2, 21, 2, 11700),
(3, 31, 4, 32000),
(4, 41, 6, 6000),
(5, 51, 5, 6000),
(6, 61, 2, 12000),
(7, 71, 2, 23500),
(8, 81, 7, 95000),
(9, 91, 25, 3100),
(10, 101, 4, 21000);

-- --------------------------------------------------------

--
-- Table structure for table `chitiettrangthai`
--

CREATE TABLE `chitiettrangthai` (
  `madon` int(10) NOT NULL,
  `manv` int(10) NOT NULL,
  `matrangthai` int(10) NOT NULL,
  `noidung` text NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `chitiettrangthai`
--

INSERT INTO `chitiettrangthai` (`madon`, `manv`, `matrangthai`, `noidung`, `ngaytao`) VALUES
(1, 1, 1, '', '2024-08-08'),
(2, 2, 2, '', '2024-08-08'),
(3, 3, 4, '', '2024-08-15'),
(4, 4, 3, '', '2024-08-07'),
(5, 5, 5, '', '2024-08-08'),
(6, 6, 4, '', '2024-08-10'),
(7, 7, 4, '', '2024-08-26'),
(8, 8, 3, '', '2024-08-07'),
(9, 9, 2, '', '2024-08-06'),
(10, 10, 1, '', '2024-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `madon` int(10) NOT NULL,
  `ngaydat` date NOT NULL,
  `makhach` int(10) NOT NULL,
  `manv` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`madon`, `ngaydat`, `makhach`, `manv`) VALUES
(1, '2024-08-22', 1, 2),
(2, '2024-08-22', 2, 3),
(3, '2024-08-16', 5, 3),
(4, '2024-08-07', 4, 6),
(5, '2024-08-13', 3, 8),
(6, '2024-08-14', 6, 4),
(7, '2024-08-21', 8, 8),
(8, '2024-08-21', 7, 6),
(9, '2024-08-14', 5, 4),
(10, '2024-08-08', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makhach` int(10) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makhach`, `hoten`, `diachi`, `email`, `password`) VALUES
(1, 'Nguyễn Thanh Thời', 'Cần Thơ', 'ngthanhthoi@gmail.com', '123456'),
(2, 'Dương Ánh Đông', 'Cần Thơ', 'duonganhdong@gmail.com', '654321'),
(3, 'Trần Phúc Thịnh', 'Cần Thơ', 'tranphucthinh@gmail.com', '741258'),
(4, 'Bùi Bảo Trân', 'Cần Thơ', 'buibaotran@gmail.com', '987456'),
(5, 'Nguyễn Minh Trí', 'Cần Thơ', 'nguyenminhtri@gmail.com', '987452'),
(6, 'Trần Trọng Phúc', 'Đồng Tháp', 'trantrongphuc@gmail.com', '987456'),
(7, 'Châu Minh Long', 'An Giang', 'chauminhlong@gmail.com', '632589'),
(8, 'Trần Trung Hiếu', 'Vĩnh Long', 'trantrunghieu@gmail.com', '852369'),
(9, 'Nguyễn Vân Anh', 'Thanh Hóa', 'nguyenvananh@gmail.com', '852369'),
(10, 'Lưu Tường Vy', 'Nghệ An', 'luutuongvy@gmail.com', '741256');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `maloai` int(10) NOT NULL,
  `tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`) VALUES
(1, 'Rau củ,Trái cây'),
(2, 'Thịt'),
(3, 'Gạo các loại'),
(4, 'Bia, thức uống có cồn'),
(5, 'Snack'),
(6, 'Nước ngọt'),
(7, 'Bánh kẹo các loại'),
(8, 'Nước giặt, xả'),
(9, 'Mì ăn liền'),
(10, 'Mandu, hả cảo, sủi cảo');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(10) NOT NULL,
  `hotennv` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hotennv`, `email`, `password`) VALUES
(1, 'Nguyễn Minh Kha', 'congatrongthien@gmail.com', '785412'),
(2, 'Nguyễn Phúc Gia An', 'chubosuathattinh@gmail.com', '852147'),
(3, 'Trần Mỹ Liên', 'lymacsau@gmail.com', '741258'),
(4, 'Trần Tuấn Kiệt', 'thaygiaokiet@gmail.com', '963258'),
(5, 'Giang Nguyên Anh', 'tonngokhong@gmail.com', '521478'),
(6, 'Trịnh Trung Thành', 'acquylienquan@gmail.com', '963258'),
(7, 'Ngô Thành Phước', 'trungdetotnghiep@gmail.com', '852369'),
(8, 'Trịnh Thanh Vân', 'thanhvanlathanhvannhe@gmail.com', '999999'),
(9, 'Tạ Công Thủ', 'attackbutdefend@gmail.com', '888521'),
(10, 'Trần Ngọc Các Tiên', 'huasegiamcan@gmail.com', '147896');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(10) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `dongia` int(11) NOT NULL,
  `mota` text NOT NULL,
  `link_hinh` text NOT NULL,
  `maloai` int(11) NOT NULL,
  `ngaythem` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `dongia`, `mota`, `link_hinh`, `maloai`, `ngaythem`) VALUES
(11, 'Rau dền', 2000, 'Rau dền', '', 1, '2024-08-22'),
(21, 'Chân giò heo nhập khảo', 11700, 'Thịt heo', '', 2, '2024-08-22'),
(31, 'Gạo st25', 32000, 'Gạo ST25', '', 3, '2024-08-22'),
(41, 'Bia sài gòn', 300000, 'Bia sài gòn 24 lon', '', 4, '2024-08-22'),
(51, 'Snack khoai tay lays', 6000, 'Snack khoai tây', '', 5, '2024-08-22'),
(61, 'Sting', 12000, 'Nước tăng lực sting', '', 6, '2024-08-22'),
(71, 'Bánh bông lan solite', 23500, 'Hộp 4 bánh bông lan solite', '', 7, '2024-08-22'),
(81, 'Nước giặt surf hương nước hoa túi 3.1kg', 95000, 'Nước giặt surf hương nước hoa túi 3.1kg', '', 8, '2024-08-22'),
(91, 'Mì hảo hảo', 3100, 'Mì ăn liền hảo hảo tôm chua cay', '', 9, '2024-08-22'),
(101, 'Bánh xếp hải sản bibigo 175g', 21000, 'Bánh xếp hải sản bibigo 175g', '', 10, '2024-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `matrangthai` int(10) NOT NULL,
  `tentrangthai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`matrangthai`, `tentrangthai`) VALUES
(1, 'Đã thành công'),
(2, 'Đang vận chuyển'),
(3, 'Đang xuất kho'),
(4, 'Đang chờ xác nhận'),
(5, 'Đã bị hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietddh`
--
ALTER TABLE `chitietddh`
  ADD PRIMARY KEY (`madon`),
  ADD KEY `masp` (`masp`);

--
-- Indexes for table `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  ADD PRIMARY KEY (`madon`),
  ADD KEY `manv` (`manv`),
  ADD KEY `matrangthai` (`matrangthai`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`madon`),
  ADD KEY `makhach` (`makhach`),
  ADD KEY `manv` (`manv`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhach`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `maloai` (`maloai`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`matrangthai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietddh`
--
ALTER TABLE `chitietddh`
  ADD CONSTRAINT `chitietddh_ibfk_1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `chitietddh_ibfk_2` FOREIGN KEY (`madon`) REFERENCES `dondathang` (`madon`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  ADD CONSTRAINT `chitiettrangthai_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `chitiettrangthai_ibfk_2` FOREIGN KEY (`matrangthai`) REFERENCES `trangthai` (`matrangthai`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`makhach`) REFERENCES `khachhang` (`makhach`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loaisp` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
