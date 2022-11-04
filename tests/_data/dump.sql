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
    ('Mark', 'mark@gmail.com', '$2y$10$LnR3L7FsqnmKASUCnlKCCu8yI0f7G6CrXR7iF2owCGayW2/34Ontm', '2021-06-12 08:00:00', null),
    ('Joshua', 'joshua@gmail.com', '$2y$10$LnR3L7FsqnmKASUCnlKCCu8yI0f7G6CrXR7iF2owCGayW2/34Ontm', '2021-07-12 08:00:00', null);

INSERT INTO categories(`name`, `description`)
VALUES
    ('Trending', 'Currently popular or widely discussed online, especially on social media websites.'),
    ('Tech', 'Technology business updates.'),
    ('News', 'Phillippine news today.');

INSERT INTO articles(`id`, `user_id`, `title`, `slug`, `summary`, `content`, `banner`, `created_at`, `updated_at`)

VALUES
    (2,1,"Netflix had its lowest year of subscriber growth since 2015","netflix-had-its-lowest-year-of-subscriber-growth-since-2015","Netflix had its lowest year of subscriber growth since 2015","Despite producing global hits like Squid Game in 2021, Netflixsfourth quarter returnsshow the streaming giant struggling to maintain a lead over its competitors. The company fell short of its projections for new subscribers this quarter, adding 8.3 million as opposed to its projected 8.5 million  it also projects to add just 2.5 million subscribers in Q1 2022, down from 4 million last year (the company says this is because it has a more back-end weighted content slate for the quarter). Overall, this year marks a downward trend in subscriber growth  its the companys lowest growth yearsince 2015and about a 50% decrease from its pandemic-inflated 2020 numbers.


Consumers have always had many choices when it comes to their entertainment time  competition that has only intensified over the last 24 months as entertainment companies all around the world develop their own streaming offering, the company wrote in itsletter to shareholders, admitting that competition may be affecting [its] marginal growth some.


While Netflix has about 222 million total subscribers, larger conglomerates like Disney (which also owns Hulu and ESPN) have continued to expand at a more aggressive pace. Disney ended 2021 with179 million total subscribersacross Hulu, Disney+ and ESPN+, and it plans to double the number of countries that Disney+ is available in by fiscal 2023. Disney also announced the creation of an International Content and Operations group to expand its direct-to-consumer streaming internationally. HBO Max is growing too  the company said thatDecember had been its most-viewed monthsince the services launch in May 2020.
","https://images.unsplash.com/photo-1574375927938-d5a98e8ffe85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80","2021-10-12 08:00:00","2022-01-24 01:06:29"
    ),

    (3,1,"House probe sought on restrictions for unvaccinated","house-probe-sought-on-restrictions-for-unvaccinated","House probe sought on restrictions for unvaccinated","The Makabayan bloc is urging the House of Representatives to conduct an inquiry into the restrictions imposed on the unvaccinated as they raise concerns that these curbs could be violative of human rights. The six-member bloc filed on Thursday House Resolution No. 2460 which calls on the Houses human rights panel to conduct an inquiry on the effects of the restrictions on the unvaccinated, including barring them from going out of their homes and from taking public transportation.","https://images.unsplash.com/photo-1611694449252-02453c27856a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80","2021-11-12 08:00:00","2022-01-24 02:22:31"

    ),

    (4,2,"Twitter is rolling out verified NFT profile picture","twitter-is-rolling-out-verified-nft-profile-picture","Twitter is rolling out verified NFT profile picture","Twitter on Thursday began rolling out a feature that will let some users set NFTs that they own as their profile picture to signal their investment in the emerging digital art space. The move makes Twitter one of the best-known tech platforms so far to launch a feature for the flashy NFT trend. NFTs, or \'nonfungible tokens,\' are one-of-a-kind, verifiable digital collectibles, often works of art, that can be traded on the blockchain, the technology that underpins cryptocurrencies like bitcoin. While not exactly new, NFTs have exploded into a lucrative industry over the past year, with digital art works selling for millions of dollars, and artists, celebrities and companies jumping on board to make and sell them. NFTs such as characters from the popular \'Bored Apes\' collection have been popping up as people\'s avatars on Twitter (TWTR) in recent months. The new feature, which is only available to users who pay for Twitter\'s subscription service, will go a step further. It will verify someone\'s ownership of the NFT by linking the person\'s digital wallet where the NFTs are stored to their Twitter account.","https://images.unsplash.com/photo-1640282693216-0daee44dab75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80","2021-09-12 08:00:00","2022-01-24 06:49:08"

    );

INSERT INTO article_categories(`id`, `article_id`, `category_id`)

VALUES (12,2,2), (14,3,3), (19,4,1), (20,4,3);




