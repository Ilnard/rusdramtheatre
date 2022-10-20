-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 20 2022 г., 12:26
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dramtheatre`
--

-- --------------------------------------------------------

--
-- Структура таблицы `creators`
--

CREATE TABLE `creators` (
  `id` int NOT NULL,
  `poster_id` int NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `creators`
--

INSERT INTO `creators` (`id`, `poster_id`, `role`, `fullname`) VALUES
(1, 1, 'Режиссер-постановщик', 'Михаил Рябинович'),
(2, 1, 'Художник-постановщик', 'Вячеслав Виданов'),
(3, 2, 'Режиссер-постановщик', 'Михаил Рябинович'),
(4, 2, 'Художник-постановщик', 'Алла Коженкова'),
(5, 2, 'Музыкальный руководитель', 'Валерия Брейтбург'),
(6, 2, 'Хореограф', 'Николай Андросов'),
(7, 3, 'Режиссер-постановщик', 'Михаил Рябинович'),
(8, 3, 'Художник-постановщик', 'Вячеслав Виданов'),
(9, 4, 'Режиссер-постановщик', 'Игорь Лебедев'),
(10, 4, 'Художник-постановщик', 'Иван Мальгин'),
(11, 5, 'Режиссер-постановщик', 'Игорь Селин'),
(12, 5, 'Художник-постановщик', 'Александр Дубровин'),
(13, 5, 'Хореограф', 'Артур Ощепков');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `content`, `img`) VALUES
(1, 'СПЕКТАКЛИ ТОЖЕ ОТМЕЧАЮТ ЮБИЛЕИ!', 'Спектакли тоже отмечают юбилеи! Завтра, 19 октября, в сотый раз играем любимую \"Фабричную девчонку\"! Эту лирическую историю поставил на сцене нашего театра режиссер Григорий Лифанов.', 'spektakli.jpg'),
(2, '«ОПЯТЬ ЭТА ЛУНА!.. И ШОРОХ ЛИСТОПАДА…»', 'В нынешний четверг, 20 октября, в день рождения народного поэта Республики Башкортостан Мустая Карима на сцене нашего театра по уже сложившейся традиции вновь будет идти лирическая драма «Луна и листопад».', 'listopad.jpg'),
(3, 'ПЕРЕНОС СПЕКТАКЛЯ!', 'Уважаемые зрители! По техническим причинам премьерный показ спектакля «Камень глупости», запланированный на 21 октября, переносится на 24 октября, 19.00. Билеты действительны! Приносим свои искренние извинения!', 'perenos.jpg'),
(4, 'ПОЗДРАВЛЯЕМ С ДНЕМ РЕСПУБЛИКИ!', 'Дорогие друзья! Поздравляем вас с Днем Республики Башкортостан! Пусть наша республики процветает! Мы желаем вам добра и благополучия, здоровья и успехов!', 'den-respubliki.jpg'),
(5, 'ФЛЕШМОБ \"ШАЙМУРАТОВ-ГЕНЕРАЛ\"', 'Артисты республики объявили флешмоб и исполнили песню Загира Исмагилова на слова Кадира Даяна «Шаймуратов-генерал». Акцию они посвятили открытию памятника легендарному генералу 112-ой Башкавдивизии.', 'fleshmob-shaimuratov.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `posters`
--

CREATE TABLE `posters` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `date` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posters`
--

INSERT INTO `posters` (`id`, `name`, `author`, `ganre`, `age`, `date`, `img`) VALUES
(1, 'Луна и листопад', 'Мустай Карим', 'Лирическая драма', 16, '20/10', 'luna-i-listopad.jpg'),
(2, 'Голубая Камея', '', 'Мюзикл', 16, '21/10', 'golubaya-kameya.jpg'),
(3, 'Палата бизнес-класса', 'Коровкин', 'Комедия', 18, '22/10', 'palata-biznes-klassa.jpg'),
(4, 'Камень глупости', 'Константин Стешик', 'Притча', 16, '22/10', 'kamen-gluposti.jpg'),
(5, 'Маскарад', 'М. Ю. Лермонтов', 'Драма', 16, '23/10', 'maskarad.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fullname`, `login`, `email`, `password`) VALUES
(1, 'Иванов Иван Иванович', 'ivan2003', 'ivan@yandex.ru', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `creators`
--
ALTER TABLE `creators`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posters`
--
ALTER TABLE `posters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `creators`
--
ALTER TABLE `creators`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `posters`
--
ALTER TABLE `posters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
