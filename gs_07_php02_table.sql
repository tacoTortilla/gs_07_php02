-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-12-19 15:34:52
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_07_php02`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_07_php02_table`
--

CREATE TABLE `gs_07_php02_table` (
  `id` int(4) NOT NULL,
  `todo` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `gs_07_php02_table`
--

INSERT INTO `gs_07_php02_table` (`id`, `todo`, `created_at`, `updated_at`, `image`, `title`) VALUES
(15, 'tess', '2024-12-19 23:22:19', '2024-12-19 23:22:19', 'uploads/about_03.jpg', 'tes'),
(16, 'おいしそう', '2024-12-19 23:26:31', '2024-12-19 23:26:31', 'uploads/delicious_cheese.jpg', 'チーズの画像'),
(17, '顔色は良さそう', '2024-12-19 23:27:18', '2024-12-19 23:27:18', 'uploads/factory06.jpg', '牛の体調'),
(18, 'ste', '2024-12-19 23:33:59', '2024-12-19 23:33:59', 'uploads/delicious_cheese.jpg', 'test');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_07_php02_table`
--
ALTER TABLE `gs_07_php02_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_07_php02_table`
--
ALTER TABLE `gs_07_php02_table`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
