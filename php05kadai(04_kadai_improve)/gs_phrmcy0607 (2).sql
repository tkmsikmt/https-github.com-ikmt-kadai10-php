-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 6 月 23 日 14:03
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_phrmcy0607`
--

CREATE TABLE `gs_phrmcy0607` (
  `id` int(64) NOT NULL,
  `patient_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seibetsu` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `store_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `stock` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `waiting_time` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `tele` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `memo` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_phrmcy0607`
--

INSERT INTO `gs_phrmcy0607` (`id`, `patient_name`, `img`, `seibetsu`, `store_name`, `stock`, `waiting_time`, `pic`, `email`, `tele`, `memo`, `date`) VALUES
(1, '鈴木淳', '', 'm', 'アイン', '無し', '40', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '            \r\n                 再確認\r\n            ', '2022-06-09 21:10:43'),
(5, 'イケモトyukiko', '', 'w', 'クオール', '有り', '40', '山田', 'test5@test.jpnew', '08012132100', '      トライ\r\n            ', '2022-06-09 21:07:24'),
(6, 'イケモトタカマサ', '', 'm', 'クオール', '有り', '0', '鈴木', 'test5@test.jpnew', '08012132100', '            \r\n                         \r\n               混んできました。\r\n            ', '2022-06-11 13:14:08'),
(7, '伊藤さん', '', 'w', 'アイン', '有り', '40', '鈴木', 'test5@test.jpnew', '08012132100', '             混んでます', '2022-06-11 17:30:46'),
(8, 'イケモトタカマサ', '', 'm', 'クオール', '有り', '0', '', 'test5@test.jpnew', '08012132100', '             その他があれば書いて下さい。\r\n            ', '2022-06-19 05:10:46'),
(9, 'イケモトタカマサ', '', 'w', 'アイン', '無し', '60', '鈴木', 'takamasa.ikemoto@gmail.com', '08012132100', '             その他があれば書いて下さい。\r\n            ', '2022-06-19 05:38:15'),
(10, 'イケモトタカマサ', '', 'w', 'アイン', '無し', '30', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '            再送', '2022-06-19 05:52:15'),
(11, 'イケモトタカマサ', '', 'm', 'クオール', '有り', '0', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '             その他があれば書いて下さい。\r\n            ', '2022-06-19 06:01:34'),
(12, 'イケモトタカマサ', '', 'm', 'アイン', '無し', '10', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '             その他があれば書いて下さい。\r\n            ', '2022-06-19 06:05:55'),
(13, 'イケモトタカマサ', '', 'w', '', '無し', '0', '鈴木', 'takamasa.ikemoto@gmail.com', '08012132100', '             その他があれば書いて下さい。\r\n            ', '2022-06-19 06:28:44'),
(14, 'イケモトタカマサ', '', 'w', 'アイン', '有り', '0', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '             その他があれば書いて下さい。\r\n            ', '2022-06-19 06:42:24'),
(15, 'イケモトタカマサ', '', 'w', 'アイン', '無し', '0', '山田更新', 'kageyama@', '08012132100', '    再トライ\r\n            ', '2022-06-19 15:32:53'),
(16, 'イケモトタカマサ', '', 'w', 'アイン', '無し', '60', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '            リクワイアワンスをセット\r\n            ', '2022-06-19 16:02:15'),
(17, 'イケモトタカマサ', '', 'm', 'アイン', '有り', '0', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '             リロード後に再度', '2022-06-19 16:19:29'),
(18, 'イケモトタカマサ', '', 'm', 'クオール', '無し', '60', '鈴木', 'takamasa.ikemoto@mitsubishicorp.com', '08012132100', '             ファンクション', '2022-06-19 16:35:38'),
(19, 'イケモトタカマサ', '', 'm', 'アイン', '無し', '60', '山田', 'takamasa.ikemoto@mitsubishicorp.com', '08012132100', '             その他があれば書いて下さい1\r\n\r\n\r\n\r\n\r\n            ', '2022-06-19 17:24:21'),
(20, 'イケモトタカマサ', '', 'm', 'アイン', '有り', '60', '山田', 'test5@test.jpnew', '08012132100', '                          confirm画面登場            ', '2022-06-19 21:09:35'),
(21, '佐藤さん', '', 'm', 'アイン', '有り', '50', '石見', 'kageyama@', '08012132100', '                      動画トライ中\r\n                        ', '2022-06-19 21:17:05'),
(22, '山口さん', '', 'm', 'クオール', '有り', '60', '石見', 'new takamasa.ikemoto@mitsubishicorp.com', '08012132100', '                          写真トライ\r\n                        ', '2022-06-19 21:26:37'),
(23, '山口さん', '', 'm', 'クオール', '有り', '0', '石見', 'new takamasa.ikemoto@mitsubishicorp.com', '08012132100', '                          写真トライ\r\n                        ', '2022-06-19 21:49:32'),
(24, 'イケモトタカマサ', '', 'w', 'アイン', '有り', '60', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '                          その他があれば書いて下さい。\r\n                        ', '2022-06-19 21:55:25'),
(25, 'イケモトタカマサ', '', 'w', 'アイン', '有り', '20', '山田', '08012132100', '08012132100', '                          その他があれば書いて下さい。\r\n                        ', '2022-06-19 22:05:56'),
(26, 'イケモトタカマサ', '', 'm', 'アイン', '有り', '10', '山田', 'test5@test.jpnew', '08012132100', '                          その他があれば書いて下さい。\r\n                        ', '2022-06-19 22:08:06'),
(27, 'イケモトタカマサ', '', 'm', 'アイン', '有り', '10', '山田', 'test5@test.jpnew', '08012132100', '                          その他があれば書いて下さい。\r\n                        ', '2022-06-19 22:08:50'),
(28, 'イケモトタカマサ', '', 'm', 'アイン', '有り', '10', '山田', 'takamasa.ikemoto@gmail.com', '08012132100', '                          その他があれば書いて下さい。\r\n                        ', '2022-06-22 23:04:35'),
(29, 'イケモトタカマサ', '20220622140818_IMG_1781.jpg', 'm', 'アイン', '有り', '10', '山田', 'new takamasa.ikemoto@mitsubishicorp.com', '08012132100', '                          その他があれば書いて下さい。\r\n                        ', '2022-06-22 23:08:18'),
(30, 'イケモトタカマサ', '20220622141133_dora_5.png', 'w', 'アイン', '有り', '0', '山田更新', 'new takamasa.ikemoto@mitsubishicorp.com', '08012132100', '                          その他があれば書いて下さい。\r\n                        ', '2022-06-22 23:11:33'),
(31, 'イケモトタカマサ', '', 'm', 'クオール更新', '有り', '0', '鈴木', 'new takamasa.ikemoto@mitsubishicorp.com', '08012132100', '                          その他があれば書いて下さい。\r\n                        ', '2022-06-22 23:13:52'),
(32, '内田', '20220622141726_IMG_1781.jpg', 'm', 'アイン', '有り', '0', '伊藤', 'kageyama@', '08012132100', '                          その他があれば書いて下さい。\r\n            これで。            ', '2022-06-22 23:17:26');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_phrmcy0607`
--
ALTER TABLE `gs_phrmcy0607`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_phrmcy0607`
--
ALTER TABLE `gs_phrmcy0607`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
