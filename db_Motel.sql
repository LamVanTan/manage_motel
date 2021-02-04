-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 02, 2021 lúc 04:42 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_Motel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChiTietThuePhong`
--

CREATE TABLE `ChiTietThuePhong` (
  `id_order_detail` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ChiTietThuePhong`
--

INSERT INTO `ChiTietThuePhong` (`id_order_detail`, `id_order`, `id_service`) VALUES
(101, 18, 18),
(102, 18, 19),
(103, 18, 20),
(104, 18, 21),
(105, 19, 18),
(106, 19, 19),
(107, 19, 20),
(108, 19, 21),
(109, 20, 18),
(110, 20, 19),
(111, 20, 20),
(112, 20, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DonGiaUngDung`
--

CREATE TABLE `DonGiaUngDung` (
  `id_dongia` int(11) NOT NULL,
  `giaTien` int(11) NOT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `DonGiaUngDung`
--

INSERT INTO `DonGiaUngDung` (`id_dongia`, `giaTien`, `trangthai`) VALUES
(1, 199000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhAnh`
--

CREATE TABLE `hinhAnh` (
  `id_images` int(11) NOT NULL,
  `name_images` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_room` int(11) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `idAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhAnh`
--

INSERT INTO `hinhAnh` (`id_images`, `name_images`, `id_room`, `id_customer`, `idAdmin`) VALUES
(84, 'motel-16118331930.jpg', 21, NULL, NULL),
(85, 'motel-16118331931.jpg', 21, NULL, NULL),
(86, 'motel-16118331932.png', 21, NULL, NULL),
(87, 'motel-16118332460.png', 22, NULL, NULL),
(88, 'motel-16118332461.jpg', 22, NULL, NULL),
(89, 'motel-16118332462.jpg', 22, NULL, NULL),
(90, 'motel-16118332980.jpg', 23, NULL, NULL),
(91, 'motel-16118332981.png', 23, NULL, NULL),
(92, 'motel-16118332982.jpg', 23, NULL, NULL),
(93, 'motel-16118333810.jpg', 24, NULL, NULL),
(94, 'motel-16118333811.png', 24, NULL, NULL),
(95, 'motel-16118333812.jpg', 24, NULL, NULL),
(96, 'motel-16118906680.jpg', 25, NULL, NULL),
(97, 'motel-16118906681.jpg', 25, NULL, NULL),
(98, 'motel-16118906682.png', 25, NULL, NULL),
(99, 'motel-16118931720.jpg', 26, NULL, NULL),
(100, 'motel-16118931721.png', 26, NULL, NULL),
(101, 'motel-16118931722.jpg', 26, NULL, NULL),
(102, 'motel-16118934980.jpg', 27, NULL, NULL),
(103, 'motel-16118934981.jpeg', 27, NULL, NULL),
(104, 'motel-16118934982.jpg', 27, NULL, NULL),
(105, 'motel-16118937710.jpg', 28, NULL, NULL),
(106, 'motel-16118937711.jpg', 28, NULL, NULL),
(107, 'motel-16118937712.jpg', 28, NULL, NULL),
(108, 'motel-16119374650.jpg', 29, NULL, NULL),
(109, 'motel-16119374651.png', 29, NULL, NULL),
(110, 'motel-16119374652.jpg', 29, NULL, NULL),
(111, 'motel-16119374653.jpg', 29, NULL, NULL),
(112, 'motel-16119374654.png', 29, NULL, NULL),
(113, 'motel-16119374655.jpg', 29, NULL, NULL),
(114, 'motel-16119375340.jpg', 30, NULL, NULL),
(115, 'motel-16119375341.jpg', 30, NULL, NULL),
(116, 'motel-16119375342.jpg', 30, NULL, NULL),
(117, 'motel-16119375343.jpeg', 30, NULL, NULL),
(118, 'motel-16119375344.jpg', 30, NULL, NULL),
(119, 'motel-16119375345.jpg', 30, NULL, NULL),
(120, 'motel-16119378530.jpg', 31, NULL, NULL),
(121, 'motel-16119378531.jpg', 31, NULL, NULL),
(122, 'motel-16119378532.png', 31, NULL, NULL),
(123, 'motel-16119378533.jpg', 31, NULL, NULL),
(124, 'motel-16119378534.png', 31, NULL, NULL),
(125, 'motel-16119378535.jpg', 31, NULL, NULL),
(126, 'motel-16119378860.jpg', 32, NULL, NULL),
(127, 'motel-16119378861.jpg', 32, NULL, NULL),
(128, 'motel-16119378862.png', 32, NULL, NULL),
(129, 'motel-16119378863.jpg', 32, NULL, NULL),
(130, 'motel-16119378864.png', 32, NULL, NULL),
(131, 'motel-16119378865.jpg', 32, NULL, NULL),
(132, 'motel-16119388850.jpg', 33, NULL, NULL),
(133, 'motel-16119388851.jpg', 33, NULL, NULL),
(134, 'motel-16119388852.png', 33, NULL, NULL),
(135, 'motel-16119388853.jpg', 33, NULL, NULL),
(136, 'motel-16119389510.jpg', 34, NULL, NULL),
(137, 'motel-16119389511.jpg', 34, NULL, NULL),
(138, 'motel-16119389512.png', 34, NULL, NULL),
(139, 'motel-16119389513.jpg', 34, NULL, NULL),
(140, 'motel-16119390180.jpg', 35, NULL, NULL),
(141, 'motel-16119390181.jpg', 35, NULL, NULL),
(142, 'motel-16119390182.png', 35, NULL, NULL),
(145, 'motel-16119410890.jpg', NULL, 46, NULL),
(146, 'motel-16119410891.jpg', NULL, 46, NULL),
(147, 'motel-16122757550.jpg', 36, NULL, NULL),
(148, 'motel-16122757551.jpg', 36, NULL, NULL),
(149, 'motel-16122757552.jpeg', 36, NULL, NULL),
(150, 'motel-16122761220.jpg', NULL, 48, NULL),
(151, 'motel-16122761221.jpg', NULL, 48, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachHang`
--

CREATE TABLE `khachHang` (
  `id_customer` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `identity_number` int(11) NOT NULL,
  `Id_user` int(11) DEFAULT NULL,
  `ngayCap` date NOT NULL,
  `noiCap` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachHang`
--

INSERT INTO `khachHang` (`id_customer`, `fullname`, `address`, `phone`, `birthday`, `gender`, `identity_number`, `Id_user`, `ngayCap`, `noiCap`, `email`, `MaTaiKhoan`) VALUES
(46, 'Lâm Văn Tân', 'Thôn Thái Sơn, Xã Điện Tiến, Huyện Điện Bàn, Tỉnh Quảng Nam', '0792219129', '2000-01-29', 1, 206303170, NULL, '2016-01-29', 'Công An Quảng Nam', 'lvtan.18i@cit.udn', 44),
(47, 'Lê Nguyễn Thịnh', 'Thôn Thái Sơn, Xã Điện Tiến, Huyện Điện Bàn, Quang Nam', '0909372941', '2000-02-22', 1, 292929292, NULL, '2021-02-22', 'Công An Quảng Nam', 'lamvantan03@gmail.com', 44),
(48, 'Lê Minh Lâm', 'Thôn Thái Sơn, Xã Điện Tiến, Huyện Điện Bàn, Tỉnh Quảng Nam', '0792219129', '2000-01-20', 1, 202303170, NULL, '2014-01-20', 'Công An Quảng Nam', 'lvtan.18i@cit.udn', 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `LoaiPhong`
--

CREATE TABLE `LoaiPhong` (
  `id_roomtype` int(11) NOT NULL,
  `name_roomtype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_roomtype` tinyint(4) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `LoaiPhong`
--

INSERT INTO `LoaiPhong` (`id_roomtype`, `name_roomtype`, `status_roomtype`, `MaTaiKhoan`) VALUES
(7, 'Full nội thất', 1, 43),
(8, 'Vip', 1, 43),
(9, 'Full nội thất', 1, 44),
(10, 'Nội thất cơ bản', 1, 44),
(11, 'Full nội thất', 1, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Phong`
--

CREATE TABLE `Phong` (
  `id_room` int(11) NOT NULL,
  `name_room` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_room` float NOT NULL,
  `area_room` int(5) NOT NULL,
  `person_quantity` int(3) NOT NULL,
  `id_floor` int(11) UNSIGNED NOT NULL,
  `id_roomtype` int(11) NOT NULL,
  `status_room` tinyint(4) NOT NULL,
  `detail_room` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_room` tinyint(4) NOT NULL,
  `price_last` int(11) DEFAULT NULL,
  `chiSoDienBanDau` int(11) DEFAULT NULL,
  `chiSoNuocBanDau` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `PinRooms` tinyint(4) NOT NULL,
  `ngayHetHanPin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Phong`
--

INSERT INTO `Phong` (`id_room`, `name_room`, `price_room`, `area_room`, `person_quantity`, `id_floor`, `id_roomtype`, `status_room`, `detail_room`, `condition_room`, `price_last`, `chiSoDienBanDau`, `chiSoNuocBanDau`, `MaTaiKhoan`, `PinRooms`, `ngayHetHanPin`) VALUES
(21, 'A02', 1500000, 20, 2, 14, 7, 1, 'edrrr', 0, 1600000, 0, 0, 43, 2, '2021-02-01 04:16:24'),
(22, 'A03', 2000000, 23, 2, 14, 8, 1, 'egej', 0, 2000000, 0, 0, 43, 2, '2021-02-01 04:16:26'),
(23, 'A04', 2500000, 25, 3, 14, 8, 1, 'ưerr', 0, 2500000, 0, 0, 43, 2, '2021-02-01 04:16:39'),
(24, 'A05', 2500000, 25, 3, 14, 8, 1, 'ưewf', 0, 2500000, 0, 0, 43, 1, '2021-02-05 13:40:40'),
(25, 'B01', 1700000, 23, 3, 15, 7, 1, 'phòng đẹp thoáng mát, Địa chỉ thuê phòng gần các trường đại học và bệnh viện xung quanh có các tiệm tiện lợi thuận tiên cho khách hàng mua sắm..', 0, 1700000, 0, 0, 43, 1, '2021-02-05 13:39:09'),
(26, 'B02', 2500000, 25, 3, 15, 7, 1, 'phòng thoangs mát, khu ở hợp vệ sinh, an ninh cao, gần các trường học, bệnh viện..', 0, 2500000, 0, 0, 43, 1, '2021-02-05 13:39:06'),
(27, 'B03', 2500000, 25, 3, 15, 7, 1, 'phòng đẹp thoáng mát, an ninh cao', 0, 2500000, 0, 0, 43, 1, '2021-02-05 13:38:59'),
(28, 'B04', 2500000, 25, 3, 15, 7, 1, 'phòng đệp thoáng mát', 0, 2500000, 0, 0, 43, 1, '2021-02-05 13:38:49'),
(29, 'A1', 2000000, 20, 2, 17, 10, 1, 'phòng thoáng mát, tiện nghi, giờ gấc thoải mái.', 1, 2000000, 150, 150, 44, 0, NULL),
(30, 'A2', 2000000, 20, 2, 17, 10, 1, 'phòng thoáng mát, tiện nghi,', 1, 2000000, 0, 0, 44, 0, NULL),
(31, 'A3', 2000000, 20, 2, 17, 10, 1, 'phòng đẹp thoáng maát', 0, 2000000, 0, 0, 44, 2, '2021-02-01 16:50:24'),
(32, 'A4', 2000000, 20, 2, 17, 10, 1, 'phòng đẹp thoáng maát', 0, 2000000, 0, 0, 44, 2, '2021-02-01 16:52:42'),
(33, 'A5', 2500000, 23, 2, 17, 9, 1, 'phòng thoáng mát, rộng rãi, an ninh cao...', 0, 2500000, 0, 0, 44, 0, NULL),
(34, 'B1', 2300000, 20, 2, 18, 10, 1, 'phòng đẹp thoáng mát...', 0, 2300000, 0, 0, 44, 1, '2021-02-05 13:41:14'),
(35, 'B2', 2500000, 20, 2, 18, 10, 1, 'phòng thoáng mát tiện nghi...', 1, 2500000, 100, 40, 44, 1, '2021-02-01 16:53:15'),
(36, 'A1', 2500000, 20, 2, 21, 11, 1, 'phòng thoáng mát, gần các trường học và các bệnh viện', 0, 2500000, 0, 0, 46, 1, '2021-02-05 14:24:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TaiKhoan`
--

CREATE TABLE `TaiKhoan` (
  `idAdmin` int(11) NOT NULL,
  `tenDayDu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` tinyint(4) NOT NULL,
  `idUser` int(11) NOT NULL,
  `diaChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `TaiKhoan`
--

INSERT INTO `TaiKhoan` (`idAdmin`, `tenDayDu`, `SDT`, `gioiTinh`, `idUser`, `diaChi`) VALUES
(42, 'lâm văn tân', '0792219129', 1, 43, 'Hoà Tiến, Huyện Hoà Vang, Thành Phố Đà Nẵng'),
(43, 'Lê Thanh Tiến', '0909372941', 1, 44, 'Thôn thái sơn, Điện Tiến, Điện Bàn, Quảng Nam'),
(44, 'Lâm Văn Bình', '0909372941', 1, 46, 'Thôn Thái Sơn, Điện Tiến, Điện Bàn, Quảng Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Tang`
--

CREATE TABLE `Tang` (
  `id_floor` int(11) UNSIGNED NOT NULL,
  `name_floor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_floor` tinyint(4) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Tang`
--

INSERT INTO `Tang` (`id_floor`, `name_floor`, `status_floor`, `MaTaiKhoan`) VALUES
(14, 'Tầng 1', 1, 43),
(15, 'Tầng 2', 1, 43),
(16, 'Tầng 3', 1, 43),
(17, 'Tầng 1', 1, 44),
(18, 'Tầng 2', 1, 44),
(19, 'Tầng 3', 1, 44),
(20, 'Tầng 4', 1, 44),
(21, 'Tầng 1', 1, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoandiennuoc`
--

CREATE TABLE `thanhtoandiennuoc` (
  `idThanhToan` int(11) NOT NULL,
  `idThuePhong` int(11) NOT NULL,
  `soDienCu` int(11) NOT NULL,
  `soDienHienTai` int(11) NOT NULL,
  `tongTienDien` float NOT NULL,
  `soNuocCu` int(11) NOT NULL,
  `soNuocHienTai` int(11) NOT NULL,
  `tongTienNuoc` float NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `nguoiNhan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhTrang` tinyint(4) NOT NULL,
  `ngayThanhToan` datetime NOT NULL,
  `tongTienThanhToan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoandiennuoc`
--

INSERT INTO `thanhtoandiennuoc` (`idThanhToan`, `idThuePhong`, `soDienCu`, `soDienHienTai`, `tongTienDien`, `soNuocCu`, `soNuocHienTai`, `tongTienNuoc`, `idAdmin`, `nguoiNhan`, `tinhTrang`, `ngayThanhToan`, `tongTienThanhToan`) VALUES
(66, 19, 100, 150, 200000, 123, 150, 121500, 44, 'Nhân viên điện nước', 1, '2021-02-01 10:47:06', 321500),
(67, 18, 0, 100, 400000, 0, 40, 180000, 44, 'Nhân viên điện nước', 1, '2021-02-01 11:03:17', 580000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoanphong`
--

CREATE TABLE `thanhtoanphong` (
  `idThanhToan` int(11) NOT NULL,
  `idThuePhong` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `ngayThanhToan` date NOT NULL,
  `tinhTrang` tinyint(4) NOT NULL,
  `soTienTra` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoanphong`
--

INSERT INTO `thanhtoanphong` (`idThanhToan`, `idThuePhong`, `idAdmin`, `ngayThanhToan`, `tinhTrang`, `soTienTra`) VALUES
(26, 19, 44, '2021-02-01', 1, 4000000),
(27, 18, 44, '2020-01-01', 1, 2500000),
(28, 20, 44, '2021-02-02', 1, 2000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ThietBi`
--

CREATE TABLE `ThietBi` (
  `id_service` int(11) NOT NULL,
  `name_service` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_service` float NOT NULL,
  `status_service` tinyint(4) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ThietBi`
--

INSERT INTO `ThietBi` (`id_service`, `name_service`, `price_service`, `status_service`, `MaTaiKhoan`) VALUES
(13, 'Điện', 35000, 1, 43),
(14, 'Nước', 3000, 1, 43),
(15, 'Wifi', 0, 1, 43),
(16, 'Bếp ga', 100000, 1, 43),
(17, 'Điều hoà', 200000, 1, 43),
(18, 'Điện', 4000, 1, 44),
(19, 'Nước', 4500, 1, 44),
(20, 'Wifi', 0, 1, 44),
(21, 'Bếp ga', 120000, 1, 44),
(22, 'Điều hoà', 200000, 1, 44),
(23, 'Máy nước nóng', 200000, 1, 44),
(24, 'Nước', 3500, 1, 46),
(25, 'Điện', 4000, 1, 46),
(26, 'Bếp ga', 100000, 1, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ThietBi_Phong`
--

CREATE TABLE `ThietBi_Phong` (
  `Id` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `status_service_room` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ThietBi_Phong`
--

INSERT INTO `ThietBi_Phong` (`Id`, `id_service`, `id_room`, `status_service_room`) VALUES
(1042, 13, 23, 1),
(1043, 14, 23, 1),
(1044, 15, 23, 1),
(1045, 16, 23, 1),
(1046, 17, 23, 1),
(1047, 13, 24, 1),
(1048, 14, 24, 1),
(1049, 15, 24, 1),
(1050, 16, 24, 1),
(1051, 17, 24, 1),
(1102, 13, 25, 1),
(1103, 14, 25, 1),
(1104, 15, 25, 1),
(1105, 16, 25, 1),
(1106, 17, 25, 1),
(1121, 13, 22, 1),
(1122, 14, 22, 1),
(1123, 15, 22, 1),
(1124, 16, 22, 1),
(1130, 13, 21, 1),
(1131, 14, 21, 1),
(1132, 15, 21, 1),
(1133, 16, 21, 1),
(1134, 13, 26, 1),
(1135, 14, 26, 1),
(1136, 15, 26, 1),
(1137, 16, 26, 1),
(1138, 17, 26, 1),
(1139, 13, 27, 1),
(1140, 14, 27, 1),
(1141, 15, 27, 1),
(1142, 16, 27, 1),
(1143, 17, 27, 1),
(1144, 13, 28, 1),
(1145, 14, 28, 1),
(1146, 15, 28, 1),
(1147, 16, 28, 1),
(1148, 17, 28, 1),
(1149, 18, 29, 1),
(1150, 19, 29, 1),
(1151, 20, 29, 1),
(1152, 21, 29, 1),
(1157, 18, 31, 1),
(1158, 19, 31, 1),
(1159, 20, 31, 1),
(1160, 21, 31, 1),
(1165, 18, 32, 1),
(1166, 19, 32, 1),
(1167, 20, 32, 1),
(1168, 21, 32, 1),
(1169, 18, 33, 1),
(1170, 19, 33, 1),
(1171, 20, 33, 1),
(1172, 21, 33, 1),
(1173, 22, 33, 1),
(1174, 23, 33, 1),
(1175, 18, 34, 1),
(1176, 19, 34, 1),
(1177, 20, 34, 1),
(1178, 21, 34, 1),
(1179, 18, 35, 1),
(1180, 19, 35, 1),
(1181, 20, 35, 1),
(1182, 21, 35, 1),
(1183, 24, 36, 1),
(1184, 25, 36, 1),
(1185, 26, 36, 1),
(1191, 18, 30, 1),
(1192, 19, 30, 1),
(1193, 20, 30, 1),
(1194, 21, 30, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ThuePhong`
--

CREATE TABLE `ThuePhong` (
  `id_order` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `deposits` int(11) NOT NULL,
  `money_last` int(11) NOT NULL,
  `price_room` int(11) NOT NULL,
  `trangThaiDonThue` tinyint(4) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ThuePhong`
--

INSERT INTO `ThuePhong` (`id_order`, `date_start`, `date_end`, `id_room`, `id_customer`, `deposits`, `money_last`, `price_room`, `trangThaiDonThue`, `MaTaiKhoan`) VALUES
(18, '2021-01-30', '2021-03-02', 35, 46, 0, 2500000, 2500000, 1, 44),
(19, '2021-01-30', '2021-03-30', 29, 47, 0, 4000000, 4000000, 1, 44),
(20, '2021-02-02', '2021-03-02', 30, 48, 0, 2000000, 2000000, 1, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TienSuDungWebsite`
--

CREATE TABLE `TienSuDungWebsite` (
  `id` int(11) NOT NULL,
  `soDuTaiKhoan` int(11) NOT NULL,
  `ngayNap` datetime NOT NULL,
  `id_user` int(11) NOT NULL,
  `soTienNap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `TienSuDungWebsite`
--

INSERT INTO `TienSuDungWebsite` (`id`, `soDuTaiKhoan`, `ngayNap`, `id_user`, `soTienNap`) VALUES
(5, 1010000, '2021-01-28 18:33:20', 43, 1035000),
(6, 930000, '2021-01-29 23:15:19', 44, 1335000),
(7, 95000, '2021-02-02 21:24:09', 46, 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` tinyint(4) NOT NULL,
  `ngayBatDau` datetime DEFAULT NULL,
  `ngayKetThuc` datetime DEFAULT NULL,
  `priceApp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `User`
--

INSERT INTO `User` (`id`, `email`, `password`, `permission`, `ngayBatDau`, `ngayKetThuc`, `priceApp`) VALUES
(43, 'lvtan.18i@cit.udn', '$2y$10$ngWU/7HwYAoZ8AVjfzX5Veq9LxmDXKvnOV1a1JrKaijmuuvbUi2sq', 1, '2021-01-28 18:16:03', '2021-10-28 18:16:03', 1791000),
(44, 'lamvantan03@gmail.com', '$2y$10$ANk5tTYlXbaDHG4Vy0jFc.wn/A2nr28LTrg8xFnR5Sn6zlwWvEQL2', 1, '2021-01-29 11:24:06', '2022-01-29 11:24:06', 2388000),
(45, 'kin2912000@gmail.com', '$2y$10$Jr36KdH3DGJGXt7w8x67l.eVT0VLFPXCkCcKLQnd3fYfGukvKGIKu', 2, NULL, NULL, NULL),
(46, 'lamvanbinh2003@gmail.com', '$2y$10$t13t4uHkCC6DezzSC78NUunnsBMMxxqHI1W1oHlFYQlAacKIlgGs.', 1, '2021-02-02 21:19:06', '2022-02-02 21:19:06', 2388000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ChiTietThuePhong`
--
ALTER TABLE `ChiTietThuePhong`
  ADD PRIMARY KEY (`id_order_detail`),
  ADD KEY `pk_orderdetail_service` (`id_service`),
  ADD KEY `pk_orderdetail_order` (`id_order`);

--
-- Chỉ mục cho bảng `DonGiaUngDung`
--
ALTER TABLE `DonGiaUngDung`
  ADD PRIMARY KEY (`id_dongia`);

--
-- Chỉ mục cho bảng `hinhAnh`
--
ALTER TABLE `hinhAnh`
  ADD PRIMARY KEY (`id_images`),
  ADD KEY `pk_room_img` (`id_room`),
  ADD KEY `pk_customer_img` (`id_customer`),
  ADD KEY `pk_admin_img` (`idAdmin`);

--
-- Chỉ mục cho bảng `khachHang`
--
ALTER TABLE `khachHang`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `user_pk` (`Id_user`),
  ADD KEY `pk_user_customer` (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  ADD PRIMARY KEY (`id_roomtype`),
  ADD KEY `pk_user_roomtype` (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `Phong`
--
ALTER TABLE `Phong`
  ADD PRIMARY KEY (`id_room`),
  ADD KEY `pk_floor_room` (`id_floor`),
  ADD KEY `pk_roomtype_room` (`id_roomtype`),
  ADD KEY `pk_user_room` (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD PRIMARY KEY (`idAdmin`),
  ADD KEY `pk_user_admin` (`idUser`);

--
-- Chỉ mục cho bảng `Tang`
--
ALTER TABLE `Tang`
  ADD PRIMARY KEY (`id_floor`),
  ADD KEY `pk_user_floor` (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `thanhtoandiennuoc`
--
ALTER TABLE `thanhtoandiennuoc`
  ADD PRIMARY KEY (`idThanhToan`),
  ADD KEY `pk_thanh toan` (`idAdmin`),
  ADD KEY `pk_thanhtoan_1` (`idThuePhong`);

--
-- Chỉ mục cho bảng `thanhtoanphong`
--
ALTER TABLE `thanhtoanphong`
  ADD PRIMARY KEY (`idThanhToan`),
  ADD KEY `pk_thuephong` (`idThuePhong`);

--
-- Chỉ mục cho bảng `ThietBi`
--
ALTER TABLE `ThietBi`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `pk_user_service` (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `ThietBi_Phong`
--
ALTER TABLE `ThietBi_Phong`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `pk_service` (`id_service`),
  ADD KEY `pk_room` (`id_room`);

--
-- Chỉ mục cho bảng `ThuePhong`
--
ALTER TABLE `ThuePhong`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `pk_order_room` (`id_room`),
  ADD KEY `pk_order_customer` (`id_customer`),
  ADD KEY `pk_user_order` (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `TienSuDungWebsite`
--
ALTER TABLE `TienSuDungWebsite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_tiensudungwebsite` (`id_user`);

--
-- Chỉ mục cho bảng `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ChiTietThuePhong`
--
ALTER TABLE `ChiTietThuePhong`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `DonGiaUngDung`
--
ALTER TABLE `DonGiaUngDung`
  MODIFY `id_dongia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hinhAnh`
--
ALTER TABLE `hinhAnh`
  MODIFY `id_images` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `khachHang`
--
ALTER TABLE `khachHang`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  MODIFY `id_roomtype` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `Phong`
--
ALTER TABLE `Phong`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `Tang`
--
ALTER TABLE `Tang`
  MODIFY `id_floor` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `thanhtoandiennuoc`
--
ALTER TABLE `thanhtoandiennuoc`
  MODIFY `idThanhToan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `thanhtoanphong`
--
ALTER TABLE `thanhtoanphong`
  MODIFY `idThanhToan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `ThietBi`
--
ALTER TABLE `ThietBi`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `ThietBi_Phong`
--
ALTER TABLE `ThietBi_Phong`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1195;

--
-- AUTO_INCREMENT cho bảng `ThuePhong`
--
ALTER TABLE `ThuePhong`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `TienSuDungWebsite`
--
ALTER TABLE `TienSuDungWebsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ChiTietThuePhong`
--
ALTER TABLE `ChiTietThuePhong`
  ADD CONSTRAINT `pk_orderdetail_order` FOREIGN KEY (`id_order`) REFERENCES `ThuePhong` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_orderdetail_service` FOREIGN KEY (`id_service`) REFERENCES `thietbi` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hinhAnh`
--
ALTER TABLE `hinhAnh`
  ADD CONSTRAINT `pk_admin_img` FOREIGN KEY (`idAdmin`) REFERENCES `taikhoan` (`idAdmin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_customer_img` FOREIGN KEY (`id_customer`) REFERENCES `khachhang` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_room_img` FOREIGN KEY (`id_room`) REFERENCES `phong` (`id_room`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `khachHang`
--
ALTER TABLE `khachHang`
  ADD CONSTRAINT `pk_user_customer` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_pk` FOREIGN KEY (`Id_user`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `LoaiPhong`
--
ALTER TABLE `LoaiPhong`
  ADD CONSTRAINT `pk_user_roomtype` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `Phong`
--
ALTER TABLE `Phong`
  ADD CONSTRAINT `pk_floor_room` FOREIGN KEY (`id_floor`) REFERENCES `tang` (`id_floor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_roomtype_room` FOREIGN KEY (`id_roomtype`) REFERENCES `loaiphong` (`id_roomtype`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_user_room` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD CONSTRAINT `pk_user_admin` FOREIGN KEY (`idUser`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `Tang`
--
ALTER TABLE `Tang`
  ADD CONSTRAINT `pk_user_floor` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thanhtoandiennuoc`
--
ALTER TABLE `thanhtoandiennuoc`
  ADD CONSTRAINT `pk_thanhtoan_1` FOREIGN KEY (`idThuePhong`) REFERENCES `ThuePhong` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thanhtoanphong`
--
ALTER TABLE `thanhtoanphong`
  ADD CONSTRAINT `pk_thuephong` FOREIGN KEY (`idThuePhong`) REFERENCES `ThuePhong` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ThietBi`
--
ALTER TABLE `ThietBi`
  ADD CONSTRAINT `pk_user_service` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ThietBi_Phong`
--
ALTER TABLE `ThietBi_Phong`
  ADD CONSTRAINT `pk_room` FOREIGN KEY (`id_room`) REFERENCES `phong` (`id_room`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_service` FOREIGN KEY (`id_service`) REFERENCES `thietbi` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ThuePhong`
--
ALTER TABLE `ThuePhong`
  ADD CONSTRAINT `pk_order_customer` FOREIGN KEY (`id_customer`) REFERENCES `khachhang` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_order_room` FOREIGN KEY (`id_room`) REFERENCES `phong` (`id_room`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_user_order` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `TienSuDungWebsite`
--
ALTER TABLE `TienSuDungWebsite`
  ADD CONSTRAINT `pk_tiensudungwebsite` FOREIGN KEY (`id_user`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
