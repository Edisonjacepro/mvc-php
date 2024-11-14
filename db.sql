-- Ce fichier sert à initialiser la base de données
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `posts` (`id`, `title`, `content`, `creation_date`) VALUES
(1, 'post 1','post 1post 1post 1post 1post 1post 1', '2022-02-17 16:28:41'),
(2, 'post 2','post 2post 2post 2post 2post 2post 2', '2022-02-17 16:28:42');

ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

CREATE TABLE `comments` (
    `id` int (11) NOT NULL,
    `post_id` INT (11) NOT NULL,
    `author` varchar(255) NOT NULL,
    `comment` text NOT NULL,
    `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `comments` (`id`, `post_id`, `author`, `comment`, `comment_date`) VALUES
(1, 1, 'edison', 'hello', '2022-03-03 13:00:42'),
(2, 1, 'test', 'coucou', '2022-03-03 13:01:42');

ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3