CREATE TABLE IF NOT EXISTS users (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `email` varchar(100) NOT NULL,
    `password` varchar(255) NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime,
    UNIQUE (`email`),
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS categories (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(200) NOT NULL,
    `description` varchar(255) NOT NULL,
    UNIQUE (`name`),
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS articles (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `title` varchar(100) NOT NULL,
    `slug` varchar(100) NOT NULL,
    `summary` varchar(100) NOT NULL,
    `content` text(65535) NOT NULL,
    `banner` varchar(255) NOT NULL,
    `created_at` datetime NOT NULl,
    `updated_at` datetime,
    FOREIGN KEY (`user_id`) REFERENCES users (id) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS article_categories (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `article_id` int(11) NOT NULL,
    `category_id` INT(11) NOT NULL,
    FOREIGN KEY (`article_id`) REFERENCES articles (id) ON DELETE CASCADE,
    FOREIGN KEY (`category_id`) REFERENCES categories (id) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
);

INSERT INTO users (`name`, `email`, `password` , `created_at`, `updated_at`)

VALUES 
('Jonas', 'jonas@gmail.com', '$2y$10$eXprUTdsQUd6bUZnQzUwb.KC/UDUBGRgOof8JtzAuHeELl5dhHmoq', '2021-06-12 08:00:00', null);

INSERT INTO categories(`name`, `description`)
VALUES 
        ('Travel', 'We love to travel.'),
        ('Life', 'Lets talk about life'),
        ('News', 'Current news and insights');

INSERT INTO articles(`user_id`, `title`, `slug`, `summary`, `content`, `banner`, `created_at`, `updated_at`)
VALUES
('1', 'Our next trip', 'our-next-trip', 'Our next trip will be..', 'Blog content...', 'https://picsum.photos/300/400', '2021-10-12 08:00:00', '2021-10-12 08:00:00'),
('1', 'Our next move', 'our-next-move', 'Our next move will be..', 'Blog content...', 'https://picsum.photos/300/400', '2021-10-12 08:00:00', '2021-10-12 08:00:00'),
('1', 'Latest News', 'latest-news', 'Whats new', 'Blog content...', 'https://picsum.photos/300/400', '2021-10-12 08:00:00', '2021-10-12 08:00:00');

INSERT INTO article_categories(`article_id`, `category_id`)
VALUES 
        ('1', '1'),
        ('2', '2'),
        ('3', '3');

