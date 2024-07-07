-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2023 lúc 04:28 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id_bill` int(11) NOT NULL,
  `id_phanmem` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id_bill`, `id_phanmem`, `id_user`, `date`) VALUES
(1, 1, 2, 'a'),
(2, 1, 1, ''),
(3, 1, 1, '03:37:33am  24/11/2023'),
(4, 1, 1, '05:10:43am  24/11/2023'),
(5, 1, 1, '05:12:13am  24/11/2023'),
(6, 1, 1, '05:13:34am  24/11/2023'),
(7, 1, 1, '05:14:19am  24/11/2023'),
(8, 2, 1, '03:25:59am  25/11/2023'),
(9, 1, 1, '03:30:48am  25/11/2023'),
(10, 1, 1, '03:32:15am  25/11/2023'),
(11, 11, 2, '03:43:43am  25/11/2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten_danhmuc`, `img`) VALUES
(1, '     Tool Facebook', '../upload/danhmuc/3.jpg'),
(2, '  Tool Youtube', '../upload/danhmuc/4.jpg'),
(10, '   Tool Shoppe', '../upload/danhmuc/1.jpg'),
(12, ' Tool Zalo', '../upload/danhmuc/3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_nap`
--

CREATE TABLE `history_nap` (
  `id_nap` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `des_nap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `history_nap`
--

INSERT INTO `history_nap` (`id_nap`, `id_user`, `des_nap`) VALUES
(1, 1, 'Đã Nạp 500000 VND'),
(2, 1, 'Đã Nạp 1000000 VND'),
(3, 1, 'Đã Nạp 500000 VND'),
(4, 1, 'Đã Nạp 500000 VND'),
(5, 2, 'Đã Nạp 10000000 VND');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhang`
--

CREATE TABLE `nganhang` (
  `id_nganhang` int(11) NOT NULL,
  `ten_nganhang` varchar(255) NOT NULL,
  `taikhoan_nganhang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nganhang`
--

INSERT INTO `nganhang` (`id_nganhang`, `ten_nganhang`, `taikhoan_nganhang`) VALUES
(1, '   MB Bank', '   211220042112');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanmem`
--

CREATE TABLE `phanmem` (
  `id_phanmem` int(11) NOT NULL,
  `ten_phanmem` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `des` varchar(10000) DEFAULT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phanmem`
--

INSERT INTO `phanmem` (`id_phanmem`, `ten_phanmem`, `img`, `price`, `link`, `des`, `id_danhmuc`) VALUES
(1, '    tool facebook', '../upload/3.jpg', 500000, '    bvdj', 'Dòng 1\r\nDòng 2\r\nD\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nòng 3', 1),
(2, '   tool zalo', '../upload/phanmem3.jpg', 780000, '   dhfh', '', 2),
(3, '     tool youtube', '../upload/phanmem2.jpg', 4320000, '     xxnbuk', 'ogj', 1),
(10, 'Tool shoppe', '../upload/1.jpg', 10000000, ' bvd', 'csc', 2),
(11, 'xc', '../upload/phanmem/3.jpg', 10000000, 'àgfcz ', 'dasd', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `ten_user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `ten_user`, `pass`, `email`, `money`, `total_money`, `role`) VALUES
(1, 'mintam', '123456', '', 220000, 720000, 1),
(2, 'hothingoc', '123456', '', 0, 10000000, 0),
(3, 'admin', '123456 ', 'admin@gmail.com', 0, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `lk_user` (`id_user`),
  ADD KEY `lk_phanmem` (`id_phanmem`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `history_nap`
--
ALTER TABLE `history_nap`
  ADD PRIMARY KEY (`id_nap`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `nganhang`
--
ALTER TABLE `nganhang`
  ADD PRIMARY KEY (`id_nganhang`);

--
-- Chỉ mục cho bảng `phanmem`
--
ALTER TABLE `phanmem`
  ADD PRIMARY KEY (`id_phanmem`),
  ADD KEY `lk_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `history_nap`
--
ALTER TABLE `history_nap`
  MODIFY `id_nap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nganhang`
--
ALTER TABLE `nganhang`
  MODIFY `id_nganhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phanmem`
--
ALTER TABLE `phanmem`
  MODIFY `id_phanmem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `lk_phanmem` FOREIGN KEY (`id_phanmem`) REFERENCES `phanmem` (`id_phanmem`),
  ADD CONSTRAINT `lk_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `history_nap`
--
ALTER TABLE `history_nap`
  ADD CONSTRAINT `history_nap_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `phanmem`
--
ALTER TABLE `phanmem`
  ADD CONSTRAINT `lk_danhmuc` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
