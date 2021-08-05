-- Работаем с БД vk и тестовыми данными, которые вы сгенерировали ранее:

-- 1. СОЗДАТЬ И ЗАПОЛНИТЬ ТАБЛИЦЫ ЛАЙКОВ И ПОСТОВ.

-- удалила свои таблицы чтобы не путаться
DROP TABLE pins;
DROP TABLE media_likes;
DROP TABLE pins_likes;
DROP TABLE users_likes;

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Заполняем таблицу типов лайков
INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем таблицу лайков
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Создадим таблицу постов
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Заполняем таблицу постов
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (1, 29, 22, '', 'Earum minus a sint soluta facere sed ut. Ratione dolorum id voluptatum est explicabo. Et in fuga ratione voluptates rerum voluptas. Et fugiat deserunt dolorem sequi tenetur aut dolor.', 99, 1, 0, '2020-10-06 08:42:48', '2021-03-12 03:37:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (2, 74, 12, '', 'Voluptatem quo sapiente aperiam tempora occaecati nisi consequatur. Et nihil earum et ut nihil sint quaerat. Veniam est non id magni.', 11, 1, 0, '2020-11-03 00:32:33', '2021-04-29 22:43:16');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (3, 66, 21, 'Voluptate ipsa voluptatem iste laborum.', 'Nesciunt molestias repellat nostrum accusamus. Et et minus laudantium. Est repellat repellendus reiciendis sit.', 40, 1, 0, '2020-08-07 11:14:27', '2021-02-21 15:31:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (4, 13, 27, '', 'Ea molestiae repudiandae ea distinctio earum nesciunt mollitia. Minus sit atque recusandae praesentium. Tenetur eius voluptas voluptatem et qui.', 59, 1, 0, '2020-07-29 18:55:46', '2020-06-26 19:14:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (5, 1, 15, '', 'Et est voluptatem nostrum minima tempore qui. Ratione doloremque ut laboriosam velit tempore suscipit. Voluptas est doloremque ullam velit non non voluptatem ut. Corrupti dolorem odit autem enim.', 92, 0, 0, '2021-06-04 18:18:34', '2021-03-06 16:21:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (6, 47, 22, 'Ut ipsum blanditiis eius nisi.', 'Quaerat qui voluptatem dicta ut quis. Modi id nam et qui tempore molestiae. Totam et quasi sunt et est dolorem illum illo. Labore quam consequatur voluptatum eum dolorum molestiae.', 38, 1, 0, '2021-01-25 23:04:52', '2020-11-26 00:44:58');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (7, 47, 24, '', 'Facere beatae inventore vel laborum. Commodi ad minima nam aut repellendus illum reprehenderit consequatur. Vero minima sunt in totam omnis. Autem nihil reprehenderit vel aut est.', 31, 1, 1, '2020-11-09 14:41:36', '2020-09-14 02:44:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (8, 31, 5, 'Et sapiente et adipisci.', 'Consequatur est asperiores unde harum nihil consequatur. Soluta non magnam voluptates et et iste. Consequuntur et id non reiciendis aliquid qui modi. Molestiae aut non aut ut qui laboriosam.', 26, 1, 0, '2020-07-18 20:59:38', '2021-02-18 05:47:58');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (9, 13, 25, '', 'Eaque qui illo est delectus est nihil. Eos non voluptatibus autem enim doloremque. Voluptatem earum tenetur pariatur nostrum deserunt unde.', 31, 1, 0, '2020-07-15 01:03:39', '2021-05-22 01:02:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (10, 100, 18, 'At ut fugit et enim reiciendis debitis sunt.', 'Nulla qui sint quia accusantium sit. Blanditiis at aut itaque sequi reiciendis reprehenderit ab. Saepe voluptates et expedita illo itaque ut est.', 22, 1, 0, '2020-08-03 02:40:55', '2020-08-18 05:57:58');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (11, 67, 15, '', 'Quia officia doloremque totam blanditiis fugit possimus. Natus eveniet reiciendis aut est sequi. Repudiandae sint et amet aut id sapiente omnis eum.', 30, 1, 0, '2021-03-01 08:20:25', '2020-08-25 18:38:28');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (12, 82, 9, 'Quasi et repellat quam.', 'Nobis adipisci omnis aut ex soluta molestias possimus. Qui modi est eligendi debitis aspernatur animi. Aut dignissimos est animi et optio nostrum incidunt quo.', 7, 1, 0, '2021-05-22 09:52:19', '2020-07-07 05:34:31');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (13, 47, 14, '', 'Harum impedit dolore et natus. Saepe veniam ea sint veniam qui. Quo voluptatem ex distinctio. Sit quia esse aut id id in ut.', 8, 1, 1, '2020-08-09 21:03:27', '2021-05-09 22:54:07');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (14, 96, 26, '', 'Natus laboriosam perspiciatis ex hic. Optio itaque doloremque id voluptatibus quia non ut. Accusamus rerum eveniet mollitia occaecati.', 50, 1, 0, '2020-11-08 11:47:51', '2021-03-20 14:54:39');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (15, 34, 30, 'Perferendis sed non fuga.', 'Vel ut nobis voluptatum quia at soluta. Dolor quia voluptatem molestias fugiat. Ea quis modi et eaque est. Tenetur omnis inventore suscipit illum.', 17, 1, 0, '2021-04-05 05:18:46', '2020-08-29 21:19:19');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (16, 41, 1, '', 'Rerum qui accusamus repellat corrupti at et. Aspernatur culpa id aperiam sit. Illo quam quisquam non inventore. Eveniet iure recusandae ea officiis nobis sint.', 14, 0, 0, '2020-11-12 14:38:06', '2021-06-04 20:05:36');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (17, 47, 25, '', 'Velit aperiam alias perspiciatis possimus. Et sapiente dignissimos voluptate.', 57, 1, 0, '2021-04-06 10:20:34', '2021-03-12 04:30:06');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (18, 79, 4, '', 'Aut maiores est labore qui vel dolores quis. Pariatur qui quia voluptatum blanditiis ipsum. Enim recusandae et earum quis et officiis.', 94, 1, 1, '2020-07-20 09:25:34', '2021-05-26 06:09:30');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (19, 64, 1, 'Necessitatibus libero labore ab placeat.', 'Blanditiis quo illum eos dolores. Molestiae delectus cumque laudantium debitis et. Possimus saepe aliquid officiis voluptate libero repellendus in.', 54, 0, 1, '2020-11-10 22:47:44', '2020-12-04 14:38:58');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (20, 33, 26, '', 'Et distinctio voluptatem laudantium beatae debitis hic dolorem non. Voluptatem natus molestias reprehenderit nulla molestias optio pariatur. Eum et id adipisci impedit porro amet quo in. Ut eum aut qui ipsa.', 44, 1, 0, '2020-10-28 12:59:41', '2020-08-16 11:51:28');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (21, 24, 21, '', 'Hic doloribus ratione ducimus itaque est aut et. Illum hic doloribus dolorem. Aut ad ea cumque suscipit quidem.', 66, 1, 0, '2021-06-19 07:58:36', '2021-03-04 13:17:06');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (22, 22, 9, '', 'Alias tempora voluptatum excepturi at. Eos ut qui est omnis vel sed voluptatem vitae. Totam facere facere dignissimos perspiciatis quaerat.', 44, 1, 0, '2020-10-16 14:20:32', '2021-01-06 21:30:21');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (23, 88, 2, '', 'Ut minima aliquam occaecati beatae eligendi nisi. Tenetur deleniti earum temporibus et dolores quae. Qui et sed reprehenderit eum. Id id non autem aut deserunt officia et reprehenderit.', 71, 0, 0, '2021-05-12 23:51:04', '2020-09-04 01:12:40');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (24, 11, 27, 'Voluptatem tempore quia ea molestiae cumque repellendus.', 'Eum et possimus assumenda assumenda. Ut voluptates reiciendis et. Cupiditate culpa at sit eius. Recusandae quod quos ipsum laboriosam aperiam.', 38, 1, 0, '2021-05-04 03:06:23', '2021-05-27 17:48:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (25, 14, 4, 'Ad ipsa et consequatur nulla repudiandae.', 'Consequatur et qui nemo velit ad in enim. Aut hic provident soluta eos.', 19, 0, 0, '2020-11-24 06:02:14', '2020-11-28 13:52:55');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (26, 22, 22, 'Porro mollitia nostrum doloribus laboriosam.', 'Vero beatae qui veniam amet doloremque. Iste quam nihil eos qui rerum molestiae nam. Omnis voluptates ut incidunt ducimus. Reprehenderit laborum delectus et voluptatum sint omnis dolorem.', 47, 0, 0, '2021-05-21 02:05:38', '2020-10-14 01:53:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (27, 97, 26, '', 'Velit earum rerum qui accusamus quasi. Occaecati ex dolor minus magnam consequatur. Sunt placeat sunt ut provident rerum hic veniam.', 37, 0, 1, '2020-08-09 16:44:59', '2021-05-15 21:28:29');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (28, 5, 25, 'Voluptas corporis est consectetur.', 'Veritatis et est eos beatae temporibus eos. Amet placeat qui voluptatem porro voluptatibus. Distinctio sed reiciendis deleniti porro ad consequuntur numquam.', 1, 1, 0, '2021-05-22 16:46:48', '2021-06-02 12:37:50');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (29, 72, 28, '', 'Ut et quam eius debitis. In laborum assumenda excepturi eos voluptatibus qui. Alias dignissimos doloribus et consequatur atque doloribus.', 64, 1, 0, '2021-03-12 01:35:57', '2021-01-16 10:02:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (30, 26, 15, '', 'Molestias sunt et error earum voluptatem at. Commodi et quo ipsam aliquam minus est.', 33, 1, 0, '2020-08-11 20:45:16', '2020-10-25 23:39:49');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (31, 9, 16, '', 'Qui dolorum et laudantium libero voluptatem rerum qui. Quod impedit quae qui culpa. Voluptates eum aut aliquid harum necessitatibus dolore ullam culpa. Atque ut aut molestiae inventore culpa.', 99, 1, 0, '2020-06-24 16:10:24', '2020-11-19 21:59:07');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (32, 37, 30, 'Veritatis at voluptas dicta sed quo est.', 'Laborum sed neque et debitis quo sint aut. Dolor et recusandae possimus. Laborum voluptates sint sunt suscipit voluptatem.', 87, 1, 1, '2020-08-03 15:16:06', '2020-09-24 07:58:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (33, 49, 13, 'Eos maxime rerum doloribus.', 'Pariatur totam accusantium omnis veritatis dolorem qui. Molestiae sint autem exercitationem sint rerum officiis sint. Est ratione quia voluptate consequatur maxime quod. Atque earum veritatis unde quas fugiat architecto. Adipisci consequatur quo voluptas deserunt rerum error.', 79, 1, 1, '2020-08-26 19:10:22', '2020-12-31 10:19:19');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (34, 52, 9, 'Quisquam quibusdam corporis eos ea.', 'Sed qui sapiente veniam dicta. Ex rerum tempora distinctio vel. Tempora deserunt et perspiciatis aut.', 21, 0, 0, '2020-12-18 08:48:26', '2021-01-19 17:06:40');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (35, 7, 30, '', 'Totam nam veritatis perferendis sint. Nulla dolorem aut aspernatur. Quis suscipit et et ut mollitia.', 69, 1, 1, '2020-12-22 07:10:56', '2021-04-21 08:58:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (36, 83, 27, '', 'Omnis culpa quo temporibus modi aspernatur officia exercitationem. Non maxime recusandae modi doloremque. Dolorem recusandae omnis sapiente aspernatur voluptatum tempore sapiente aliquam.', 59, 1, 0, '2021-04-23 17:30:03', '2020-10-21 16:54:36');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (37, 5, 21, '', 'Eos dolor ipsam odio fugit. Dolorem dolorem ullam tempore et placeat.', 43, 1, 0, '2020-12-19 15:14:21', '2021-06-23 01:10:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (38, 27, 24, 'Totam dolor eos saepe illo sit quia.', 'Dolorem perferendis saepe rerum sed adipisci doloremque ducimus. Amet ut sit officia. In nihil quibusdam sed beatae asperiores.', 89, 1, 0, '2020-11-17 23:20:20', '2021-01-30 00:06:09');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (39, 39, 25, '', 'Deleniti aut dignissimos aut tempore. Fugiat quasi voluptatibus quam consectetur earum harum fugiat. Maiores reiciendis fugit temporibus omnis delectus. Ipsam in quia facere dolorum.', 21, 0, 1, '2020-09-08 22:07:14', '2021-06-05 10:03:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (40, 54, 19, 'Itaque ad accusamus nemo.', 'Recusandae ut eum qui non. Repudiandae aliquid accusamus itaque eos repellendus. Minima ullam autem cumque illo vero excepturi.', 37, 0, 0, '2021-05-18 06:18:54', '2020-11-19 06:03:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (41, 80, 11, 'Rerum iure tempore quos.', 'Aut dicta aliquam praesentium laboriosam omnis. Qui laborum nemo nemo numquam ullam odit. Soluta voluptatem dolorem eos ratione quidem et.', 12, 0, 0, '2020-09-14 19:39:47', '2020-11-16 20:17:40');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (42, 75, 18, 'Et quisquam quae accusamus occaecati.', 'At omnis aut nostrum odio repellendus officiis porro. Ut dolorem ut tempora excepturi. Impedit eius impedit voluptas.', 26, 1, 0, '2020-09-18 11:11:06', '2021-02-22 09:20:40');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (43, 88, 13, 'Ipsa est quaerat explicabo.', 'Porro distinctio fuga nostrum cumque officia. Cumque distinctio in et consequatur et rerum ut. Omnis ut ducimus autem eum omnis vel sed.', 28, 0, 1, '2020-06-26 03:54:51', '2020-09-10 13:08:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (44, 39, 2, 'Esse harum sint itaque.', 'Quia totam est labore sequi corrupti facere nam. Maxime suscipit atque soluta quibusdam fugit et ullam sed. Nemo ut molestiae molestiae voluptas.', 86, 1, 0, '2021-01-18 16:22:06', '2021-06-01 00:22:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (45, 65, 24, '', 'Culpa aliquid non tempore culpa perspiciatis praesentium. Sed quisquam explicabo magni perspiciatis. Architecto voluptatem voluptatem commodi ut voluptatem reprehenderit.', 5, 0, 0, '2020-08-08 17:05:33', '2020-12-15 13:38:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (46, 57, 9, 'Dolores sed illum sunt aperiam quis quasi.', 'Modi molestiae molestias at non sit beatae. Et velit qui delectus voluptatem eum ut pariatur. Perferendis qui aspernatur sapiente et placeat molestias atque dolore.', 59, 1, 0, '2021-03-16 17:33:16', '2020-12-12 05:35:24');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (47, 6, 6, '', 'Cum tenetur odit dolores doloribus adipisci. Quidem blanditiis minima quia ratione repellat cumque. Non nihil perferendis vitae.', 89, 1, 0, '2020-07-13 00:16:30', '2021-03-06 03:57:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (48, 23, 5, '', 'Ipsa harum eos sed et accusantium et voluptatem. Est deleniti impedit ipsam optio aut provident earum.', 66, 1, 0, '2021-02-06 23:06:55', '2021-02-19 12:41:14');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (49, 80, 3, '', 'Consequuntur voluptate nemo suscipit placeat. Ipsum est possimus deserunt deserunt. Iste aperiam nostrum accusantium accusantium eaque.', 17, 1, 0, '2020-10-01 13:11:18', '2021-02-19 07:13:32');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (50, 39, 14, '', 'Assumenda incidunt et autem beatae unde maiores. Ea sit libero et sit tenetur et et. Earum id modi sed beatae. Maxime voluptas enim placeat eum et quis hic.', 79, 1, 1, '2021-02-06 10:50:47', '2020-08-26 11:06:44');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (51, 99, 11, 'Occaecati aperiam laudantium ullam.', 'Ipsum qui explicabo omnis doloremque eos a. Molestias exercitationem eius voluptas. Quis sequi temporibus repudiandae molestiae ut ut alias. Amet quibusdam molestias nihil sapiente optio consectetur.', 53, 1, 0, '2020-09-16 09:50:47', '2020-07-02 00:24:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (52, 92, 17, 'Nesciunt aut maiores dolorum amet voluptatem est.', 'Dolor deserunt debitis quasi reprehenderit et repellendus. Corporis molestias quas fugit consequuntur consequatur quas. Voluptas ut rerum vitae veniam reiciendis. Exercitationem quos vel quasi dolorem odit consectetur et nam.', 50, 1, 0, '2021-05-01 15:50:38', '2021-01-22 20:31:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (53, 52, 17, '', 'Eos quia officiis deleniti asperiores dolor consectetur. Consequatur ea quia expedita cum. Laudantium quos hic quisquam cumque nihil sit perspiciatis. Molestiae iusto saepe sit aspernatur dolores est. Enim culpa alias et tempore.', 21, 1, 1, '2021-06-18 12:57:15', '2021-02-23 16:10:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (54, 29, 3, '', 'Nesciunt quia illum eveniet deserunt harum repellendus animi. Rerum voluptatem molestiae ab maxime sit. Veritatis maiores quia non vel tempora. Assumenda eum eaque laborum et atque.', 88, 0, 1, '2020-10-05 09:27:53', '2021-06-01 12:35:02');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (55, 17, 26, 'Et impedit hic dolorum.', 'Atque quia aut hic quia unde ut rerum. Excepturi eveniet voluptates consectetur dolor a. Itaque sunt voluptatibus et quod. Ea soluta quis molestiae harum illo.', 8, 0, 0, '2021-04-16 07:43:35', '2021-05-24 03:24:26');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (56, 77, 28, 'Nisi et et quis est sit tempora.', 'Facere sunt est aut et sed nulla quia quasi. Corrupti quia quae quasi natus sint impedit natus.', 82, 1, 0, '2021-03-16 03:57:53', '2020-11-16 02:12:39');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (57, 31, 29, 'Est et voluptas amet.', 'Dolore incidunt dolores totam at necessitatibus facere eos quis. Et enim sint quam omnis aliquid sit sunt beatae. Animi delectus amet quos.', 32, 1, 0, '2020-07-19 09:16:59', '2021-03-07 16:24:55');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (58, 31, 1, 'Est perspiciatis tempora omnis quam.', 'Quam qui beatae culpa qui. Perferendis nihil vero voluptates aperiam nemo quidem. Dolorem ex quia facere quaerat dolores. Qui optio unde molestiae atque.', 98, 1, 0, '2020-10-20 10:14:19', '2021-02-11 19:41:33');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (59, 1, 16, '', 'Qui libero laudantium maxime sint. Tempore vitae magni sequi unde asperiores quos. Et a voluptatum tempora ea ut suscipit. Nulla alias harum ratione.', 57, 0, 0, '2020-08-15 00:45:30', '2021-02-19 22:48:23');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (60, 82, 24, 'Itaque sit repudiandae in error saepe.', 'Veritatis sit perspiciatis repellat ut quis est. Aut omnis a numquam quos rerum asperiores. Qui neque occaecati qui autem. Reprehenderit et qui iste in velit voluptatum quo. Omnis nam soluta iure.', 34, 1, 1, '2020-12-27 09:56:36', '2021-01-13 18:47:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (61, 69, 19, 'Nihil blanditiis quasi minima.', 'Numquam quos accusamus pariatur voluptatum. Provident quo voluptas quidem blanditiis et reiciendis velit. Aperiam omnis ut omnis repudiandae inventore nesciunt nobis. Hic ullam laboriosam sunt perferendis nobis quia.', 98, 1, 0, '2020-11-27 14:25:35', '2021-02-04 12:05:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (62, 28, 26, 'Consequatur quidem quo aut voluptatem libero labore.', 'Dolores et aut tempora perspiciatis repellat velit. Ut laudantium aliquid fugiat animi rerum illum modi.', 19, 0, 0, '2021-01-10 18:09:05', '2021-02-16 20:05:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (63, 71, 27, '', 'Ut iusto doloremque consequuntur. Perspiciatis deserunt deserunt eius ullam est.', 40, 1, 1, '2021-02-11 20:34:01', '2020-11-20 06:09:34');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (64, 58, 5, '', 'Veritatis sapiente et id facere. In rerum distinctio voluptas et ut deserunt enim. Quis omnis dolorem fuga autem assumenda quia et distinctio. Praesentium dolorem itaque doloremque quam necessitatibus nihil.', 71, 1, 0, '2020-10-23 14:54:26', '2021-05-19 18:12:49');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (65, 90, 17, 'Quia ut enim doloribus.', 'Voluptatibus dolorem minus voluptatem voluptas debitis aspernatur esse ea. Blanditiis unde vel non sequi soluta. Perspiciatis quia quam praesentium et. Quia deleniti sit dolorum eum velit nisi.', 8, 1, 0, '2021-05-30 21:04:45', '2020-10-22 07:35:20');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (66, 33, 12, 'Magni officiis asperiores numquam reiciendis animi.', 'Ipsam ipsam tempora non eligendi totam eum est aut. Vel nam earum minima aut. Ut nihil dolor consequatur enim sit asperiores commodi.', 11, 0, 0, '2021-03-02 17:38:24', '2021-06-07 21:11:09');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (67, 39, 1, 'Illum voluptate sunt est in.', 'Enim unde est et sequi est. Ipsa deleniti tempora eum consequatur adipisci est. Eaque blanditiis adipisci dolore in et. Non sint autem consequatur voluptates.', 4, 0, 0, '2021-02-09 16:36:50', '2021-04-22 23:14:08');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (68, 58, 22, '', 'Odit numquam voluptatem quisquam doloribus exercitationem. Neque enim placeat dolore rerum eum. Minus dolor enim provident ut ea consequatur sed. Neque et soluta sit.', 29, 1, 0, '2021-06-09 02:51:32', '2021-02-04 06:00:49');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (69, 84, 26, '', 'Doloremque aperiam reprehenderit qui in veniam. Eum assumenda et iste impedit vel minima quidem. Delectus laborum tempore culpa deserunt aut minima vel. Sit id qui laboriosam reprehenderit quo.', 10, 1, 0, '2020-06-23 19:14:10', '2020-11-28 00:02:36');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (70, 96, 14, 'Mollitia sint qui maxime ut.', 'Vero mollitia aut asperiores nihil ipsum. In rerum quisquam expedita. Iusto omnis suscipit deserunt quae nihil. Animi consequatur dignissimos dolor aliquid ex perspiciatis quia.', 68, 1, 0, '2020-07-10 19:04:51', '2020-07-29 01:14:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (71, 43, 17, 'Ipsum fugiat ut quae libero.', 'Repudiandae officiis commodi enim tempore illum. Et sed mollitia asperiores quo in reprehenderit. Quisquam quibusdam aperiam rerum enim maxime laboriosam ut magni. Consequatur in rerum ea aspernatur.', 31, 1, 0, '2021-04-12 23:40:36', '2020-11-24 04:45:24');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (72, 89, 21, '', 'Ut dolor et asperiores repudiandae aut labore. Et quo dolorum est rerum voluptatem. Voluptatem velit nisi iure sequi.', 39, 1, 0, '2021-05-19 06:28:06', '2020-07-20 12:35:48');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (73, 86, 13, 'Qui perspiciatis quis voluptatem.', 'Repellendus labore natus perspiciatis quia quos. Ea ab beatae itaque asperiores. Excepturi sint iusto rerum incidunt sed atque. Alias non modi aliquid aut sunt.', 99, 1, 0, '2021-01-16 11:08:32', '2020-10-03 02:49:00');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (74, 71, 24, 'Sit ad reprehenderit asperiores.', 'Inventore aut magnam delectus tempora aspernatur quidem quisquam in. Quaerat voluptatum ipsam quia veritatis mollitia quaerat. Mollitia laborum culpa reprehenderit voluptatem placeat nobis accusamus aliquam.', 21, 1, 0, '2020-08-08 04:07:59', '2020-12-03 18:23:33');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (75, 11, 9, '', 'Sed quis nobis deserunt omnis quo. Incidunt ea necessitatibus ea ducimus officia. Omnis maxime natus at ipsa vero. Voluptatem commodi ut voluptas at reiciendis cupiditate suscipit.', 4, 1, 1, '2020-11-28 03:27:41', '2020-07-08 09:42:26');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (76, 39, 12, '', 'Doloremque natus similique voluptates iste veritatis neque. Qui molestiae quia alias et molestiae est hic.', 35, 1, 0, '2021-02-26 14:54:19', '2021-03-28 07:34:57');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (77, 2, 17, '', 'Ducimus quos veritatis blanditiis ut. Molestias et id aperiam cum ipsum. Tempore accusantium eos provident aperiam dolor possimus tempora. Libero sit ut qui.', 19, 0, 0, '2020-06-30 04:26:39', '2021-06-16 21:19:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (78, 17, 1, '', 'Et rerum est eos repellat aut. Dignissimos et ea cum est ipsum unde ut. Facilis est et aut praesentium voluptas assumenda.', 89, 1, 0, '2020-08-05 20:54:10', '2021-02-04 00:32:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (79, 1, 14, 'Sint aspernatur architecto placeat repellat.', 'Molestias sint deleniti rerum repellendus eos consequuntur. Aut est sit possimus illo. Et voluptatem ut ut qui id. Quae est sit enim labore vel.', 57, 0, 0, '2020-09-06 10:42:04', '2020-09-10 03:07:44');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (80, 49, 16, '', 'Iusto provident ea illum modi sit dolore. Sunt ratione voluptatem aut nisi enim velit aut. Illum deleniti magnam voluptatum sed quod. Quis vitae est autem placeat cumque. Architecto occaecati sint amet quisquam nostrum.', 35, 0, 0, '2021-04-18 08:24:44', '2021-06-22 20:15:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (81, 36, 7, '', 'Aut aut consequuntur dolorum sed fuga aut sit. Iure qui nemo tenetur temporibus sunt consectetur soluta. Et eos repellendus consequatur quo.', 53, 0, 0, '2021-05-08 05:02:39', '2020-09-18 04:09:39');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (82, 28, 24, 'Non maiores et ut ut amet eum.', 'Saepe nisi quaerat labore est. Amet impedit necessitatibus expedita id expedita aspernatur officia consequatur. Beatae neque labore aut deleniti.', 54, 0, 0, '2021-02-16 08:02:39', '2021-05-30 06:42:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (83, 53, 7, '', 'Non dicta aut omnis expedita ut et. Incidunt repellendus velit eaque qui. Consequatur placeat minima nesciunt culpa doloribus quia molestias odio.', 100, 1, 1, '2021-04-22 19:45:55', '2020-08-05 21:00:19');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (84, 39, 2, 'Dolorum sapiente autem ut.', 'Ullam harum atque vel eveniet facilis impedit nihil a. Similique sint ut omnis dolores quas ea placeat. Corrupti architecto nihil aliquid distinctio quia qui ratione.', 43, 1, 0, '2020-09-21 09:39:41', '2020-07-29 23:08:29');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (85, 1, 17, '', 'Possimus quia voluptatibus vitae excepturi tempore. Voluptas rerum nihil necessitatibus quo. Minus quis dignissimos officiis facilis earum cupiditate aut. Tenetur et nihil repellat laborum.', 23, 1, 0, '2020-12-20 10:12:16', '2020-07-09 02:23:45');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (86, 85, 18, '', 'Quo ut eos ad voluptas. Similique deserunt aut voluptates unde voluptatibus. Dolores molestiae quia numquam consequuntur.', 88, 1, 0, '2021-03-19 11:43:19', '2020-07-26 21:27:47');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (87, 96, 1, 'Voluptatem at itaque dolores.', 'Quis consequatur atque nobis odio quaerat ratione. Omnis eos exercitationem repudiandae est cum dolorem. Dicta alias cupiditate laborum.', 96, 1, 0, '2020-11-20 23:24:34', '2020-06-24 13:09:26');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (88, 2, 9, 'Aut sint maxime quaerat et harum.', 'Distinctio quasi aut est fugit. Voluptatum ea odio aut et ut. Quo ut occaecati quo itaque.', 15, 0, 0, '2020-12-16 13:03:28', '2021-06-06 20:46:57');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (89, 93, 10, 'Ut distinctio aut rem voluptatum autem magnam.', 'Error illo adipisci vel eligendi adipisci quia. Molestias molestias blanditiis enim qui.', 42, 1, 0, '2020-11-23 17:10:33', '2020-12-16 11:51:50');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (90, 70, 10, '', 'Reiciendis temporibus dolore in rem praesentium qui. Occaecati ducimus ducimus quia iste. Iure voluptas occaecati quibusdam nisi quidem animi rerum quisquam.', 20, 1, 0, '2020-09-04 03:12:33', '2020-11-14 11:29:44');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (91, 2, 17, '', 'Rerum voluptatibus autem praesentium voluptatibus quibusdam officiis ut. Harum esse veniam repudiandae occaecati officia quia mollitia. Blanditiis accusamus consequatur praesentium magnam est est.', 41, 1, 1, '2020-12-22 07:29:52', '2021-04-07 04:20:51');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (92, 28, 11, 'Autem dolorem minima rem excepturi rerum enim.', 'Ab adipisci exercitationem quo tenetur facilis deserunt quia. Qui non ipsa et ratione eius. Illum omnis et minus iusto et voluptatem. Facilis culpa officia quo. Nobis ipsam voluptates eius laudantium quisquam hic nisi.', 89, 1, 1, '2021-06-10 22:21:42', '2020-09-15 03:53:45');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (93, 48, 24, '', 'Sed quia quibusdam suscipit aut. Explicabo quod porro est aut voluptatem quia et. Cupiditate unde odit aut aut illo exercitationem qui et. Quia quia pariatur fugit et perferendis autem alias.', 38, 1, 0, '2020-11-13 16:19:32', '2021-01-05 05:34:46');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (94, 11, 19, 'Eum distinctio esse ut consectetur cupiditate.', 'Corporis itaque aut ad ipsa aspernatur. Ut possimus culpa voluptates neque. Velit et a quam sed nemo. Officia accusantium et veniam et.', 5, 1, 0, '2020-07-22 20:52:52', '2021-04-28 08:18:58');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (95, 11, 3, '', 'Et accusantium cumque omnis harum itaque et non. Mollitia sequi non molestiae adipisci autem similique eum. Qui quaerat dignissimos ut aut quis pariatur. Temporibus at velit incidunt.', 15, 1, 0, '2020-07-16 08:30:05', '2020-11-13 09:33:49');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (96, 60, 27, '', 'Ea ipsa ut placeat possimus veniam quia. Dolores animi et ut eos ut. Illo dolores quo dicta natus dolore porro nemo.', 95, 1, 0, '2020-08-05 21:38:07', '2020-10-31 06:47:35');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (97, 69, 27, 'Impedit quo quibusdam voluptas ducimus blanditiis similique.', 'Quia numquam expedita vel laudantium. Quam adipisci rerum provident doloribus ducimus deleniti est. Id omnis quae mollitia ut. Nisi ex optio alias.', 19, 1, 0, '2020-06-25 20:10:43', '2020-07-08 18:53:02');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (98, 12, 13, '', 'Et porro dolore ut quia porro beatae doloribus. Aut ut illum et labore provident. Iste ipsa dolor ad adipisci voluptatibus natus veniam.', 19, 0, 0, '2021-03-24 00:06:37', '2020-11-07 10:59:47');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (99, 22, 25, 'Consequatur voluptate ipsum et.', 'Qui id qui consequatur natus adipisci voluptatum quod et. Nostrum et eligendi occaecati harum repudiandae nesciunt quas nihil. Nostrum architecto quos similique non dolore at maxime dolore. Corporis maiores voluptatibus totam quam iste modi.', 84, 1, 0, '2021-04-17 01:41:22', '2021-04-27 00:38:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (100, 93, 8, '', 'Culpa molestiae in est alias ipsa quis sunt. Quis non unde qui corporis laudantium. Autem dolor assumenda quis et et voluptas.', 73, 1, 0, '2020-09-19 20:17:35', '2021-05-30 03:24:54');

-- приведем данные в порядок
UPDATE posts SET updated_at = NOW() WHERE updated_at < created_at; 
-- у нас могут быть посты без community_id и media_id, смоделируем ситуацию
UPDATE posts SET community_id = NULL WHERE id = (1+FLOOR(RAND()*100)); -- повторить несколько раз
UPDATE posts SET media_id = NULL WHERE id = (1+FLOOR(RAND()*100)); -- повторить несколько раз


-- 2. СОЗДАТЬ ВСЕ НЕОБХОДИМЫЕ ВНЕШНИЕ КЛЮЧИ И ДИАГРАММУ ОТНОШЕНИЙ.

-- Для таблицы профилей
-- Добавим внешние ключи, которые рассматривались на уроке
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

-- Добавим оставшиеся внешние ключи для таблицы профилей
ALTER TABLE profiles
  ADD CONSTRAINT profiles_city_id_fk 
    FOREIGN KEY (city_id) REFERENCES cities(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT profiles_country_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT profiles_status_id_fk 
    FOREIGN KEY (status_id) REFERENCES user_statuses(id)
      ON DELETE SET NULL;

-- Для таблицы сообщений
-- Добавляем внешние ключи, которые рассматривались на уроке
-- При удалении юзера, который/которому отправили сообщение, логичнее оставлять сообщение у другого юзера
-- с указанием, что оно от удаленного пользователя или адресовано удаленному пользователю
-- Поэтому разрешим соответствующим колонкам в messages принимать значение NULL и сделаем для внешних ключей
-- ON DELETE SET NULL 
ALTER TABLE messages MODIFY COLUMN from_user_id INT UNSIGNED COMMENT "Ссылка на отправителя сообщения";
ALTER TABLE messages MODIFY COLUMN to_user_id INT UNSIGNED COMMENT "Ссылка на получателя сообщения";

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id)
      ON DELETE SET NULL;

-- Для таблицы городов
ALTER TABLE cities
  ADD CONSTRAINT cities_country_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id)
      ON DELETE CASCADE;

-- Для таблицы медиа
-- Думаю стоит запретить удалять медиатип если у нас есть загруженные файлы такого типа
-- С юзерами неоднозначно, с одной стороны весь контент удаленного юзера должен стать недоступен другим
-- с другой стороны в сообщениях было бы неплохо оставить то что он присылал другим юзерам
-- вероятно нужны отдельные таблицы для медиа которые используются в профиле, и для других мест
ALTER TABLE media
  ADD CONSTRAINT media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;

-- Для таблицы друзей
ALTER TABLE friendship 
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_status_id_fk 
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
      ON DELETE RESTRICT;

-- Для таблицы связи сообществ и юзеров
ALTER TABLE communities_users 
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
     
-- Для таблицы сообществ
ALTER TABLE communities 
  ADD CONSTRAINT communities_category_id_fk 
    FOREIGN KEY (category_id) REFERENCES communities_categories(id)
      ON DELETE SET DEFAULT,
  ADD CONSTRAINT communities_photo_id_fk 
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

-- Для таблицы постов
-- Сомнительно что надо удалять пост из сообщества при удалении юзера, я бы разрешила автору быть NULL 
-- и возможно разделила бы таблицы личных и общественных постов, но пусть будет так
ALTER TABLE posts 
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL;

-- Для таблицы лайков
-- т.к. target может быть сообщением/медиафайлом/юзером/постом, не стала создавать внешний ключ для target_id
ALTER TABLE likes 
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE CASCADE;
     
-- Диаграмма отношений в приложенном файле


-- 3. ОПРЕДЕЛИТЬ КТО БОЛЬШЕ ПОСТАВИЛ ЛАЙКОВ (ВСЕГО) - МУЖЧИНЫ ИЛИ ЖЕНЩИНЫ?
 
SELECT IF(
	(SELECT COUNT(id) FROM likes WHERE user_id IN (
		SELECT user_id FROM profiles WHERE gender = "m")
	) 
	> 
	(SELECT COUNT(id) FROM likes WHERE user_id IN (
		SELECT user_id FROM profiles WHERE gender = "f")
	), 
   'male', 'female') as who_gave_more_likes;
 

-- 4. ПОДСЧИТАТЬ КОЛИЧЕСТВО ЛАЙКОВ КОТОРЫЕ ПОЛУЧИЛИ 10 САМЫХ МОЛОДЫХ ПОЛЬЗОВАТЕЛЕЙ.

SELECT target_id, COUNT(id) as likes
	FROM likes 
	WHERE target_id IN (
  		SELECT * FROM (
  			SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
  			) as ten_youngest
  		) 
  		AND target_type_id = (
  			SELECT id FROM target_types WHERE name = 'users'
  		)
  	GROUP BY target_id;

-- 5. НАЙТИ 10 ПОЛЬЗОВАТЕЛЕЙ, КОТОРЫЕ ПРОЯВЛЯЮТ НАИМЕНЬШУЮ АКТИВНОСТЬ В
-- ИСПОЛЬЗОВАНИИ СОЦИАЛЬНОЙ СЕТИ
-- (КРИТЕРИИ АКТИВНОСТИ НЕОБХОДИМО ОПРЕДЕЛИТЬ САМОСТОЯТЕЛЬНО).

-- выберем юзеров, которые не ставят лайки, не пишут сообщения и посты и не грузят файлы
SELECT id FROM users WHERE id NOT IN (
	(
	SELECT user_id FROM likes
	)
UNION (
	SELECT from_user_id FROM messages
	)
UNION (
	SELECT user_id FROM posts
	)
UNION (
	SELECT user_id FROM media
	)
) LIMIT 10;