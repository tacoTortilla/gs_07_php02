-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-12-18 19:49:50
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
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` longblob NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `gs_07_php02_table`
--

INSERT INTO `gs_07_php02_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`, `image`, `title`) VALUES
(12, 'とうどう', '2024-12-18', '2024-12-19 03:36:47', '2024-12-19 03:36:47', 0x433a5c78616d70705c746d705c7068704439392e746d70, 'タイトル'),
(13, 'です\r\nです', '2024-12-19', '2024-12-19 03:40:00', '2024-12-19 03:40:00', 0x433a5c78616d70705c746d705c7068703139362e746d70, '次の入力');

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
