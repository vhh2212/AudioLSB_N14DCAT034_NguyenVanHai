-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2018 lúc 07:31 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `audiolsb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multimedia`
--

CREATE TABLE `multimedia` (
  `id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `song` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `multimedia`
--

INSERT INTO `multimedia` (`id`, `parentid`, `song`, `singer`, `url`, `type`, `owner`) VALUES
('11RmyNjI8mwRaNcZgE76zXQCv5z3JjBpe', '11RmyNjI8mwRaNcZgE76zXQCv5z3JjBpe', 'Lạc Trôi', 'Sơn Tùng - MTP', 'https://drive.google.com/file/d/11RmyNjI8mwRaNcZgE76zXQCv5z3JjBpe/view?usp=sharing', 'music', 'administrator'),
('1d_CHt8ZBwjVD4N96dTVGMJikeblSGvzP', '1xBbWm3VQ4KQzz50mWbmFJDw-kMqo2eRE', 'Tâm Sự Tuổi 30', 'Trịnh Thăng Bình', 'https://drive.google.com/file/d/1d_CHt8ZBwjVD4N96dTVGMJikeblSGvzP/view?usp=sharing', 'music', 'congiola'),
('1GxHqk2iqcaERIP2cL37YfB45pVhGwAfx', '1GxHqk2iqcaERIP2cL37YfB45pVhGwAfx', 'My Everything', 'Tiên Tiên', 'https://drive.google.com/file/d/1GxHqk2iqcaERIP2cL37YfB45pVhGwAfx/view?usp=sharing', 'music', 'administrator'),
('1iI2K7naoZB1iU5eoOD5HYIIxO_No4xlg', '1jJA2X0ZLRnFIu5riokyFpH-8gnBGeiAJ', 'Xin Đừng Lặng Im', 'Soobin Hoàng Sơn', 'https://drive.google.com/file/d/1iI2K7naoZB1iU5eoOD5HYIIxO_No4xlg/view?usp=sharing', 'music', 'nhoclikely'),
('1jJA2X0ZLRnFIu5riokyFpH-8gnBGeiAJ', '1jJA2X0ZLRnFIu5riokyFpH-8gnBGeiAJ', 'Xin Đừng Lặng Im', 'Soobin Hoàng Sơn', 'https://drive.google.com/file/d/1jJA2X0ZLRnFIu5riokyFpH-8gnBGeiAJ/view?usp=sharing', 'music', 'administrator'),
('1JWWlF7yyyRiYw0Og-V4ORchQ1C6jbuq0', '1xBbWm3VQ4KQzz50mWbmFJDw-kMqo2eRE', 'Tâm Sự Tuổi 30', 'Trịnh Thăng Bình', 'https://drive.google.com/file/d/1JWWlF7yyyRiYw0Og-V4ORchQ1C6jbuq0/view?usp=sharing', 'music', 'nhoclikely'),
('1xBbWm3VQ4KQzz50mWbmFJDw-kMqo2eRE', '1xBbWm3VQ4KQzz50mWbmFJDw-kMqo2eRE', 'Tâm Sự Tuổi 30', 'Trịnh Thăng Bình', 'https://drive.google.com/file/d/1xBbWm3VQ4KQzz50mWbmFJDw-kMqo2eRE/view?usp=sharing', 'music', 'administrator'),
('logo', 'logo', NULL, NULL, 'http://localhost/audiowatermarkdemo/picture/logo.png', 'picture', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multimediatype`
--

CREATE TABLE `multimediatype` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `multimediatype`
--

INSERT INTO `multimediatype` (`id`) VALUES
('music'),
('picture'),
('video');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`) VALUES
('admin'),
('user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `siteinfo`
--

CREATE TABLE `siteinfo` (
  `companyname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `seokeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `siteinfo`
--

INSERT INTO `siteinfo` (`companyname`, `seokeywords`, `logo`) VALUES
('Thủy Vân Số', 'audio, watermark, demo', 'logo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `password`, `permission`) VALUES
('administrator', '1f4a04e5543d8760660bb080226040b987b88d47', 'admin'),
('congiola', '890dc3070dc8330b20d0efac92c7993b940cade4', 'user'),
('nhoclikely', 'aad3c3820399bbda37b830093dbf56e2b3201305', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `owner` (`owner`);

--
-- Chỉ mục cho bảng `multimediatype`
--
ALTER TABLE `multimediatype`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`companyname`),
  ADD KEY `logo` (`logo`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission` (`permission`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`type`) REFERENCES `multimediatype` (`id`),
  ADD CONSTRAINT `multimedia_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD CONSTRAINT `siteinfo_ibfk_1` FOREIGN KEY (`logo`) REFERENCES `multimedia` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`permission`) REFERENCES `permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
