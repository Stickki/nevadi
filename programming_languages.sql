-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 26 2024 г., 20:46
-- Версия сервера: 8.0.36
-- Версия PHP: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `freedbtech_language`
--

-- --------------------------------------------------------

--
-- Структура таблицы `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `released_year` int NOT NULL,
  `githut_rank` int DEFAULT NULL,
  `pypl_rank` int DEFAULT NULL,
  `tiobe_rank` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `name`, `released_year`, `githut_rank`, `pypl_rank`, `tiobe_rank`, `created_at`, `updated_at`) VALUES
(1, 'JavaScript', 1995, 1, 3, 7, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(2, 'Python', 1991, 2, 1, 3, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(3, 'Java', 1995, 3, 2, 2, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(4, 'TypeScript', 2012, 7, 10, 42, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(5, 'C#', 2000, 9, 4, 5, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(6, 'PHP', 1995, 8, 6, 8, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(7, 'C++', 1985, 5, 5, 4, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(8, 'C', 1972, 10, 5, 1, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(9, 'Ruby', 1995, 6, 15, 15, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(10, 'R', 1993, 33, 7, 9, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(11, 'Objective-C', 1984, 18, 8, 18, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(12, 'Swift', 2015, 16, 9, 13, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(13, 'Kotlin', 2011, 15, 12, 40, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(14, 'Go', 2009, 4, 13, 14, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(15, 'Rust', 2010, 14, 16, 26, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(16, 'Scala', 2004, 11, 17, 34, '2024-05-26 14:10:55', '2024-05-26 14:10:55'),
(20, 'Rusts', 2010, 18, 22, 15, '2024-05-26 21:00:15', '2024-05-26 21:00:15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_unique` (`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
