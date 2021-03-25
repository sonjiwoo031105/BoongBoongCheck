-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 20-12-01 14:49
-- 서버 버전: 8.0.20
-- PHP 버전: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `boongboong`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `drive`
--

CREATE TABLE `drive` (
  `id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `drivenum` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drivepw` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `drive`
--

INSERT INTO `drive` (`id`, `name`, `birth`, `drivenum`, `drivepw`, `validity`) VALUES
(1, '손지우', '2003-11-05', '11-17-174133-01', 'P70D34', '2029-01-01'),
(2, '신수민', '2003-06-14', '11-19-176533-01', 'S32M95', '2030-01-30'),
(3, '붕붕이', '2002-02-02', '12-11-225789-02', 'B12B97', '2020-11-30'),
(4, '퍼스트', '2001-12-01', '11-18-297866-01', 'S19F00', '2025-01-26'),
(5, '세컨드', '2002-02-02', '15-14-713694-01', 'S15S02', '2025-07-03'),
(6, '붕어빵', '1998-07-15', '11-17-173291-01', 'J07Qp5', '2020-12-25'),
(7, '김춘자', '2000-03-21', '17-15-619873-02', 'A07G11', '2022-06-17'),
(8, '미리미', '1998-07-08', '13-16-194260-01', 'P98H1r', '2021-09-01'),
(9, '김미림', '1996-02-07', '12-12-513697-02', 'x07Yi1', '2023-03-04'),
(10, '나미림', '2001-11-02', '15-17-039741-01', 'y74Cs4', '2028-04-09');

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `userid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `drivenum` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `userid`, `passwd`, `name`, `email`, `birth`, `drivenum`) VALUES
(1, 'sziu', '1115', '손지우', 's2019s31@e-mirim.hs.kr', '2003-11-05', '11-17-174133-01'),
(2, 'ssoomin1', '0614!', '신수민', 's2019s32@e-mirim.hs.kr', '2003-06-14', '11-19-176533-01');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `drive`
--
ALTER TABLE `drive`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `drive`
--
ALTER TABLE `drive`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
