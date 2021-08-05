#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Omnis sit fuga non.', '2020-11-02 00:53:42', '2021-03-28 13:49:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Qui beatae doloremque corrupti omnis iusto in.', '2020-11-22 21:56:10', '2020-10-26 18:05:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Sit ut qui repudiandae qui unde.', '2021-02-07 01:29:16', '2020-11-17 02:48:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Aliquid et et quisquam et.', '2020-10-20 22:24:32', '2021-06-07 08:43:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Vel voluptatibus delectus temporibus saepe doloribus quod.', '2020-08-03 02:21:28', '2021-02-06 05:06:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Fugit magni voluptas illum.', '2021-02-10 01:07:54', '2021-03-06 17:19:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Consequuntur quaerat mollitia adipisci voluptas eligendi deserunt.', '2020-11-01 15:48:10', '2020-12-20 20:17:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Quo voluptatum et qui magni animi.', '2021-02-20 02:27:04', '2021-02-14 13:22:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Neque rerum exercitationem eveniet neque laborum illum.', '2021-04-12 22:48:09', '2021-03-29 23:52:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Et culpa aut eaque adipisci qui eum.', '2020-12-12 05:30:47', '2020-12-26 04:57:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'Et aperiam molestiae sit.', '2020-10-09 01:41:54', '2021-01-08 09:43:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'Facere dolorem deleniti ipsum qui neque culpa.', '2021-05-28 08:23:41', '2020-08-01 11:48:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'Omnis voluptatem corporis qui veniam reprehenderit ex.', '2020-11-08 13:38:48', '2021-01-25 07:34:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'Voluptatem est totam quasi est qui eius.', '2021-03-25 08:47:30', '2021-06-13 22:17:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'Eos ratione natus voluptas totam recusandae facilis.', '2021-03-13 06:37:19', '2021-02-22 01:55:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'Nesciunt laboriosam autem ut.', '2021-02-14 10:20:52', '2020-11-06 11:21:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'Eum qui ut laborum dolorum aut sequi.', '2020-06-22 15:26:08', '2021-04-21 04:44:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'Explicabo sunt minus repudiandae.', '2020-06-19 04:26:07', '2020-11-10 07:43:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'Odit ipsa molestiae odit ipsam voluptatem saepe.', '2020-10-25 08:32:36', '2021-01-28 09:06:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'Enim veniam officiis doloremque sed odit autem.', '2021-03-20 20:53:53', '2020-08-28 01:43:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'Repellat sed ea corrupti iste.', '2020-08-19 16:30:12', '2020-12-27 17:57:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'Dolorem dicta sint id commodi molestiae et.', '2020-06-18 07:17:01', '2021-01-03 10:57:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'Dicta ut delectus temporibus.', '2020-11-05 18:27:05', '2020-12-27 17:59:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'Aut voluptate iusto dolores vero fugiat atque et.', '2021-03-15 14:00:39', '2021-05-09 14:23:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'Iusto ipsa dolorem officia illo occaecati.', '2021-01-15 21:22:59', '2021-01-19 10:59:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'Porro quasi earum dicta.', '2021-03-31 08:10:04', '2021-03-11 08:29:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'Molestiae aperiam et incidunt dolore molestiae necessitatibus.', '2021-05-15 00:34:59', '2021-04-16 22:41:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'Ea labore et nulla qui.', '2020-09-14 20:26:41', '2021-02-10 03:30:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'Occaecati in alias soluta corporis.', '2020-06-19 12:51:40', '2021-02-10 20:58:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'Tempore a est quidem quia.', '2020-09-25 05:52:19', '2020-06-17 21:21:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'Ipsa est corporis omnis.', '2020-08-20 07:15:46', '2021-01-27 14:38:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'Occaecati reprehenderit soluta deleniti debitis reprehenderit eos.', '2020-10-29 19:32:23', '2020-10-05 05:38:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'Sunt velit voluptatem occaecati.', '2020-08-18 21:49:13', '2021-01-29 13:11:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'Dolorem quia aut non.', '2020-08-30 06:24:50', '2020-08-20 19:33:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'Eum modi delectus beatae.', '2021-01-20 17:54:18', '2021-01-21 17:08:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'Nulla corrupti labore labore vero facere.', '2020-10-30 04:49:09', '2020-10-28 02:04:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'Qui aperiam praesentium quia at natus unde.', '2021-03-26 11:41:07', '2021-05-18 04:50:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'Aperiam laboriosam ullam repellat accusantium beatae.', '2021-05-26 13:34:37', '2020-06-21 04:44:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'Cum quas laboriosam ipsa doloribus eos.', '2020-09-12 21:06:10', '2021-03-22 13:07:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'Non expedita dolorem dolorem.', '2020-08-28 08:07:49', '2020-08-20 23:37:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'Et suscipit alias animi et ut.', '2020-11-19 05:48:02', '2020-10-31 17:25:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'Tempora qui placeat ut tenetur voluptatem non.', '2021-06-11 05:20:20', '2021-05-06 10:15:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'Ab sit enim libero sint ut tempora.', '2020-11-30 04:59:56', '2021-01-06 05:31:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'Minus voluptas autem unde.', '2021-05-22 18:20:09', '2021-05-11 07:15:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'Illum et nulla tempore aut repellat.', '2020-07-23 04:21:58', '2020-12-19 03:05:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'Esse qui vel et sed.', '2020-08-21 17:24:51', '2021-01-12 19:53:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'Omnis amet quaerat labore veritatis odit.', '2021-02-01 23:32:05', '2021-05-19 18:09:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'Id expedita veritatis a qui provident.', '2020-09-11 06:19:22', '2021-04-24 23:45:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'Ut et eligendi ducimus eveniet quia ex.', '2021-03-23 13:35:43', '2020-07-26 11:12:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'In dolorum quisquam et ipsa dicta.', '2020-07-15 12:05:33', '2020-06-25 20:21:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'Aut animi ut necessitatibus sunt unde.', '2020-10-16 23:13:45', '2020-09-22 11:37:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'Dolor sit quos quis fugit fuga.', '2021-05-08 03:16:13', '2021-06-12 23:26:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'Iure aliquam magnam culpa nisi.', '2021-03-26 18:34:56', '2020-11-15 06:58:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'Rerum velit earum ab animi dolorum.', '2021-02-02 05:48:55', '2020-12-15 23:09:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'Est aliquid pariatur temporibus cupiditate.', '2020-10-24 17:04:15', '2020-08-28 04:17:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'Qui id incidunt velit ab pariatur quam.', '2020-06-26 12:07:32', '2021-05-27 16:14:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'Impedit aliquid vel nihil quidem laudantium tempora.', '2020-08-18 17:45:54', '2021-02-03 18:12:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'Ex aut rerum ipsa.', '2020-11-18 11:29:50', '2021-01-16 23:26:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'Repellendus voluptatibus fugiat dolorem sunt porro.', '2020-06-15 22:30:54', '2021-03-08 14:41:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'Doloremque earum quae nobis.', '2021-02-22 12:01:36', '2020-08-28 01:13:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'Consequatur quae itaque voluptas possimus.', '2020-12-26 02:55:27', '2020-09-01 22:34:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'Autem quisquam occaecati dolores aspernatur aut.', '2021-02-01 13:44:34', '2021-03-23 05:36:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'In qui hic quia.', '2021-01-21 12:40:17', '2021-04-27 01:03:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'Dolorem quam commodi sit.', '2020-10-16 22:08:33', '2021-01-17 12:53:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'Repellat perspiciatis perferendis maxime.', '2020-06-16 10:10:41', '2020-10-20 19:32:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'At sint aut aspernatur voluptatem ducimus.', '2021-01-30 17:24:25', '2020-08-09 10:48:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'Fuga ut qui et.', '2021-02-27 12:46:54', '2020-07-20 00:11:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'Vitae cumque debitis nam est qui.', '2020-09-29 08:36:12', '2020-07-15 22:14:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'Aspernatur officiis velit voluptatem illo.', '2021-03-26 04:11:19', '2020-09-18 06:20:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'Similique nostrum dignissimos tempore ullam.', '2020-07-16 02:44:09', '2020-12-22 09:27:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'Cum et consequatur cupiditate adipisci.', '2020-10-30 19:27:02', '2020-09-23 21:44:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'Qui quibusdam blanditiis illo corporis odio veritatis.', '2020-10-20 14:01:42', '2020-07-12 15:41:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'Porro placeat ut doloribus aut nam tenetur.', '2021-05-16 06:19:50', '2020-12-14 04:45:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'Doloremque reprehenderit quis excepturi nesciunt.', '2021-01-07 06:04:21', '2021-05-21 21:26:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'Quos inventore exercitationem suscipit nemo earum.', '2021-01-16 22:59:07', '2021-03-10 12:58:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'Reiciendis nobis consequuntur voluptates deserunt sunt quasi.', '2020-10-09 12:21:22', '2020-08-17 23:34:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'Beatae voluptate unde vel eaque tempore illum.', '2021-03-28 20:37:26', '2020-08-22 13:02:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'Aperiam laborum alias labore ut voluptates nihil.', '2021-02-25 16:23:46', '2020-10-22 23:02:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'Officia accusantium omnis deleniti.', '2020-10-09 10:51:29', '2020-09-29 15:52:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'Nostrum rem optio cumque.', '2020-10-31 01:04:26', '2021-02-18 20:45:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'Repellendus inventore exercitationem similique esse.', '2020-09-07 09:23:30', '2020-06-21 07:12:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'Voluptas nulla commodi enim.', '2021-01-23 09:13:32', '2021-04-11 17:21:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'Quisquam officia est nobis.', '2021-04-21 12:04:24', '2020-07-09 09:03:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'Odio non facilis fugit cupiditate.', '2021-02-08 08:41:50', '2021-01-23 15:17:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'Aliquam rerum dolores non culpa eos in.', '2021-05-19 09:28:51', '2021-03-09 16:07:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'Eveniet voluptas est iure.', '2020-09-18 20:16:49', '2021-06-09 08:48:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'Corrupti quaerat molestiae quis sunt cum inventore.', '2020-12-31 09:02:11', '2021-04-14 18:07:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'Ipsa atque in quidem.', '2020-08-22 19:22:14', '2021-03-05 23:12:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'Laudantium officia enim accusantium dolorem non quis.', '2020-10-04 11:07:59', '2021-01-31 07:40:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'Rerum laboriosam numquam a beatae vero repellat.', '2020-07-13 16:39:46', '2021-06-04 19:17:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'Qui suscipit consequatur enim culpa.', '2020-11-26 14:35:59', '2021-02-21 12:49:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'Aspernatur corporis est corrupti harum sit.', '2021-01-31 05:01:52', '2021-03-03 19:16:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'Voluptatem provident fugiat officiis nulla.', '2021-01-25 21:13:47', '2021-03-17 22:57:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'Asperiores sunt doloremque inventore voluptatem ut eligendi.', '2020-10-21 04:31:46', '2020-10-16 16:45:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'Repellendus reprehenderit quae quia aut laudantium et.', '2020-10-07 02:50:59', '2021-05-30 09:52:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'Accusantium architecto in et accusamus non aut.', '2020-06-20 10:12:45', '2020-08-06 22:16:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'Qui rem saepe repudiandae occaecati.', '2021-05-24 13:09:07', '2021-04-17 02:00:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'Aut magnam commodi dolores accusantium nihil dolores.', '2021-02-23 00:57:55', '2020-11-10 05:25:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'Quia harum aut aut.', '2021-04-26 19:29:58', '2020-08-18 03:00:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'Libero qui eum et dolor et voluptate.', '2021-04-06 14:14:05', '2020-10-01 17:04:52');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 6, '2020-08-20 11:23:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 16, '2020-12-19 22:57:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 50, '2020-08-21 01:03:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 20, '2020-06-14 11:38:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 49, '2021-02-08 03:59:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 89, '2020-09-26 22:29:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 100, '2020-09-05 13:57:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 42, '2021-04-02 19:08:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 29, '2021-01-02 11:52:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 20, '2020-09-19 21:21:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 35, '2021-02-11 01:05:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 34, '2020-12-01 15:29:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 65, '2021-04-11 15:52:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 55, '2021-04-30 05:24:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 10, '2020-12-11 11:59:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 76, '2021-05-20 07:13:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 85, '2021-05-18 07:29:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 4, '2021-03-04 03:22:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 22, '2021-03-10 16:56:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 3, '2021-04-28 09:34:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 36, '2021-02-26 23:56:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 38, '2020-07-05 06:52:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 40, '2020-11-09 09:53:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 35, '2020-10-27 01:34:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 2, '2021-01-10 05:26:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 97, '2020-09-09 06:48:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 21, '2020-12-02 13:30:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 77, '2020-09-26 12:46:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 32, '2021-03-16 04:35:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 85, '2021-02-23 20:00:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 13, '2021-05-20 17:17:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 40, '2021-05-16 22:39:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 57, '2020-12-24 07:33:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 15, '2021-03-09 13:27:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 79, '2021-02-16 10:33:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 81, '2021-02-12 16:29:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 95, '2020-09-20 08:14:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 49, '2021-03-30 08:31:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 43, '2020-06-15 11:29:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 53, '2020-11-27 16:54:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 20, '2021-02-18 21:55:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 34, '2021-05-12 23:29:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 9, '2021-02-18 22:11:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 69, '2020-08-01 11:07:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 78, '2021-02-23 18:30:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 90, '2021-04-11 23:17:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 31, '2021-01-13 08:23:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 59, '2020-11-30 01:47:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 37, '2020-07-10 11:43:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 12, '2020-08-21 21:25:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 42, '2020-08-14 04:57:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 59, '2020-12-09 17:27:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 50, '2020-08-16 18:42:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 93, '2020-07-26 07:01:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 50, '2020-07-11 19:38:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 52, '2020-11-26 20:33:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 87, '2020-08-04 01:08:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 24, '2020-11-19 05:47:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 56, '2020-12-26 05:32:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 17, '2020-11-12 05:00:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 73, '2020-08-08 19:17:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 93, '2020-12-31 02:39:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 62, '2020-10-28 00:08:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 85, '2020-11-16 14:09:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 35, '2021-05-30 19:31:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 38, '2021-04-21 22:42:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 37, '2021-04-02 05:11:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 78, '2021-03-21 15:11:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 8, '2020-10-08 09:19:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 12, '2020-07-03 15:52:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 63, '2020-08-03 23:04:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 67, '2021-05-29 22:40:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 65, '2021-03-05 14:47:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 87, '2021-06-01 08:27:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 97, '2021-02-07 08:49:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 92, '2020-06-19 22:16:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 41, '2021-05-20 00:23:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 68, '2021-06-12 10:01:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 97, '2020-09-13 18:44:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 39, '2020-12-22 15:27:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 66, '2021-05-25 04:18:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 20, '2020-07-11 00:46:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 28, '2020-07-01 03:43:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 7, '2020-09-16 20:32:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 37, '2020-11-11 06:10:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 82, '2021-01-11 17:48:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 39, '2021-05-05 14:22:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 65, '2020-12-08 10:27:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 90, '2020-07-03 19:55:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 54, '2021-04-23 02:24:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 3, '2021-05-29 02:35:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 42, '2020-07-09 10:32:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 56, '2020-06-20 09:02:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 87, '2020-07-16 03:43:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 87, '2020-11-18 22:45:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 74, '2021-04-13 11:38:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 12, '2020-07-22 09:26:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 38, '2020-11-02 02:20:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 58, '2021-04-10 19:54:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 76, '2021-05-13 20:52:38');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 22, 5, '2006-02-28 03:13:42', '1988-04-27 00:00:00', '2017-12-28 05:01:17', '1980-11-21 06:33:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 68, 5, '1991-09-13 08:51:29', '0000-00-00 00:00:00', '2012-08-22 11:09:54', '1979-04-25 13:30:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 49, 3, '1992-08-12 19:29:05', '2000-01-07 00:00:00', '1971-11-12 11:46:12', '1975-06-13 05:50:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 60, 3, '2009-08-18 04:04:23', '0000-00-00 00:00:00', '1975-05-02 20:03:24', '1985-12-03 18:11:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 67, 2, '2017-04-09 22:39:44', '0000-00-00 00:00:00', '1983-10-25 01:21:47', '1980-06-24 17:22:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 78, 4, '2015-10-01 20:58:38', '1988-01-12 00:00:00', '1977-02-20 18:12:20', '2005-03-10 12:36:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 74, 1, '2014-01-10 06:12:11', '0000-00-00 00:00:00', '1974-11-10 13:22:03', '2008-04-17 06:59:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 92, 3, '2011-08-27 04:30:34', '2003-12-17 00:00:00', '1992-12-22 18:30:52', '1994-01-09 11:58:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 38, 1, '1983-07-18 02:16:55', '1994-03-02 00:00:00', '2018-07-27 08:18:15', '2001-07-18 19:51:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 7, 3, '1971-06-09 07:41:04', '1975-03-13 00:00:00', '2012-01-20 10:21:44', '1990-09-04 11:28:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 64, 3, '1973-07-31 23:22:43', '2016-08-20 00:00:00', '1992-03-07 03:49:25', '2009-10-21 01:18:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 68, 2, '1993-07-02 17:53:39', '1981-04-09 00:00:00', '1983-04-29 17:50:57', '1981-09-26 22:47:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 28, 5, '1978-11-15 07:17:55', '2000-01-04 00:00:00', '1970-03-23 12:53:37', '1971-02-13 22:52:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 32, 1, '1995-03-27 20:22:09', '1993-08-01 00:00:00', '1980-06-23 00:59:20', '1973-07-18 03:19:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 15, 5, '1988-11-02 18:57:23', '1986-09-23 00:00:00', '1992-03-04 12:03:57', '2002-01-14 18:46:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 92, 5, '1994-01-27 21:24:24', '0000-00-00 00:00:00', '2015-09-04 16:23:41', '2008-02-27 06:47:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 97, 4, '2019-03-08 13:26:27', '1986-09-27 00:00:00', '2002-05-16 09:48:31', '1976-08-21 18:31:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 8, 4, '1978-05-20 13:03:49', '0000-00-00 00:00:00', '2019-06-12 02:43:13', '2006-02-16 12:40:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 50, 4, '2013-02-14 16:23:33', '1989-12-11 00:00:00', '1981-11-07 11:06:09', '2018-11-10 10:15:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 55, 5, '1988-11-07 14:15:18', '0000-00-00 00:00:00', '1983-12-10 22:46:13', '2017-10-24 16:54:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 75, 3, '2013-08-15 19:55:52', '2000-08-02 00:00:00', '2016-02-17 04:18:37', '1972-03-24 01:51:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 95, 2, '1989-10-09 05:47:22', '2016-01-18 00:00:00', '1998-01-20 16:01:17', '2005-03-02 10:03:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 94, 3, '1988-03-26 17:33:56', '0000-00-00 00:00:00', '1987-07-03 19:51:31', '1980-12-17 10:43:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 14, 5, '2000-03-30 03:12:29', '0000-00-00 00:00:00', '1998-02-12 20:47:43', '1992-05-23 10:42:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 80, 3, '1992-09-13 10:52:32', '1980-09-10 00:00:00', '1990-11-01 19:08:39', '2018-07-06 22:29:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 2, 2, '1984-12-29 04:47:52', '0000-00-00 00:00:00', '1998-06-22 08:52:28', '1996-03-23 08:48:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 42, 2, '2007-08-19 10:15:15', '1989-12-26 00:00:00', '1992-04-16 22:28:40', '1998-11-15 10:16:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 95, 1, '1977-12-30 01:31:31', '2007-10-13 00:00:00', '2009-06-17 15:30:58', '1993-11-26 16:10:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 35, 4, '2014-03-15 16:42:34', '2020-11-24 00:00:00', '2016-09-20 13:53:59', '2005-12-27 17:17:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 62, 2, '2008-10-19 09:22:35', '0000-00-00 00:00:00', '1975-09-14 08:04:39', '2013-05-23 19:58:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 76, 3, '1973-01-31 02:41:03', '1997-02-04 00:00:00', '2001-02-22 18:38:14', '1979-04-12 11:05:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 82, 1, '1972-03-28 18:37:10', '1978-02-16 00:00:00', '2017-04-12 23:14:17', '1972-06-20 02:20:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 58, 2, '1997-06-13 06:26:13', '0000-00-00 00:00:00', '1990-10-04 21:16:03', '1998-09-10 07:12:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 14, 1, '1993-12-18 10:40:55', '1987-09-10 00:00:00', '2017-11-27 09:15:37', '1987-09-15 11:46:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 28, 4, '1985-05-13 06:02:15', '0000-00-00 00:00:00', '1970-03-12 02:35:12', '1976-01-22 13:08:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 83, 5, '1974-12-29 05:36:26', '0000-00-00 00:00:00', '1970-07-26 17:50:12', '2000-10-21 22:21:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 21, 3, '1981-06-08 16:52:28', '2007-12-07 00:00:00', '1995-12-18 03:32:01', '1986-03-23 20:29:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 39, 2, '2008-02-05 23:32:47', '1990-02-04 00:00:00', '1996-06-18 11:29:50', '2006-07-12 23:24:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 80, 2, '1979-11-09 01:34:39', '2004-12-06 00:00:00', '1996-04-17 23:31:00', '2018-07-20 03:59:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 30, 1, '1979-07-20 11:27:24', '2009-08-30 00:00:00', '2017-04-27 23:24:25', '1974-05-04 06:17:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 39, 3, '1976-07-05 17:24:06', '2013-07-16 00:00:00', '2014-01-17 08:20:27', '2015-09-24 06:51:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 50, 1, '2003-03-14 03:45:33', '2004-10-12 00:00:00', '2018-01-25 13:00:02', '1975-06-02 08:12:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 19, 2, '1999-02-18 19:05:45', '0000-00-00 00:00:00', '2013-03-27 16:23:43', '1992-08-19 20:11:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 27, 3, '1978-08-10 09:46:57', '0000-00-00 00:00:00', '1985-06-28 10:22:40', '2011-12-08 04:43:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 80, 3, '1984-12-28 09:54:24', '2004-10-17 00:00:00', '1988-01-07 17:23:37', '2007-12-11 23:58:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 46, 5, '1991-06-18 18:52:40', '1983-11-13 00:00:00', '2002-03-03 16:50:24', '1979-03-20 15:43:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 55, 3, '2004-10-24 22:06:19', '0000-00-00 00:00:00', '1990-06-12 08:39:18', '1985-02-27 09:57:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 68, 3, '1974-05-05 21:35:12', '0000-00-00 00:00:00', '1999-10-01 02:44:30', '1992-08-10 19:23:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 36, 4, '2004-05-31 18:01:28', '0000-00-00 00:00:00', '1990-11-17 07:56:06', '2010-10-20 23:20:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 61, 4, '1984-06-21 16:09:17', '0000-00-00 00:00:00', '2020-11-30 10:41:15', '1992-12-22 01:51:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 13, 3, '1976-06-17 00:11:09', '2004-03-14 00:00:00', '2019-05-09 18:22:01', '2015-12-29 06:14:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 20, 3, '1971-06-22 12:24:15', '2012-10-03 00:00:00', '1992-03-17 08:22:03', '1985-02-06 10:10:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 63, 2, '1982-06-02 01:05:48', '2016-09-01 00:00:00', '2021-03-03 11:03:14', '1993-05-26 18:27:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 48, 5, '2003-09-09 08:14:37', '0000-00-00 00:00:00', '2009-09-16 23:36:36', '2016-06-08 02:25:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 70, 1, '1993-12-28 19:23:09', '2006-10-25 00:00:00', '1978-04-13 04:42:23', '1976-04-26 15:06:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 59, 4, '1995-07-13 14:20:04', '1974-12-21 00:00:00', '2014-02-04 01:15:32', '2001-12-23 12:23:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 40, 2, '1993-12-30 01:45:20', '1973-11-03 00:00:00', '1995-08-27 17:44:39', '2002-03-28 11:36:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 40, 2, '1973-03-18 23:32:00', '0000-00-00 00:00:00', '1993-05-27 14:28:35', '1993-03-02 16:22:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 50, 5, '2012-11-25 08:47:46', '2016-06-07 00:00:00', '2010-02-06 07:15:22', '1987-05-02 23:10:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 48, 4, '2018-06-22 04:06:29', '0000-00-00 00:00:00', '2008-12-27 13:28:31', '1982-05-25 15:50:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 6, 5, '1992-03-04 22:45:20', '1987-03-02 00:00:00', '1981-10-18 09:06:57', '1995-11-21 16:45:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 23, 1, '2004-10-18 12:26:00', '1990-08-07 00:00:00', '2017-07-10 20:03:03', '2019-02-14 03:12:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 98, 2, '1982-09-09 10:00:51', '2012-02-19 00:00:00', '2002-08-17 20:18:40', '2015-01-10 09:03:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 17, 5, '2004-08-19 00:13:28', '1975-04-27 00:00:00', '1979-12-05 23:27:10', '1984-03-20 03:44:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 27, 4, '1975-05-23 00:38:07', '0000-00-00 00:00:00', '2002-08-15 19:54:18', '2012-03-15 02:02:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 46, 5, '2014-09-24 22:36:33', '0000-00-00 00:00:00', '2011-06-17 05:51:22', '1970-05-10 00:47:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 57, 1, '1996-11-18 22:48:09', '0000-00-00 00:00:00', '1997-11-03 05:31:46', '1985-03-31 19:02:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 56, 4, '1971-04-11 22:11:33', '1987-05-29 00:00:00', '1996-11-02 18:06:05', '2004-10-06 07:12:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 26, 3, '2005-05-11 04:44:32', '0000-00-00 00:00:00', '1979-01-06 20:07:56', '1996-05-17 10:24:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 50, 4, '1989-06-13 04:31:47', '2007-11-07 00:00:00', '1974-08-26 01:33:16', '1977-10-11 20:53:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 74, 3, '1971-01-15 04:23:00', '2006-03-26 00:00:00', '2006-12-07 12:47:02', '2007-09-24 10:05:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 13, 3, '1990-09-14 13:39:55', '2003-08-26 00:00:00', '1993-10-23 23:20:59', '1987-01-18 03:47:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 15, 5, '1989-09-12 02:18:37', '0000-00-00 00:00:00', '2011-10-09 02:48:19', '1977-08-26 13:28:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 17, 4, '1986-02-13 00:10:38', '1975-12-01 00:00:00', '1971-07-02 19:26:56', '2000-07-05 05:01:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 11, 4, '1981-11-30 09:42:45', '2005-05-11 00:00:00', '1994-12-18 17:20:36', '1995-09-10 14:47:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 23, 2, '1998-12-27 11:26:54', '1981-09-21 00:00:00', '2006-03-19 13:17:39', '1981-06-28 10:17:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 46, 1, '1998-04-22 13:14:58', '0000-00-00 00:00:00', '2007-11-05 09:03:44', '1989-04-04 23:19:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 89, 3, '1991-04-25 21:47:47', '2001-06-04 00:00:00', '2003-10-05 10:35:47', '1994-09-08 02:26:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 62, 2, '1973-09-06 16:14:53', '2019-08-23 00:00:00', '2016-12-25 11:37:35', '1997-11-15 22:37:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 86, 4, '2017-11-11 15:58:21', '2018-09-15 00:00:00', '1992-07-23 02:22:00', '1970-01-08 07:50:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 43, 4, '2005-06-20 17:48:57', '1989-03-03 00:00:00', '1987-10-17 02:22:13', '2000-03-08 23:29:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 51, 2, '2015-07-03 15:51:03', '2017-10-29 00:00:00', '2017-05-18 00:41:10', '2016-08-07 11:54:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 65, 5, '2020-04-06 23:53:49', '1977-08-05 00:00:00', '2015-08-16 11:52:12', '1994-04-21 16:00:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 69, 3, '1971-11-04 19:35:19', '1975-10-05 00:00:00', '2019-05-15 18:01:21', '2002-06-08 10:18:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 31, 4, '1976-09-27 23:33:07', '2001-03-01 00:00:00', '2015-06-06 02:56:47', '1970-04-08 17:13:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 35, 5, '1983-08-12 05:31:36', '1976-05-19 00:00:00', '2021-06-12 12:24:50', '2008-12-27 06:37:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 2, 2, '1975-04-07 05:50:58', '0000-00-00 00:00:00', '2003-08-14 19:34:09', '2014-08-31 15:53:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 89, 2, '1986-04-01 16:05:23', '1970-06-06 00:00:00', '2009-05-01 22:31:15', '1993-05-10 22:46:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 16, 5, '1971-07-31 14:24:09', '2020-05-21 00:00:00', '1979-10-17 14:28:08', '2019-07-03 01:28:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 85, 3, '1996-10-08 23:32:56', '0000-00-00 00:00:00', '1988-06-16 18:09:09', '2019-06-01 09:52:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 34, 2, '1976-12-03 09:04:46', '0000-00-00 00:00:00', '2010-12-05 01:48:41', '2005-09-02 03:03:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 5, 2, '2013-11-16 09:50:19', '0000-00-00 00:00:00', '2008-02-21 15:39:47', '2017-11-12 08:23:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 18, 2, '1976-06-08 19:53:21', '1981-09-19 00:00:00', '2013-01-18 00:54:06', '2015-06-24 17:24:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 85, 4, '1992-04-09 11:36:50', '0000-00-00 00:00:00', '1994-08-29 22:58:27', '2013-03-20 12:52:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 48, 3, '1991-08-17 16:35:05', '1976-07-08 00:00:00', '2011-09-18 07:46:44', '2004-05-09 19:28:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 54, 5, '1971-02-12 03:51:30', '0000-00-00 00:00:00', '1986-12-26 22:22:16', '2002-12-08 04:16:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 73, 1, '2016-08-23 16:15:51', '0000-00-00 00:00:00', '2005-05-08 18:45:21', '1997-06-26 22:08:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 14, 1, '1990-02-23 08:46:38', '0000-00-00 00:00:00', '2007-06-21 20:33:59', '1997-08-24 09:53:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 96, 5, '1987-08-10 17:05:32', '2017-02-10 00:00:00', '2001-06-15 22:43:33', '1973-06-06 23:10:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 47, 5, '2007-12-07 21:04:46', '0000-00-00 00:00:00', '1978-09-03 23:29:41', '1981-02-11 11:18:37');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'sapiente', '2021-01-19 13:03:53', '2021-03-17 23:27:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'dolor', '2020-06-16 12:41:24', '2020-07-27 16:42:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'ut', '2021-01-21 10:27:27', '2020-08-14 23:56:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'consequatur', '2021-01-14 14:44:16', '2021-02-20 06:08:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'eligendi', '2021-01-25 21:47:22', '2021-02-13 01:08:12');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (101, 67, 'Dolor a officiis et consequatur dolorem non.', 3, '{\"mediadata\": \"test5\"}', 4, '2020-08-27 19:35:02', '2021-04-18 09:39:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (102, 33, 'Doloribus et et inventore omnis.', 0, '{\"mediadata\": \"test3\"}', 5, '2021-05-28 01:07:52', '2020-07-15 00:48:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (103, 66, 'Animi odio est id iure fugit consequuntur.', 423562, '{\"mediadata\": \"test5\"}', 2, '2021-05-20 17:35:58', '2020-10-19 10:15:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (104, 81, 'Et temporibus nobis mollitia deserunt et.', 14150327, '{\"mediadata\": \"test3\"}', 5, '2020-09-08 02:36:15', '2021-06-09 00:16:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (105, 90, 'Fugit rerum cumque qui nulla quo.', 648047873, '{\"mediadata\": \"test1\"}', 5, '2020-09-28 00:49:44', '2020-12-05 14:48:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (106, 22, 'Adipisci nobis vel doloremque.', 3439083, '{\"mediadata\": \"test3\"}', 3, '2020-10-22 21:09:48', '2021-06-10 02:07:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (107, 31, 'Nihil omnis iure consequatur ut dolor expedita.', 327448757, '{\"mediadata\": \"test4\"}', 1, '2020-08-09 22:00:38', '2020-09-04 11:58:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (108, 92, 'Magnam explicabo officiis non alias dolore.', 897388234, '{\"mediadata\": \"test4\"}', 4, '2021-02-07 05:38:35', '2021-05-31 12:48:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (109, 52, 'Saepe ipsam ab est recusandae hic ab velit.', 9548, '{\"mediadata\": \"test3\"}', 2, '2020-10-29 13:33:44', '2021-01-10 20:45:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (110, 88, 'Maiores qui mollitia sit et rem.', 12112659, '{\"mediadata\": \"test1\"}', 4, '2021-04-11 20:51:48', '2020-10-23 03:50:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (111, 5, 'Repellendus ut modi rerum sunt eveniet aut reprehenderit.', 4556545, '{\"mediadata\": \"test5\"}', 2, '2020-06-22 00:32:44', '2020-09-14 05:37:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (112, 57, 'Eveniet eaque enim sed.', 409951, '{\"mediadata\": \"test3\"}', 2, '2020-07-28 08:33:06', '2021-04-25 13:46:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (113, 86, 'Ipsum facilis non sit accusantium dolor.', 7, '{\"mediadata\": \"test3\"}', 2, '2021-02-10 14:29:20', '2020-12-18 12:58:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (114, 49, 'Porro omnis unde ullam.', 70589, '{\"mediadata\": \"test4\"}', 4, '2021-02-25 22:01:44', '2021-01-11 06:05:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (115, 13, 'Quod ut et corporis aut quia dolore libero labore.', 137352, '{\"mediadata\": \"test5\"}', 2, '2020-10-14 08:23:36', '2020-06-18 08:48:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (116, 52, 'Iusto fugit voluptatem corporis et optio nisi.', 2, '{\"mediadata\": \"test4\"}', 3, '2021-04-02 09:12:10', '2021-02-10 08:29:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (117, 87, 'Ipsum explicabo ullam iusto et sapiente dolor.', 480068, '{\"mediadata\": \"test3\"}', 2, '2020-08-10 07:57:38', '2020-06-30 03:39:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (118, 96, 'Est quod totam et voluptatibus voluptate error.', 0, '{\"mediadata\": \"test5\"}', 3, '2021-04-19 14:01:23', '2021-01-15 00:20:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (119, 80, 'Et eligendi ea dicta veniam dolorem ipsa molestias.', 330370, '{\"mediadata\": \"test2\"}', 5, '2021-03-04 06:12:24', '2021-04-25 02:22:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (120, 46, 'Dolores nisi ex maiores voluptatem molestiae inventore voluptates.', 615697, '{\"mediadata\": \"test5\"}', 5, '2021-04-25 20:56:27', '2020-09-27 05:19:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (121, 95, 'Doloribus tenetur error odio voluptatem ut inventore.', 3592, '{\"mediadata\": \"test3\"}', 2, '2021-05-25 03:28:11', '2020-10-04 01:26:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (122, 4, 'Perferendis voluptatem enim quas et numquam doloribus enim repellat.', 93, '{\"mediadata\": \"test3\"}', 2, '2021-03-25 20:56:06', '2021-01-23 22:26:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (123, 83, 'Blanditiis dolor qui itaque unde.', 6459877, '{\"mediadata\": \"test5\"}', 2, '2021-01-15 08:50:48', '2020-11-15 22:26:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (124, 66, 'At architecto ad error sit aperiam ea.', 3490725, '{\"mediadata\": \"test4\"}', 5, '2020-12-17 23:54:19', '2021-04-20 10:40:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (125, 98, 'Repellat esse in aut et voluptatem quis aliquam officia.', 54695, '{\"mediadata\": \"test1\"}', 1, '2021-01-16 01:50:01', '2021-01-06 08:06:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (126, 32, 'Cupiditate fuga veritatis eligendi repellat tempora cum quasi.', 16, '{\"mediadata\": \"test5\"}', 5, '2020-11-10 10:01:29', '2020-09-08 10:05:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (127, 72, 'Commodi necessitatibus qui nisi alias voluptatem.', 8438, '{\"mediadata\": \"test2\"}', 3, '2021-02-09 21:54:39', '2020-08-20 20:46:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (128, 36, 'Sed accusamus ad libero voluptatem architecto.', 867652, '{\"mediadata\": \"test4\"}', 5, '2021-02-24 12:58:05', '2021-04-26 12:17:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (129, 71, 'Natus dolor quam esse enim et quis voluptatum incidunt.', 6504, '{\"mediadata\": \"test2\"}', 5, '2020-11-11 06:36:01', '2020-12-23 14:45:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (130, 97, 'Eligendi voluptatem ut rerum ut necessitatibus.', 3, '{\"mediadata\": \"test1\"}', 5, '2020-10-28 12:33:59', '2020-06-24 08:55:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (131, 21, 'Impedit sapiente voluptate qui iusto.', 707, '{\"mediadata\": \"test3\"}', 3, '2020-07-27 15:00:44', '2020-11-29 06:40:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (132, 51, 'Ipsa odio natus eveniet aut.', 569175042, '{\"mediadata\": \"test3\"}', 3, '2020-08-07 05:52:10', '2020-06-14 22:00:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (133, 18, 'Ut aut est alias et dolores.', 0, '{\"mediadata\": \"test2\"}', 1, '2021-02-09 17:46:35', '2020-06-20 17:09:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (134, 67, 'Impedit impedit sed rem dolorem aut culpa quam.', 8914286, '{\"mediadata\": \"test4\"}', 3, '2020-12-20 04:22:30', '2021-01-01 03:50:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (135, 12, 'Deleniti laboriosam cumque magni dolores.', 1758, '{\"mediadata\": \"test1\"}', 5, '2020-07-22 03:25:13', '2021-05-17 02:04:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (136, 48, 'Neque ea maxime iste enim nulla molestiae.', 698, '{\"mediadata\": \"test5\"}', 3, '2020-12-03 14:56:12', '2020-06-28 08:08:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (137, 87, 'Dignissimos similique pariatur soluta.', 806777287, '{\"mediadata\": \"test5\"}', 2, '2021-04-23 13:11:35', '2020-12-05 20:14:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (138, 85, 'Unde blanditiis sit dolore sit.', 668628644, '{\"mediadata\": \"test5\"}', 5, '2021-04-09 21:06:04', '2021-04-28 08:34:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (139, 54, 'Corporis illum aut sed et qui voluptas officiis.', 8734, '{\"mediadata\": \"test4\"}', 1, '2021-02-11 02:28:04', '2020-07-09 10:23:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (140, 61, 'Commodi enim aspernatur rerum quo.', 723251, '{\"mediadata\": \"test3\"}', 1, '2021-05-12 11:57:09', '2020-11-16 20:10:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (141, 42, 'Nostrum ducimus vel itaque.', 412093530, '{\"mediadata\": \"test4\"}', 2, '2021-03-12 03:28:01', '2021-02-18 23:17:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (142, 75, 'Ducimus vero voluptas aut modi libero.', 4, '{\"mediadata\": \"test2\"}', 2, '2021-04-15 02:58:24', '2021-06-03 21:45:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (143, 75, 'Et quam ea ducimus praesentium qui sint nihil.', 7, '{\"mediadata\": \"test5\"}', 4, '2021-05-30 13:09:45', '2020-06-21 14:44:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (144, 83, 'Provident laborum atque quia debitis magni iure tempora.', 0, '{\"mediadata\": \"test3\"}', 4, '2021-04-22 22:27:17', '2020-09-19 02:14:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (145, 33, 'Harum nobis voluptas debitis incidunt aut.', 82, '{\"mediadata\": \"test3\"}', 5, '2020-08-15 22:32:02', '2020-11-08 14:15:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (146, 44, 'Inventore voluptatibus aut laboriosam voluptas ut.', 64950526, '{\"mediadata\": \"test5\"}', 3, '2021-05-26 12:32:34', '2021-04-21 05:29:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (147, 43, 'Provident illum quibusdam praesentium.', 34240, '{\"mediadata\": \"test4\"}', 4, '2020-09-29 03:01:39', '2021-02-12 10:06:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (148, 32, 'Eos debitis enim doloremque magnam incidunt.', 434229849, '{\"mediadata\": \"test3\"}', 5, '2021-02-20 23:22:56', '2020-12-27 03:23:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (149, 34, 'Harum rerum nam labore.', 11, '{\"mediadata\": \"test4\"}', 4, '2020-10-14 11:20:29', '2020-09-06 06:14:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (150, 97, 'Quod sequi quis voluptate possimus aut.', 2825738, '{\"mediadata\": \"test5\"}', 1, '2020-07-25 22:42:23', '2020-12-09 14:51:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (151, 60, 'Sequi expedita voluptatem a blanditiis quis nam velit.', 53114, '{\"mediadata\": \"test3\"}', 3, '2020-07-14 04:37:11', '2020-11-06 00:30:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (152, 49, 'Et ab pariatur ab quo.', 1464, '{\"mediadata\": \"test4\"}', 2, '2021-06-02 22:45:21', '2020-10-09 03:35:57');


#
# TABLE STRUCTURE FOR: media_likes
#

DROP TABLE IF EXISTS `media_likes`;

CREATE TABLE `media_likes` (
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на медиафайл',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который лайкнул медиафайл',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`media_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Лайки медиафайлов';

INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (2, 2, '2020-07-12 05:54:29');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (2, 46, '2021-01-30 12:55:05');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (4, 4, '2020-09-30 11:27:47');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (4, 52, '2020-07-23 02:31:26');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (4, 55, '2020-06-24 03:38:30');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (4, 64, '2020-11-12 15:44:17');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (6, 23, '2021-05-08 09:50:40');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (6, 46, '2020-09-15 19:32:10');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (8, 17, '2020-12-14 16:54:14');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (9, 29, '2020-09-09 15:07:11');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (10, 61, '2021-05-03 01:16:14');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (13, 8, '2020-11-29 03:02:16');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (13, 86, '2020-08-26 12:04:27');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (15, 34, '2021-04-07 15:25:07');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (16, 6, '2021-01-07 23:08:02');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (16, 75, '2021-03-23 14:54:25');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (17, 33, '2020-10-06 15:49:30');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (17, 64, '2021-04-27 04:58:41');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (18, 14, '2021-01-18 19:05:37');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (18, 56, '2020-10-28 19:00:14');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (19, 30, '2020-11-27 07:49:59');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (20, 37, '2021-05-17 09:34:08');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (20, 82, '2020-09-20 05:23:21');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (20, 87, '2021-05-24 14:24:17');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (21, 3, '2021-01-29 02:02:13');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (24, 3, '2020-06-25 03:40:58');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (25, 58, '2020-09-29 10:55:39');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (26, 55, '2020-12-26 07:41:43');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (26, 56, '2020-11-22 07:38:27');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (29, 25, '2021-05-06 06:05:39');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (29, 80, '2021-06-12 20:56:47');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (31, 25, '2020-08-17 09:16:31');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (31, 99, '2021-04-23 04:51:28');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (34, 69, '2020-10-17 19:28:16');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (34, 87, '2020-08-16 21:57:32');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (38, 9, '2020-07-01 03:30:39');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (38, 99, '2020-08-19 03:22:06');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (39, 95, '2020-06-27 06:42:14');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (40, 70, '2021-04-08 13:11:20');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (40, 78, '2021-04-26 19:02:02');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (41, 99, '2021-05-29 05:35:22');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (43, 23, '2021-03-09 07:10:28');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (43, 37, '2020-09-24 07:49:09');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (43, 65, '2021-06-06 14:00:54');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (44, 23, '2021-03-12 22:09:20');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (45, 65, '2021-06-06 13:14:37');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (46, 52, '2021-04-13 13:38:27');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (47, 47, '2021-01-06 19:14:12');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (47, 79, '2020-06-16 23:02:31');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (49, 40, '2020-09-14 02:18:06');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (49, 79, '2020-07-26 06:31:13');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (50, 74, '2020-06-29 07:22:20');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (51, 89, '2020-11-15 04:56:18');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (52, 16, '2021-05-22 16:39:39');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (53, 95, '2020-10-10 01:27:38');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (56, 90, '2021-05-25 10:20:03');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (56, 96, '2021-04-06 01:58:23');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (57, 45, '2021-05-10 05:04:28');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (58, 10, '2020-10-31 00:06:17');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (58, 29, '2020-08-22 11:19:51');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (58, 59, '2020-08-26 15:08:39');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (59, 70, '2020-10-25 21:12:35');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (60, 14, '2021-01-20 23:06:16');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (61, 74, '2021-05-04 23:07:51');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (62, 64, '2021-01-10 04:48:29');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (62, 98, '2020-08-30 20:10:18');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (63, 41, '2021-05-29 03:27:04');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (66, 38, '2020-08-03 16:16:41');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (67, 57, '2021-01-15 02:13:02');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (68, 7, '2021-02-13 22:00:23');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (68, 71, '2021-01-02 05:07:21');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (68, 95, '2021-04-05 07:16:53');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (69, 70, '2021-03-28 20:23:41');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (71, 7, '2020-06-17 10:47:15');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (71, 19, '2021-01-07 19:53:15');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (71, 25, '2021-01-03 17:32:44');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (71, 63, '2020-08-16 14:11:58');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (73, 30, '2020-12-14 07:35:33');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (73, 37, '2020-08-09 14:51:32');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (74, 64, '2020-08-09 12:58:37');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (74, 83, '2020-08-30 01:15:52');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (75, 38, '2021-01-29 22:57:11');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (77, 80, '2020-12-30 03:41:41');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (77, 84, '2021-06-02 12:29:22');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (78, 74, '2021-06-05 12:53:54');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (79, 16, '2020-10-01 19:16:19');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (80, 79, '2020-09-10 02:20:45');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (81, 54, '2021-01-02 00:45:36');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (83, 2, '2021-03-27 11:35:54');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (85, 63, '2021-03-24 22:53:58');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (86, 65, '2020-09-29 06:56:50');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (86, 99, '2020-09-18 17:25:10');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (87, 36, '2021-03-30 19:35:51');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (91, 100, '2020-10-09 10:35:42');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (94, 14, '2020-07-20 13:24:37');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (94, 30, '2020-10-01 12:59:03');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (95, 42, '2021-02-16 07:29:08');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (96, 78, '2021-03-24 11:28:17');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (98, 56, '2020-11-09 13:03:27');
INSERT INTO `media_likes` (`media_id`, `user_id`, `created_at`) VALUES (98, 79, '2021-02-18 12:07:03');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'laudantium', '2021-04-17 15:27:51', '2020-08-12 15:47:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'sit', '2020-11-08 18:53:19', '2021-03-22 09:48:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'aut', '2021-05-02 22:24:20', '2021-03-20 11:05:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'asperiores', '2021-01-30 19:01:06', '2020-07-29 09:41:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'sed', '2021-01-10 06:47:29', '2021-04-09 07:26:30');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 47, 67, 'Eum sapiente qui et velit dolor vero. Et eos quia excepturi laudantium ipsam et. Eum molestiae vitae labore sequi minus repudiandae tenetur.', 0, 1, '2021-05-15 12:23:42', '2021-05-19 12:52:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 62, 20, 'Et nobis molestiae dolores. Veniam pariatur autem quod quos consequatur. Alias veniam consequatur voluptas. Consectetur rem aut sint consequatur nihil.', 1, 1, '2020-12-23 11:40:41', '2021-04-23 15:40:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 93, 2, 'Atque porro fugit sed id animi sed rem. Explicabo et commodi et ea quibusdam vel dolorem. Ut voluptatibus id molestiae laborum vitae consectetur.', 1, 1, '2021-04-22 18:32:16', '2020-09-16 02:12:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 7, 50, 'Dolor labore vero libero quia ratione. Distinctio quia sapiente sed est et ut. Eligendi totam porro ea.', 1, 0, '2020-12-28 10:16:33', '2020-07-27 08:57:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 61, 100, 'Harum eaque rerum non qui est alias. Ipsam tempora dolor suscipit corporis est necessitatibus quo. Voluptatem saepe laudantium ut adipisci unde. Velit nisi consequatur unde eum mollitia.', 0, 0, '2020-06-29 12:38:38', '2020-08-16 19:22:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 61, 76, 'Nisi totam placeat impedit. Eum ut quos nihil molestiae sed eum. Ullam vel ipsam nihil. Atque harum ut quia et excepturi odio distinctio quia. Deleniti sunt omnis qui ducimus sit.', 1, 0, '2020-07-16 04:21:24', '2021-04-11 05:26:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 36, 86, 'Ut sed ipsa quod voluptatem ex fugiat. Maiores omnis et omnis rerum officia voluptatem. Quas expedita nemo maiores reprehenderit.', 1, 0, '2020-07-28 06:02:12', '2020-10-27 17:31:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 84, 98, 'Ut voluptatem quo aut in. Minus voluptatibus doloremque temporibus officia ipsum sit in. Necessitatibus voluptates corrupti et consectetur sit tempora.', 1, 1, '2020-06-25 01:23:48', '2020-10-26 19:28:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 80, 74, 'Assumenda in voluptatibus autem numquam voluptas. Quia facilis velit quae nisi qui sit. Expedita doloremque error quis molestiae. Esse fugit facere veritatis pariatur.', 1, 0, '2020-09-25 03:25:42', '2020-11-26 06:38:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 53, 16, 'Nemo nobis perspiciatis unde commodi iste non saepe. Consequatur aperiam est voluptates necessitatibus dolorem quae autem. Sit ipsam totam quia et nihil sed quasi. Rerum illum excepturi perspiciatis qui aut.', 0, 1, '2020-09-16 23:39:03', '2021-03-12 08:52:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 88, 98, 'Et et eos hic voluptatibus non nulla. Quo laboriosam officia aliquid eligendi aperiam. Deleniti doloribus dolores ipsam non. Quas dolorem beatae recusandae sunt quia.', 0, 1, '2020-07-16 05:36:34', '2020-10-19 07:33:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 71, 47, 'Laboriosam consequuntur nam ab amet qui hic. Et laudantium et officia quis qui expedita. Quibusdam et est illo saepe suscipit inventore. Libero ut quia nihil deserunt.', 1, 1, '2020-12-20 15:07:23', '2020-10-14 09:22:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 12, 41, 'Dolor consequuntur est vel id tempore at. Harum dolore quia nihil. Quasi fugiat eaque aliquid expedita et aliquam reprehenderit facilis.', 1, 0, '2021-03-05 14:06:07', '2020-11-10 12:28:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 7, 59, 'Dolores labore id dignissimos mollitia architecto et dolorem. Dignissimos voluptatem perferendis cum error. Quo alias unde ipsam consequuntur sapiente.', 1, 0, '2020-10-13 07:05:09', '2021-04-22 07:40:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 28, 37, 'Reiciendis nihil non laudantium provident corporis. Voluptas quo quae ut voluptatem accusantium et debitis. Possimus ex nobis omnis est enim sint. Porro sed iure facere voluptatem necessitatibus.', 1, 1, '2021-01-04 02:55:59', '2020-09-18 01:42:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 35, 74, 'Provident voluptatem itaque distinctio asperiores aliquam sapiente. Odio tenetur nobis molestias illum quos et atque. Ipsa sequi repudiandae ipsa sequi porro quia animi sint. Dolorem ut nulla veniam distinctio aliquid corrupti minus.', 0, 1, '2021-01-30 01:04:27', '2021-05-25 13:55:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 3, 97, 'Voluptate totam a impedit deserunt dolorem. Repellendus eos vero ipsum veritatis eum deserunt aliquid. Magnam quasi ea placeat possimus beatae ducimus quisquam sed. Quam quibusdam praesentium ut autem optio tempore.', 1, 0, '2020-12-31 01:15:06', '2020-12-28 17:41:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 94, 95, 'Unde sapiente facilis placeat voluptatem. Consequatur ut eum voluptatem cum est. Mollitia doloribus et sed.', 1, 1, '2021-05-15 19:10:08', '2020-07-24 23:53:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 98, 1, 'Est dolores quas cum et officiis. Voluptatem aperiam hic id commodi molestiae voluptatibus consequuntur. Necessitatibus aut animi nihil debitis voluptas. Esse sequi illo quibusdam.', 1, 1, '2021-05-30 00:19:18', '2020-09-13 10:09:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 45, 58, 'Molestias quod minima minus. Possimus quis velit rerum dolores excepturi temporibus et cum. Aperiam dolores sunt quae error consequatur sit aspernatur. Quod sit natus et enim et ut.', 0, 1, '2020-11-27 05:37:24', '2021-03-20 16:31:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 100, 6, 'Modi vero nihil nisi aut fuga itaque dolore. Ea enim at odit consectetur quis explicabo. A est aut recusandae temporibus corrupti neque. Accusantium voluptatum asperiores et non ad.', 0, 0, '2020-06-14 14:03:24', '2021-02-20 22:16:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 33, 36, 'Sed voluptas eos aut est eos sit. Expedita dignissimos molestiae molestiae soluta. Ut ipsum itaque ratione sunt ut.', 1, 0, '2020-12-16 00:09:42', '2020-08-14 01:25:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 91, 17, 'Aut tenetur vitae deleniti sunt quod. Autem sed quos cumque mollitia corporis autem est. Aut doloremque libero dolor rerum corporis animi quibusdam et. Eaque dolorum non architecto repellendus.', 0, 1, '2020-08-04 18:30:48', '2020-09-01 12:08:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 33, 70, 'Qui adipisci fugiat beatae consequatur vel. Sit excepturi soluta porro voluptatem necessitatibus illum sint suscipit.', 0, 0, '2021-05-28 12:11:19', '2021-05-19 21:23:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 90, 86, 'Et odio ad explicabo earum dolores officia. Est ipsam aut voluptatibus facilis tempore. Voluptates porro dolore rerum et maiores voluptatem sint nobis.', 0, 0, '2021-05-03 13:50:31', '2020-11-04 02:44:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 86, 78, 'Velit amet omnis veniam autem. Voluptas inventore quo ut minus. Eaque maiores quia quod aspernatur molestias.', 1, 0, '2020-08-28 22:25:55', '2020-07-11 02:21:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 83, 56, 'Voluptatibus cum qui aut harum est sapiente. Consequuntur pariatur dignissimos quisquam exercitationem. Consequuntur maiores accusamus et. Laudantium praesentium et suscipit magni recusandae.', 0, 0, '2021-01-16 18:38:30', '2021-01-01 17:49:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 24, 95, 'Aut quisquam odit reprehenderit aperiam iusto. Sit et ea deserunt quasi eligendi quos. Optio officiis perferendis molestias aut voluptate quia.', 0, 0, '2021-05-08 14:39:08', '2021-06-09 06:04:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 96, 31, 'Dolorum qui repudiandae cupiditate et ut. Minima natus placeat numquam et unde harum. Voluptate dolore consequatur eaque velit. Architecto cum expedita dolores.', 0, 0, '2020-11-28 02:42:25', '2021-04-20 20:21:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 54, 24, 'Provident tempore ad nobis laborum voluptatem qui est. Sed temporibus temporibus sit non consequatur incidunt. Sit minus qui cumque enim deserunt ut aut non.', 0, 1, '2021-02-11 08:36:41', '2021-05-12 03:29:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 67, 88, 'Sunt architecto veniam quia quis est repellendus. Et nesciunt qui enim quam unde aperiam eos.', 0, 1, '2020-12-13 07:31:32', '2021-02-23 14:30:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 97, 69, 'Rem ipsam quos nam voluptatem molestias debitis. Minima exercitationem ut et praesentium enim ipsa quasi ea. Nisi molestiae porro impedit. Voluptas necessitatibus numquam facere mollitia quia aut.', 1, 0, '2021-06-13 21:17:32', '2021-03-03 22:33:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 85, 91, 'Quidem sequi ad inventore quia. Dolores et quo laborum necessitatibus reprehenderit excepturi id. In deserunt at consequuntur itaque dolor. Consequatur est ratione voluptate ipsum iusto.', 1, 0, '2021-01-22 20:19:29', '2020-11-19 17:40:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 64, 82, 'Aliquam odio vitae illum in. Enim dolores dolorum quibusdam blanditiis dicta dolorum possimus. Excepturi nihil quis sint debitis vero deleniti.', 0, 1, '2020-09-18 17:33:30', '2020-08-16 20:02:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 91, 9, 'Molestias voluptatem dolorem nulla sunt. Repellat reiciendis aut qui numquam ipsa. Sed velit consequuntur explicabo recusandae quis. Maiores recusandae est id fuga inventore unde atque.', 1, 0, '2021-05-23 23:43:22', '2020-07-05 18:24:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 39, 91, 'Occaecati doloribus numquam aliquid tempora quibusdam modi. Amet aut facilis eum. Rerum quaerat in debitis repellendus dolorem expedita. Quia dolor est nemo excepturi quis adipisci.', 1, 0, '2021-03-25 14:30:30', '2021-01-10 01:16:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 14, 72, 'Quis dolor sunt cum rerum nemo. Error mollitia nostrum non similique.', 0, 1, '2021-06-08 06:11:49', '2020-09-28 10:08:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 27, 5, 'Debitis et iure harum qui praesentium sit amet. Sed blanditiis a dolor iste debitis. Tenetur quod perspiciatis quo modi. Beatae voluptatem blanditiis natus deleniti.', 0, 1, '2020-07-08 07:30:32', '2021-06-12 21:21:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 89, 59, 'Voluptatum sit eligendi omnis alias rerum ipsa est dolore. Sequi tempore voluptas est velit consequatur omnis voluptatem placeat. Minus tempora suscipit similique et unde. Aperiam placeat qui qui et.', 1, 0, '2020-06-30 15:17:49', '2020-08-08 08:31:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 74, 79, 'Cumque qui et velit autem. Commodi a recusandae minus eum ullam beatae distinctio voluptatem. Numquam earum dolore sunt quod tenetur corrupti. Adipisci ut et accusantium quos.', 0, 1, '2020-11-03 05:51:29', '2020-11-02 12:30:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 44, 60, 'Vel aut quae quod et quo doloremque delectus autem. Molestias qui qui iure excepturi nam ratione. Dolores sequi ut aliquid voluptas. Dolor consequuntur dignissimos facilis sed exercitationem tenetur occaecati. Hic inventore et vero illo cumque.', 1, 1, '2021-03-07 10:47:19', '2020-07-01 05:05:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 56, 27, 'Error dolorem magnam a placeat molestias beatae officiis molestiae. Doloribus doloribus et est eaque. Hic minus qui sapiente omnis.', 1, 1, '2021-04-18 15:21:38', '2021-04-20 01:43:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 15, 80, 'Et eum consequatur dolorem sit vel consequatur dolorem. Rerum voluptatibus sed vel ab. Rerum error animi autem ipsam voluptates nam sapiente aut. Nam sit velit tempore commodi voluptas.', 1, 0, '2020-07-17 04:03:11', '2021-04-12 20:54:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 22, 11, 'Odio vel sit quia ut dolores ut neque similique. Voluptas odit odit dolore harum. Ea nihil vero vel temporibus sed et.', 0, 1, '2020-08-21 08:58:49', '2020-12-27 20:43:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 10, 75, 'Voluptas nemo quis rerum sapiente. Tempore architecto sed beatae ea atque ad esse.', 1, 0, '2021-05-04 12:13:51', '2020-12-13 06:12:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 34, 76, 'Tempora exercitationem pariatur nobis velit suscipit vel est. Quibusdam adipisci voluptatem assumenda fuga nobis et omnis voluptatum. Qui dignissimos a et sed libero.', 0, 0, '2020-11-07 04:51:22', '2020-07-07 05:13:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 63, 31, 'Est voluptatibus sit saepe quod sapiente. Labore sequi sint autem. Et accusamus asperiores harum delectus. Quos temporibus sed sunt voluptates aut. Aut nihil eveniet quisquam repudiandae cumque consequatur praesentium.', 0, 0, '2021-05-01 21:34:55', '2021-04-16 16:52:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 45, 47, 'Qui dolorem accusamus quibusdam aperiam non. Et et totam ut odio provident. Eum nesciunt est dolor voluptate et.', 1, 1, '2021-02-06 22:52:41', '2021-04-10 08:37:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 21, 9, 'Ex minima asperiores et ipsa et dolorem. Laudantium sed aut doloribus culpa aut enim quia. Ut impedit veniam in dolorum vitae distinctio. Esse cum explicabo id autem.', 0, 0, '2020-08-04 18:09:23', '2021-04-02 02:48:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 29, 12, 'Unde eum quia et alias et possimus et qui. Quaerat laborum voluptatibus veritatis id. Autem repellat autem ut cum voluptatem.', 0, 0, '2020-10-09 02:48:02', '2020-09-23 18:08:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 17, 68, 'Sint ipsum ipsa molestias impedit blanditiis dolor illo nisi. Soluta qui ut animi dicta rerum. Eum ullam et dolor est rerum.', 0, 0, '2021-02-13 04:28:34', '2021-05-04 10:34:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 2, 31, 'Laudantium et optio et et veritatis provident. Cupiditate magni beatae ut. Quasi debitis nesciunt numquam quae.', 1, 1, '2021-02-19 05:45:40', '2021-05-02 00:55:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 40, 28, 'A sunt aut repellendus quae vel est iusto. Ea et modi et. Esse quo id consectetur dolorum quis blanditiis pariatur.', 0, 1, '2021-05-13 00:22:58', '2020-10-18 02:02:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 35, 28, 'Accusamus labore reprehenderit ratione est sunt sint rerum. Beatae provident consequatur animi et numquam. Aut vel sapiente et consequatur dignissimos cumque.', 1, 0, '2021-05-23 14:31:13', '2021-02-22 03:49:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 87, 9, 'Quis ut deserunt eius iusto. Et quia sit excepturi veniam illum sunt occaecati facilis. Necessitatibus quia et earum consectetur non.', 1, 1, '2020-10-18 21:34:36', '2021-02-08 14:34:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 6, 31, 'Nisi fugiat nihil eum dolorum porro. Est rerum nam illo sit.', 0, 1, '2021-01-06 01:31:11', '2020-07-25 01:21:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 68, 62, 'Eum itaque minus architecto dolor. Qui unde sed accusantium. Similique animi est excepturi quae.', 0, 0, '2021-05-22 05:26:20', '2021-01-13 18:05:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 83, 'Autem in qui molestiae accusantium eveniet quia. Vel in quia tempore aut qui est fugit dolorem. Adipisci consequatur est molestiae dolores.', 0, 1, '2021-05-21 09:42:04', '2021-02-16 23:22:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 41, 79, 'Voluptas et alias aut. Assumenda dolorem atque quaerat magnam iste quaerat. Nihil soluta quo corporis numquam ullam.', 1, 0, '2021-02-06 23:14:41', '2020-07-07 12:22:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 93, 50, 'Soluta facilis dolorem pariatur ut animi. Voluptatem dolores omnis voluptatem ut dolorem quae. Natus aut dolorem itaque nihil vel id et. Quis eum sint hic cum alias possimus.', 1, 0, '2021-06-10 11:31:34', '2021-02-21 04:36:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 54, 27, 'Doloribus nihil voluptatem ducimus sunt voluptas qui ratione. Voluptatem cumque hic molestiae omnis in blanditiis nostrum sed. Voluptatem atque in quia vel. Eum voluptas et dicta et animi laudantium dolor.', 1, 0, '2020-08-04 20:03:54', '2020-07-09 17:58:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 25, 16, 'Corporis voluptatibus qui quas minima dolores et. Magnam qui laudantium culpa voluptatem ut laborum recusandae laborum.', 1, 0, '2021-03-22 16:56:42', '2020-08-24 09:38:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 57, 70, 'Inventore nihil laborum voluptatem. Voluptatem voluptatem corrupti voluptas omnis officia. Molestiae ipsa hic recusandae.', 1, 0, '2020-08-10 07:05:59', '2020-08-20 15:54:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 63, 78, 'Modi nulla recusandae quos ad recusandae. Nostrum excepturi rerum reprehenderit est. Optio incidunt error ut in suscipit ratione.', 0, 0, '2021-02-21 14:29:25', '2021-03-18 16:25:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 78, 92, 'Cum quasi omnis maiores repellat sed vel. Autem et odit molestiae occaecati aliquid. Doloribus enim aspernatur quia. Maxime officia et debitis itaque suscipit qui officia.', 1, 1, '2020-11-25 00:22:07', '2021-05-30 22:05:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 89, 95, 'Aperiam autem sint animi quia laudantium amet nihil. Repellendus sunt non autem. Et expedita inventore voluptatibus illo.', 0, 0, '2021-03-06 13:21:34', '2021-03-20 06:46:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 59, 91, 'Voluptatem perspiciatis odit asperiores aspernatur quos omnis. Occaecati quaerat assumenda quo expedita. Rerum omnis nostrum cumque quae deserunt aut velit.', 0, 0, '2020-10-24 22:03:28', '2020-12-21 03:09:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 25, 99, 'Quia quis quae reprehenderit numquam ut et sit quo. Eius consequatur non temporibus soluta. Quos vitae optio nulla accusamus ipsum hic mollitia et. Minus cum minima quibusdam velit et fugit quia omnis. Corrupti consequatur qui doloremque amet aut alias dignissimos aut.', 0, 0, '2021-03-31 02:05:54', '2021-04-09 04:34:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 18, 60, 'Dolores dolore sit deserunt nihil eaque. Iure sit sit in reiciendis aut. Culpa quia dolores ut.', 1, 1, '2021-01-30 22:59:12', '2020-10-31 21:06:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 27, 5, 'Ipsa hic aut quis eligendi occaecati assumenda. Placeat accusantium molestias aut natus neque natus facere. Sed natus velit explicabo aut. Ea dolorem nihil et iusto ut maiores.', 0, 0, '2021-03-08 07:05:45', '2020-08-05 10:31:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 68, 32, 'Iste ut necessitatibus accusamus voluptatem velit. Ea delectus distinctio aut. Ex reiciendis aut natus iste laudantium. Magni animi quaerat a vel libero suscipit. Assumenda explicabo officia suscipit deserunt nulla autem ipsa.', 1, 0, '2020-11-14 06:18:57', '2021-03-11 07:36:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 35, 36, 'Adipisci blanditiis quo atque tenetur qui nemo. Ut voluptas quae nemo dolorem non explicabo ab. Tempore qui et quos eum et culpa cumque. Eum quis voluptatum vel maxime harum qui.', 1, 0, '2021-01-25 11:26:23', '2021-04-26 05:39:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 94, 92, 'Atque recusandae rerum cupiditate iusto ut in odio. Dolorem sunt nam odit.', 1, 0, '2020-10-05 14:19:25', '2020-09-12 01:04:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 18, 34, 'Dolore quo quia ut. Expedita enim numquam blanditiis explicabo necessitatibus molestias totam. Nihil cupiditate nihil est quo. Tempora rerum nulla ea rerum aut sit recusandae adipisci.', 0, 1, '2020-12-29 07:45:35', '2020-12-28 07:25:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 71, 11, 'Exercitationem delectus sint adipisci. Labore dolorem ab deleniti beatae rerum.', 1, 1, '2020-07-11 17:13:21', '2020-12-01 05:39:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 83, 24, 'Qui delectus in tempore quidem. Maxime deserunt id molestias laboriosam aut ab natus. Et minus repudiandae et necessitatibus. Animi omnis et impedit perspiciatis expedita quis dicta.', 1, 1, '2021-02-20 15:10:55', '2020-07-20 05:33:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 37, 7, 'Sint saepe aut ab consequatur porro inventore sequi. Quia optio et veritatis voluptas et aut. Adipisci voluptatibus est et magnam quis. Excepturi dolor mollitia nemo doloribus.', 1, 1, '2020-12-01 05:28:42', '2021-04-27 05:43:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 40, 94, 'Consequatur ut explicabo ea facilis. Voluptatem ab aperiam deserunt. Aspernatur qui illum aut debitis asperiores.', 1, 0, '2021-05-11 05:38:47', '2020-09-09 01:17:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 77, 3, 'Repellendus impedit voluptate dolorem odio quia exercitationem itaque. Eos provident consequatur odio. Possimus quibusdam voluptatem est in enim aut illo.', 0, 0, '2021-04-01 16:11:22', '2020-12-16 01:00:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 72, 54, 'Omnis esse vero aperiam ut eum eos. Rerum totam ut id omnis quisquam. Delectus omnis et sunt et sunt.', 0, 0, '2021-04-28 15:28:17', '2020-11-10 23:32:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 94, 60, 'Ut temporibus provident sapiente repellendus ea omnis et. Modi aut impedit ut cumque quaerat nihil voluptas. Ea quis sint repudiandae quia consequatur blanditiis. Minima ut quas facilis ea ullam.', 1, 0, '2020-08-05 05:37:10', '2021-06-10 19:05:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 48, 53, 'Laboriosam animi quia vel dolore quidem sed et. Doloremque iste repudiandae esse hic molestias laboriosam enim qui. Natus adipisci excepturi quaerat quia dolor. Veniam assumenda et illum.', 0, 0, '2020-12-11 08:08:31', '2020-07-04 04:33:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 51, 73, 'Delectus omnis eum molestiae omnis sint est expedita. Consequatur animi fugit dolor eveniet sequi. Iusto non voluptas similique amet ut dolorum excepturi. Temporibus temporibus ipsum qui blanditiis qui nemo.', 1, 0, '2021-04-03 22:57:06', '2020-09-20 21:59:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 51, 68, 'Tempora quidem optio commodi eius et eos quo. Placeat porro quia et minima.', 1, 1, '2020-08-10 13:28:49', '2020-08-17 23:31:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 32, 77, 'Dolorem voluptas sint sit illum tenetur rerum. Aut in quia ratione labore. Illum architecto deserunt voluptas et iste.', 1, 0, '2020-09-24 03:36:15', '2021-01-07 05:02:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 72, 100, 'Commodi eius molestias deleniti exercitationem est quos vel. Quaerat et et tempore corporis. Fugiat quo qui perferendis magnam.', 1, 0, '2020-10-20 00:02:29', '2021-05-31 15:46:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 9, 7, 'Sint tenetur molestias asperiores odio consequatur voluptatum velit. Facere voluptatem dolores voluptate fugit a ducimus libero. Qui est et et suscipit alias quo autem. Unde aliquid maxime earum libero.', 0, 0, '2020-12-22 01:03:28', '2021-01-08 02:15:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 35, 2, 'Doloremque accusantium consequatur dolorum quis. Ipsum eligendi accusamus optio voluptatibus dolorem id nostrum.', 0, 0, '2020-07-16 01:29:03', '2020-10-22 18:55:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 98, 53, 'Odio itaque perferendis nihil occaecati perspiciatis. Expedita ea consequatur fugit qui nam excepturi voluptas. Corrupti aliquam nihil nihil consectetur. Eos aliquid omnis iusto aut corporis libero. Dolor sequi sed culpa eveniet error et.', 1, 0, '2020-09-27 23:09:27', '2021-04-06 21:28:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 35, 69, 'Perspiciatis incidunt accusamus quaerat sed. Voluptatem dignissimos a aut ad consequuntur. Rem est explicabo et quibusdam dicta.', 1, 1, '2020-06-26 14:32:53', '2020-09-11 08:56:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 63, 17, 'Tempora quas inventore quia omnis voluptatibus. Magni quo nobis vitae aut quam. Aliquid enim eligendi nam error.', 1, 0, '2021-01-14 15:43:01', '2021-06-06 01:47:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 100, 'Quasi deserunt aliquid soluta soluta inventore. Occaecati aut porro quibusdam possimus magnam modi. Ullam nihil molestias soluta delectus dolorum omnis cum.', 1, 0, '2020-08-21 23:34:40', '2021-05-24 07:54:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 24, 31, 'Repellat quaerat debitis sunt esse laudantium cum. Dolorum animi velit commodi iusto laboriosam incidunt. Enim explicabo quia nostrum explicabo voluptas. Error reprehenderit ut ut maiores reiciendis iure adipisci.', 0, 0, '2020-08-01 23:29:49', '2020-08-31 09:51:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 1, 'Qui quam eum eveniet quae consequatur doloremque. Dolores et veniam ab ut architecto dignissimos. Ipsam modi qui est. Veritatis porro qui molestiae.', 0, 0, '2021-05-01 18:26:57', '2020-07-04 09:38:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 33, 65, 'Suscipit veniam sunt ipsam nesciunt. Corrupti iste rem nisi. Qui earum quo aliquid vitae consequatur sit et laboriosam.', 0, 0, '2021-03-12 23:11:34', '2021-05-14 07:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 54, 27, 'Eaque dignissimos aut id omnis. Sed tempora beatae iste delectus minima in corporis. Commodi quia autem dicta quia.', 1, 0, '2020-12-30 14:09:10', '2021-02-14 18:27:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 25, 2, 'Numquam id ut soluta cupiditate. Perferendis tempora repudiandae velit molestiae. Molestiae sit quasi ex. Nostrum et veniam amet labore omnis voluptatem.', 0, 0, '2020-08-29 23:58:57', '2021-03-09 17:43:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 79, 75, 'Et recusandae animi aliquam architecto officia nostrum recusandae corporis. Cupiditate consequatur voluptas voluptas incidunt est sed autem autem. Ratione placeat distinctio aut veritatis.', 0, 0, '2021-03-26 07:35:10', '2020-10-18 08:01:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 74, 29, 'Ex repellat non et ad. Deserunt nobis impedit consequatur iusto autem. Et nesciunt officiis vitae explicabo earum autem quisquam illum.', 1, 0, '2021-05-07 17:32:30', '2021-01-13 06:35:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 43, 5, 'Saepe nostrum ducimus iusto porro exercitationem. Perferendis eos eligendi odit. Maiores fugit dolore necessitatibus quia voluptatum in fugiat. Nesciunt earum est et cupiditate quo sunt qui.', 0, 1, '2021-04-05 05:02:50', '2020-08-26 22:28:49');


#
# TABLE STRUCTURE FOR: pins
#

DROP TABLE IF EXISTS `pins`;

CREATE TABLE `pins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил пост',
  `pin_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Содержимое поста',
  `external_link_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на внешний ресурс',
  `repins_count` int(10) unsigned DEFAULT NULL COMMENT 'Количество перепостов',
  `comments_count` int(10) unsigned DEFAULT NULL COMMENT 'Количество комментариев',
  `deleted` tinyint(1) unsigned DEFAULT NULL COMMENT 'Статус доступности',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Время удаления поста',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Посты';

INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 46, 'Consectetur veritatis et soluta perspiciatis ipsam fugiat. Distinctio molestiae dolorum modi iusto perferendis ut aliquam. Non accusamus iste quidem et libero ad.', 0, 0, 11, 1, '1990-01-27 00:00:00', '1972-01-03 00:00:00', '2012-12-15 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 64, 'Libero molestiae vel ut totam reiciendis. Atque quia aut animi animi et sit eum dignissimos. Sit sequi quia et id aliquid totam ut.', 470, 0, 25, 0, '1986-03-27 00:00:00', '1992-01-03 00:00:00', '2007-11-30 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 10, 'Et eum iste recusandae illo ut. Quod asperiores modi distinctio aut non. Eaque et laudantium est dolorem. Nihil ratione et ducimus.', 6, 0, 28, 1, '2007-11-10 00:00:00', '1975-01-11 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 87, 'Numquam molestiae ut nulla ut consequuntur. Ut sit totam et voluptate. Magnam magnam facere aut voluptatem. Corrupti labore tempore incidunt nesciunt.', 0, 0, 0, 0, '2012-07-15 00:00:00', '2000-11-12 00:00:00', '1982-12-03 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 78, 'Totam dignissimos hic aut nemo eaque nihil. Et amet vero nesciunt unde facere.', 304, 110, 17, 1, '2018-01-25 00:00:00', '1978-10-07 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 94, 'Expedita temporibus aliquid doloribus mollitia dolor aut quidem numquam. Qui et sit alias sed.', 140, 84, 0, 0, '1979-11-30 00:00:00', '2018-01-12 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 13, 'Expedita molestiae natus dolorem beatae. Non incidunt nesciunt cupiditate itaque nostrum. Voluptatem doloremque quibusdam aliquam ratione cumque.', 0, 127, 0, 0, '1974-10-31 00:00:00', '2002-01-10 00:00:00', '1975-06-13 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 54, 'Cum odio dolores natus et. Sed expedita aut aut nobis et. Fugiat quidem numquam dolores quo.', 339, 0, 23, 0, '2012-03-24 00:00:00', '1999-01-28 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 5, 'Ratione praesentium delectus hic ut voluptas similique. At dolor consequatur non suscipit error. Quasi non ea omnis aspernatur nihil.', 161, 182, 3, 1, '2017-01-13 00:00:00', '2000-11-18 00:00:00', '1982-06-23 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 16, 'Ipsam saepe nemo neque enim molestias nihil. Occaecati consequatur amet omnis provident laboriosam.', 0, 136, 23, 1, '1980-01-02 00:00:00', '1994-11-01 00:00:00', '2012-01-24 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 56, 'Omnis tempora rem molestias aspernatur aut natus. A cupiditate amet nobis necessitatibus omnis vel atque. Sunt eveniet necessitatibus sit qui reprehenderit est maiores. Quaerat ea aut rerum cum ut voluptatem.', 0, 0, 0, 0, '1971-03-22 00:00:00', '1990-10-07 00:00:00', '2018-11-20 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 22, 'Sapiente dolor similique reprehenderit autem perferendis similique. Animi animi occaecati deserunt voluptatem. Non beatae optio est est assumenda. Voluptatibus praesentium velit expedita enim sed et et.', 0, 0, 3, 0, '1971-01-08 00:00:00', '1974-05-18 00:00:00', '2018-05-19 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 70, 'Molestiae quia est aliquid non qui molestiae dolore. Sit suscipit labore magni quia quis deleniti sint molestiae. Similique quae distinctio hic aliquam dolorem. Molestias enim labore sed qui non.', 391, 55, 5, 1, '1985-12-07 00:00:00', '1996-07-30 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 57, 'Inventore architecto quaerat nemo et veritatis eum omnis. Assumenda qui placeat in id aliquam iure perspiciatis.', 0, 0, 22, 0, '1973-01-02 00:00:00', '2009-04-24 00:00:00', '1981-03-06 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 100, 'Voluptas consectetur id beatae autem optio. Similique quia quas sit tempore velit incidunt. Consequuntur alias vitae ut dolorem aut alias assumenda dolor.', 0, 0, 2, 1, '1976-01-13 00:00:00', '1971-01-18 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 86, 'Ullam quo ut animi placeat autem. Et quis natus temporibus et. Eum velit reprehenderit asperiores alias ex corrupti. Sint quisquam qui enim. Ab numquam dolor vitae beatae molestiae ut vero.', 0, 0, 29, 1, '1973-03-29 00:00:00', '1980-07-28 00:00:00', '2008-02-28 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 70, 'Deserunt adipisci pariatur eum possimus eos porro voluptate voluptas. Dolorum aliquid expedita veniam qui qui fugiat. Dicta aut itaque facere ut voluptatem repudiandae quo. Nisi vel libero sed qui id alias aut.', 0, 0, 29, 0, '1989-11-03 00:00:00', '1996-01-26 00:00:00', '1985-04-05 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 13, 'Non soluta enim maiores quod. Cumque molestiae quae quae voluptatibus nulla. Iusto autem dolor iusto aut laborum reprehenderit.', 357, 0, 15, 0, '1983-07-26 00:00:00', '2013-03-05 00:00:00', '1998-12-11 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 4, 'Tempore quis eius rerum quia quod. Totam qui nesciunt rem fugit voluptatem. Vero eos eaque commodi sint suscipit. Non quis magnam excepturi.', 38, 21, 3, 1, '1973-11-22 00:00:00', '2012-12-27 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 77, 'Blanditiis sit laboriosam et dolorum eaque modi facere. Ut laboriosam reiciendis eveniet doloribus autem quisquam in sint. Voluptatem pariatur aut qui unde velit sed excepturi.', 0, 0, 0, 1, '1984-11-18 00:00:00', '2019-11-06 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 74, 'Deserunt praesentium ut voluptas rerum. Ut placeat voluptatibus dicta sunt dolore eos.', 0, 0, 18, 0, '2012-08-21 00:00:00', '1989-08-23 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 15, 'Vitae nisi omnis consequatur dicta aperiam. Esse aut quis dolor.', 334, 77, 8, 1, '1974-07-18 00:00:00', '2002-02-15 00:00:00', '1975-07-07 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 96, 'Hic quidem est incidunt impedit non qui minus aut. Nostrum et laboriosam soluta harum velit. Enim impedit incidunt dolorem consequuntur officiis. Fugiat adipisci facilis facilis delectus quo sit.', 0, 246, 0, 1, '1997-02-07 00:00:00', '1998-04-25 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 51, 'Sed deleniti excepturi aut et commodi. Ducimus qui enim ipsa ut et expedita dolore. Sed et perspiciatis ratione debitis quaerat sapiente. Aspernatur cupiditate assumenda fugit qui nesciunt. Corporis excepturi architecto consequatur eveniet officia.', 346, 0, 0, 0, '1976-07-03 00:00:00', '2002-07-26 00:00:00', '1994-02-20 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 81, 'Dolor dolores pariatur voluptas minus vitae. Sed sint voluptas asperiores qui id facilis. Qui voluptatem repellat iusto suscipit eum dicta ut.', 291, 0, 14, 1, '1970-10-16 00:00:00', '1970-05-26 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 58, 'Officia in consectetur quae deleniti quis aut perferendis. Officiis consequatur quisquam tempore et. Voluptatibus ut optio et et. Delectus esse reprehenderit pariatur nostrum placeat nisi aut. Eligendi et aut blanditiis.', 0, 17, 0, 0, '1987-12-05 00:00:00', '2005-06-01 00:00:00', '1986-12-19 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 35, 'Rerum dolores tempore voluptas voluptatibus blanditiis similique aut debitis. Accusantium sunt aut sint et praesentium itaque corporis omnis. Exercitationem rerum repudiandae doloremque sint.', 302, 73, 0, 0, '2002-12-05 00:00:00', '1973-12-24 00:00:00', '1974-05-03 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 34, 'Quasi sed ipsum unde cupiditate perspiciatis beatae in. Nisi quas quos dicta tenetur omnis ea blanditiis. Ut ratione eos necessitatibus provident.', 107, 222, 0, 0, '1975-06-24 00:00:00', '1979-02-25 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 20, 'Ullam voluptas omnis ex distinctio aut quia. Nostrum totam quibusdam doloribus. Dolorem voluptatem voluptatem repudiandae unde est placeat. Quaerat qui est sequi deleniti.', 0, 247, 21, 1, '1999-11-05 00:00:00', '1980-07-31 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 96, 'Distinctio iure incidunt quo a velit. Impedit dolor excepturi aperiam laborum. Velit fuga assumenda dolorem dolorem iure magnam. Sequi optio itaque nihil sint inventore quis.', 78, 182, 5, 0, '2019-06-04 00:00:00', '2009-12-28 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 63, 'Et explicabo consequatur sequi sit voluptas id exercitationem a. Et molestiae qui quis sit distinctio voluptas. Rem aut aliquam nihil nulla cupiditate. Ad esse nemo debitis reprehenderit cum deserunt.', 354, 148, 0, 0, '2002-12-20 00:00:00', '2011-03-25 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 65, 'Maiores repellendus accusantium qui voluptatum reiciendis. Facere doloribus architecto ut autem ipsa consequatur voluptatem sint. Repellat cum enim voluptates nihil cupiditate similique fuga necessitatibus. Omnis ut dolorum tenetur eius minima.', 0, 217, 2, 1, '1999-09-28 00:00:00', '1984-08-01 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 59, 'Eos repellat tenetur numquam est aut enim amet. Non suscipit et numquam nihil nihil. Dolor omnis facere illo qui.', 0, 0, 0, 0, '1975-12-10 00:00:00', '1992-02-24 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 72, 'Quos est laborum vel quam voluptate distinctio dolorem. Omnis ut voluptatem qui et est necessitatibus fugiat voluptas. Rem nemo voluptas ea qui ab. Voluptas deserunt quos incidunt.', 0, 0, 22, 0, '2009-06-19 00:00:00', '2000-05-12 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 51, 'Est accusantium vel exercitationem est eaque. Ad ducimus in laudantium velit voluptatum. Et voluptatibus dolores ut ullam quibusdam. Ut inventore ab aliquid nobis provident.', 0, 12, 9, 0, '2004-06-03 00:00:00', '1991-04-23 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 36, 'Optio qui fugiat assumenda delectus totam dolorum natus voluptatem. Quod qui recusandae dolore et suscipit et. Officiis molestiae voluptas quibusdam et quam. Aut veniam similique beatae ea.', 0, 0, 0, 1, '1989-12-03 00:00:00', '2011-08-15 00:00:00', '1986-01-26 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 66, 'Blanditiis et laborum sapiente veritatis. Est exercitationem ipsum consectetur non. Ipsum autem voluptates nihil et.', 322, 206, 0, 1, '2015-01-10 00:00:00', '1990-09-26 00:00:00', '1995-09-02 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 64, 'Nobis et voluptatem itaque culpa. Dignissimos dignissimos quasi voluptatem enim voluptatem vel pariatur. Pariatur reiciendis odio voluptatem dicta ut esse voluptatem. Vel illo nihil ducimus minus similique non.', 0, 11, 23, 1, '2005-05-22 00:00:00', '1980-02-29 00:00:00', '2016-12-31 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 89, 'Fugit accusamus sed hic ex modi vitae distinctio. Omnis velit consequatur hic ipsam beatae illum aut necessitatibus. Omnis sit dolorum architecto error sed rem.', 0, 0, 0, 1, '2018-11-16 00:00:00', '2012-08-11 00:00:00', '1981-08-10 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, 71, 'Et ullam incidunt non exercitationem quisquam. Nostrum quisquam eaque quos maxime ipsam dolores dolorem. Sed consequatur unde voluptatum totam et quis qui.', 0, 49, 0, 0, '1989-04-30 00:00:00', '1995-04-15 00:00:00', '1998-05-22 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 80, 'Est dolore delectus ut molestiae molestiae quas veritatis ratione. Ut ut ratione cumque quo consequatur fugiat. Architecto ducimus aut qui consequatur quia. Libero perferendis aut voluptatum ad reiciendis.', 253, 14, 0, 0, '1978-09-26 00:00:00', '2017-06-02 00:00:00', '1981-01-21 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, 45, 'Nemo et rerum numquam quibusdam dolor. Eum eligendi incidunt libero recusandae illo et. Facilis et consequatur quaerat quibusdam doloremque. Quod nam repellat debitis eum sunt ratione et error.', 0, 0, 0, 1, '2000-01-28 00:00:00', '1983-08-04 00:00:00', '2000-05-12 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, 92, 'Est ipsum excepturi ab ipsum. Voluptas illo et ipsam qui. Officiis est autem occaecati adipisci. Omnis officia eligendi corporis eius.', 418, 33, 10, 0, '2008-09-07 00:00:00', '2019-07-05 00:00:00', '1994-04-18 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, 49, 'Ratione sapiente odit sunt nam ullam. Et et nam impedit sint. Delectus explicabo ut nulla. Aspernatur non reiciendis et adipisci placeat. Deleniti quia quisquam ducimus vel maiores et rerum delectus.', 0, 0, 0, 1, '2010-10-03 00:00:00', '1977-06-13 00:00:00', '2007-06-01 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, 2, 'Minima qui reiciendis nemo dolores provident. Est recusandae esse repudiandae deleniti. Commodi est et ipsam tempore. Velit et laboriosam architecto neque in impedit culpa sit.', 276, 0, 0, 1, '2000-03-30 00:00:00', '1998-02-13 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, 92, 'Quos eos suscipit repudiandae aut accusantium ut. Et est deserunt et ut repellendus minus accusantium totam. Blanditiis omnis debitis non voluptate iste placeat. Velit itaque quia a eos id sequi sit.', 340, 60, 13, 0, '2012-11-29 00:00:00', '2006-03-04 00:00:00', '1994-04-18 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (47, 34, 'Velit debitis aut pariatur vel. Aspernatur laudantium nesciunt at facere aut dolor. Qui qui nesciunt laboriosam aliquam nihil. Ratione esse doloribus dolore quis consequuntur.', 285, 114, 0, 0, '1970-01-31 00:00:00', '1978-06-16 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (48, 71, 'Sint blanditiis ad ipsum maxime omnis itaque quo dolorum. Tempore blanditiis mollitia qui eum tempore et et. Dolorem et perspiciatis itaque. Qui est animi ipsam eum laborum.', 2, 69, 0, 0, '2012-07-09 00:00:00', '2009-08-18 00:00:00', '1984-04-18 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (49, 4, 'Unde eaque aut dolorem nemo vero laborum. Possimus omnis quas ab.', 0, 0, 0, 1, '2010-04-25 00:00:00', '2006-01-03 00:00:00', '2012-11-12 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (50, 37, 'Vero quia animi ut atque provident sed non. Et id tempora dolorem itaque mollitia vero ea debitis. Distinctio sed cum distinctio placeat sint doloribus alias eos.', 0, 196, 25, 1, '1993-07-17 00:00:00', '1991-10-13 00:00:00', '1979-11-10 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 48, 'Voluptatem porro autem et animi vitae aut quia ullam. Adipisci maxime eveniet eos aperiam esse. Ipsam magni expedita sint ipsum.', 243, 0, 24, 1, '2005-09-27 00:00:00', '2004-10-10 00:00:00', '1990-12-30 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 78, 'Quis enim labore laboriosam pariatur est ex et. Inventore architecto qui commodi. Sed voluptatem non amet porro.', 0, 0, 2, 1, '1994-07-29 00:00:00', '1993-04-26 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (53, 51, 'Quis et aut excepturi qui beatae repellendus et aliquam. Dolor ut iure qui laboriosam ut mollitia. Repudiandae in qui at est fugiat qui. Sit quia error quia nisi necessitatibus.', 344, 25, 14, 0, '1998-06-28 00:00:00', '1984-11-02 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (54, 43, 'Beatae dolores et mollitia iure aut quia est sunt. Consequuntur iusto sint quis fuga. Quia quas consequuntur necessitatibus incidunt. Voluptas ut perferendis aliquid velit assumenda.', 0, 105, 25, 0, '2018-12-13 00:00:00', '2020-10-31 00:00:00', '1993-03-08 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (55, 28, 'Dignissimos est culpa voluptate quis ad. Ipsa sapiente voluptas id quia in. Est quis consectetur est. Consequatur sit quasi saepe ut quo aut.', 276, 201, 0, 0, '1988-12-26 00:00:00', '1971-06-12 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 32, 'Deserunt fuga dolorem deleniti quam eius ut placeat rem. Esse nam molestiae voluptas sed. Et maxime animi neque eius laborum atque delectus. Architecto sint fugit cum.', 0, 0, 0, 0, '1984-06-06 00:00:00', '2003-05-02 00:00:00', '1976-12-25 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 100, 'Neque aut quia mollitia ut. Enim voluptatum voluptas tempora amet accusantium officia. Assumenda doloremque quod debitis velit.', 0, 0, 4, 1, '1991-04-11 00:00:00', '1996-10-31 00:00:00', '2021-03-07 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 63, 'Magnam saepe voluptas et accusantium veniam. Ut sunt laboriosam occaecati commodi itaque. Odio iure natus dolor quae temporibus quaerat. Dolorum dolor qui architecto temporibus aspernatur.', 0, 119, 1, 0, '2001-01-19 00:00:00', '2011-04-16 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 65, 'Sit officia libero autem. Voluptatum accusantium magnam qui accusantium impedit reprehenderit vitae consequatur. Qui aut voluptatem cupiditate non et fugiat.', 403, 0, 7, 0, '1995-12-24 00:00:00', '2004-05-31 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 19, 'Voluptates repellendus autem exercitationem adipisci eius adipisci. Minus deserunt nemo soluta nihil non. Placeat aut nostrum minus rerum ut rem.', 0, 185, 0, 1, '2020-07-07 00:00:00', '1991-04-17 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 58, 'Excepturi molestias voluptatem ut maiores. Quo minima tempore est velit sint. Adipisci ullam sint in repellendus et dicta sed nesciunt. Quibusdam aut perferendis unde eos.', 0, 0, 27, 0, '2007-09-14 00:00:00', '1993-11-05 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 27, 'Vitae velit consequatur est atque. Officia quo ullam voluptatem.', 147, 65, 0, 0, '1973-11-17 00:00:00', '1988-10-19 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (63, 84, 'Et iure dolorem maxime. Ad impedit numquam sint vero cupiditate voluptatem optio accusantium. Ducimus animi omnis amet doloribus.', 0, 69, 1, 0, '1979-02-19 00:00:00', '1973-06-21 00:00:00', '2017-10-22 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (64, 16, 'Sit sequi libero neque necessitatibus soluta tenetur adipisci. Dolor iusto nemo voluptatem et.', 0, 0, 0, 1, '2004-03-29 00:00:00', '1994-10-01 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (65, 99, 'Quaerat eum iste rerum sint magnam molestias delectus ut. Minus rerum hic similique voluptatem. Recusandae necessitatibus iure sint quo omnis aliquid. Dolores autem quo eveniet veniam. Repellendus maxime ea voluptate provident aut.', 0, 158, 0, 0, '2004-07-05 00:00:00', '1996-06-16 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (66, 35, 'Debitis autem nemo unde dolores nihil. Amet eos ab iusto commodi est quo unde magnam. Officiis aut voluptas doloribus est fuga accusantium. Ullam dolore quam neque nisi ut officia sit veritatis.', 376, 0, 3, 0, '1988-04-20 00:00:00', '2009-01-07 00:00:00', '2020-06-05 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (67, 52, 'Et non non odio vel eum asperiores tenetur sapiente. Velit similique dolorem ut excepturi illo velit. Ducimus minima doloremque molestias possimus qui. Sit repudiandae accusantium iure ut exercitationem nostrum sed.', 0, 177, 0, 1, '2005-11-18 00:00:00', '2021-05-06 00:00:00', '1978-01-30 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (68, 64, 'Sint repudiandae et qui quo occaecati adipisci. Eius aperiam laboriosam et ut illum architecto. Quas ea soluta fugiat nihil neque in nostrum.', 238, 0, 10, 0, '1993-08-04 00:00:00', '1991-07-10 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (69, 99, 'Debitis nihil laboriosam nulla. Veniam in officia sit voluptates corporis est non. Reprehenderit ratione numquam amet. Similique et vel hic asperiores. Delectus aut beatae numquam optio doloribus qui facere.', 382, 47, 0, 1, '1989-02-14 00:00:00', '1981-08-26 00:00:00', '1997-09-21 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (70, 40, 'Blanditiis inventore vel eum aliquam eum. Quis expedita corporis culpa libero nam incidunt unde dignissimos. Nemo odio perferendis libero est et facilis maiores.', 55, 0, 4, 1, '2001-02-08 00:00:00', '1993-08-20 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (71, 34, 'Corporis rerum non omnis necessitatibus. Numquam nostrum et in. Id voluptatibus dignissimos quo cupiditate et nihil asperiores.', 0, 153, 0, 1, '1979-01-07 00:00:00', '2000-01-11 00:00:00', '1975-01-17 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (72, 78, 'At dolorem deserunt amet consectetur est maiores adipisci. Sunt cumque tempore minus consequatur. Molestiae quis minus quis. Est soluta ipsum consequatur totam neque impedit.', 295, 0, 10, 0, '2014-02-26 00:00:00', '1981-11-11 00:00:00', '1992-11-03 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (73, 85, 'Enim necessitatibus consequatur velit. Culpa repellendus ipsa incidunt voluptatem minus optio qui inventore. Veritatis dolorum similique debitis ut. Quia ipsa et corrupti culpa dolor ea blanditiis.', 0, 81, 0, 1, '1990-05-12 00:00:00', '1995-01-24 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (74, 26, 'Iure pariatur aut occaecati dignissimos officiis alias. Porro maiores mollitia voluptatem est accusantium. Itaque amet tempora et.', 244, 203, 12, 1, '2019-11-13 00:00:00', '2015-02-11 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (75, 26, 'Cupiditate voluptate nihil dolores rerum dignissimos. Quia autem omnis exercitationem et. Vitae voluptate natus aut ut.', 0, 204, 0, 1, '1977-12-29 00:00:00', '1994-04-10 00:00:00', '2004-08-16 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (76, 86, 'Facere sunt laudantium harum autem. Esse vitae itaque perspiciatis dolore. Porro quia voluptates ab nostrum ea fugit. Aut excepturi eum ut tenetur eveniet laborum voluptate.', 347, 81, 8, 0, '1998-09-13 00:00:00', '1992-12-11 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (77, 17, 'Deleniti sed illo nostrum aperiam voluptatum. Libero et quisquam vel quo suscipit et aperiam. Corrupti a consectetur blanditiis molestiae sequi quibusdam.', 349, 0, 0, 1, '2009-06-09 00:00:00', '2005-05-14 00:00:00', '2015-05-20 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (78, 59, 'Ipsam commodi laboriosam culpa rerum sequi quis. Voluptate similique similique earum vero corrupti rem est. Aut eum alias accusantium et. Molestias magni quia optio et molestiae.', 310, 0, 1, 0, '1986-07-12 00:00:00', '1978-10-06 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (79, 56, 'Deleniti ex magni occaecati placeat. Alias harum alias molestias quidem.', 109, 159, 10, 0, '2016-09-22 00:00:00', '2018-07-14 00:00:00', '1987-09-20 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (80, 20, 'Modi consequatur magni possimus repellat et voluptatem qui. Quisquam itaque repellendus architecto mollitia pariatur non officia amet. Maxime ipsam officia quia rerum nihil maiores autem.', 340, 19, 4, 1, '2017-04-14 00:00:00', '2017-12-21 00:00:00', '2016-02-17 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (81, 96, 'Quia eaque qui qui voluptatem. Odit rerum et iusto dignissimos asperiores. Veritatis velit enim et architecto ut. Vel earum magnam dolorum numquam rerum.', 160, 0, 4, 0, '1998-08-27 00:00:00', '2017-09-17 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (82, 4, 'Provident quae qui et qui ullam minima. Eos assumenda tempore ullam reiciendis officiis culpa.', 0, 48, 0, 1, '1976-08-25 00:00:00', '2005-05-10 00:00:00', '2014-12-03 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (83, 98, 'Iure tenetur inventore porro adipisci ipsa modi id praesentium. Sapiente et eligendi beatae dolores veniam sunt. Veritatis a consequuntur voluptates odio ad illo autem. Voluptate voluptas optio perspiciatis quia est voluptatibus.', 395, 59, 0, 0, '2012-04-21 00:00:00', '1992-07-19 00:00:00', '2011-01-03 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (84, 47, 'Voluptatem temporibus distinctio maiores tempore aut voluptate provident. In quo asperiores aut saepe nesciunt voluptatem. Eligendi odio sint est rerum et in harum. Corporis recusandae dicta mollitia repellat et mollitia modi.', 0, 0, 6, 1, '1984-12-03 00:00:00', '2020-01-19 00:00:00', '2020-12-13 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (85, 46, 'Voluptas reiciendis odio ducimus dolore et necessitatibus eum consectetur. Consequuntur veniam maiores maiores consequatur voluptates sed.', 286, 0, 25, 0, '2012-07-20 00:00:00', '1983-06-27 00:00:00', '2000-10-15 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (86, 26, 'Ut alias officiis cum veritatis nisi voluptas quis. Accusantium exercitationem eveniet libero ipsa cupiditate odio. Perspiciatis nesciunt qui sequi consequatur delectus cumque. Accusantium assumenda sunt maxime quidem sed laudantium omnis.', 0, 0, 0, 1, '1989-06-28 00:00:00', '1988-11-07 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (87, 79, 'Et totam delectus non ut maiores. Accusantium dicta sint in eligendi ducimus ex distinctio quis. Et vero quidem eos laboriosam. Exercitationem voluptatem aut aut neque porro possimus ipsam.', 0, 0, 30, 1, '1992-06-14 00:00:00', '2005-11-10 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (88, 46, 'Qui ipsum eligendi dolore ut sit eum. Amet veniam omnis cupiditate neque voluptatum occaecati quam. Rerum qui eaque illum ipsam.', 0, 0, 0, 1, '1970-11-30 00:00:00', '2007-03-07 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (89, 88, 'Iusto sint asperiores maiores. Blanditiis sit sunt dicta enim facilis culpa sequi. Inventore occaecati minus et necessitatibus quasi quos dolorem. Fugiat aliquam eius doloremque dolorem sequi quod inventore.', 361, 0, 0, 0, '1982-09-26 00:00:00', '1988-08-07 00:00:00', '2002-07-02 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (90, 43, 'Minus error in quia in. At quas non esse est et optio est dolor. Fugit voluptatibus officiis beatae sit sed facilis sed aut. Iste sunt molestiae eum nobis sed. Aspernatur rerum quasi et.', 0, 0, 0, 0, '2014-12-03 00:00:00', '1988-08-12 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (91, 65, 'Corporis in sed quis incidunt occaecati maxime velit. Rerum possimus omnis distinctio eveniet explicabo fugit quae. Esse impedit veniam ut sed recusandae.', 177, 225, 0, 1, '1999-12-18 00:00:00', '1978-05-16 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (92, 45, 'Laboriosam nobis nulla et excepturi ut. Rerum et dolorem velit sunt quos quasi. Fuga ad aspernatur quae incidunt nisi facilis.', 0, 0, 23, 1, '1983-02-18 00:00:00', '2014-09-25 00:00:00', '2019-08-14 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (93, 70, 'Quae eos culpa quos dolore corporis. Aperiam quae et fugiat qui. Deleniti totam laboriosam hic omnis consequuntur. Architecto ut et placeat laudantium est impedit atque nihil.', 270, 0, 0, 0, '2007-04-23 00:00:00', '2003-02-02 00:00:00', '1992-10-12 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (94, 48, 'Quidem placeat molestiae libero fugiat sed nam labore. Ut officiis veniam tempore eius sed deleniti sunt. Velit possimus error itaque ut.', 0, 0, 11, 0, '1971-03-14 00:00:00', '1994-06-14 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (95, 61, 'Eos debitis ut laboriosam et facere. Et eveniet aspernatur corrupti. Ipsam enim et quod officiis.', 397, 38, 25, 0, '2007-07-06 00:00:00', '2016-09-28 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (96, 68, 'Porro et vel aut dolore qui aut exercitationem. Autem quia provident aliquid reprehenderit quia error consequatur quis. Ipsum sapiente recusandae maiores nobis enim. Ullam voluptatem ducimus sed quas tempore.', 0, 1, 24, 0, '1992-07-05 00:00:00', '2001-06-04 00:00:00', '2005-09-12 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (97, 83, 'Veniam nesciunt earum rerum quis blanditiis eum molestiae. Sed deserunt quibusdam fugit distinctio. Nostrum nihil enim vel facilis. Quibusdam odit rerum voluptatem sed neque. Et aperiam inventore sed est.', 0, 0, 0, 0, '2020-05-15 00:00:00', '2002-09-01 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (98, 12, 'Sint rem repellat quaerat. Natus nobis laudantium maxime sit sit. Ut nemo consequatur vel aut commodi. Illo voluptas autem suscipit et quisquam est iure.', 123, 216, 21, 0, '2000-11-16 00:00:00', '2015-09-21 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (99, 32, 'Occaecati doloremque mollitia voluptatem provident quas quos consequuntur sit. Perferendis porro nobis reiciendis consectetur necessitatibus sint consequatur pariatur.', 0, 0, 0, 1, '2007-12-22 00:00:00', '1998-09-22 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pins` (`id`, `user_id`, `pin_content`, `external_link_id`, `repins_count`, `comments_count`, `deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES (100, 81, 'Aut quod reiciendis commodi occaecati ipsa culpa. Ullam voluptatem qui rerum. Quos est commodi animi est numquam neque corporis odit. Quia dolores provident quam non repudiandae iure.', 0, 0, 0, 0, '1991-08-26 00:00:00', '1983-07-18 00:00:00', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: pins_likes
#

DROP TABLE IF EXISTS `pins_likes`;

CREATE TABLE `pins_likes` (
  `pin_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пост',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который лайкнул пост',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`pin_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Лайки постов';

INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (2, 2, '2020-07-12 05:54:29');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (2, 46, '2021-01-30 12:55:05');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (4, 4, '2020-09-30 11:27:47');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (4, 52, '2020-07-23 02:31:26');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (4, 55, '2020-06-24 03:38:30');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (4, 64, '2020-11-12 15:44:17');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (6, 23, '2021-05-08 09:50:40');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (6, 46, '2020-09-15 19:32:10');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (8, 17, '2020-12-14 16:54:14');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (9, 29, '2020-09-09 15:07:11');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (10, 61, '2021-05-03 01:16:14');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (13, 8, '2020-11-29 03:02:16');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (13, 86, '2020-08-26 12:04:27');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (15, 34, '2021-04-07 15:25:07');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (16, 6, '2021-01-07 23:08:02');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (16, 75, '2021-03-23 14:54:25');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (17, 33, '2020-10-06 15:49:30');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (17, 64, '2021-04-27 04:58:41');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (18, 14, '2021-01-18 19:05:37');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (18, 56, '2020-10-28 19:00:14');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (19, 30, '2020-11-27 07:49:59');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (20, 37, '2021-05-17 09:34:08');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (20, 82, '2020-09-20 05:23:21');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (20, 87, '2021-05-24 14:24:17');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (21, 3, '2021-01-29 02:02:13');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (24, 3, '2020-06-25 03:40:58');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (25, 58, '2020-09-29 10:55:39');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (26, 55, '2020-12-26 07:41:43');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (26, 56, '2020-11-22 07:38:27');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (29, 25, '2021-05-06 06:05:39');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (29, 80, '2021-06-12 20:56:47');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (31, 25, '2020-08-17 09:16:31');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (31, 99, '2021-04-23 04:51:28');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (34, 69, '2020-10-17 19:28:16');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (34, 87, '2020-08-16 21:57:32');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (38, 9, '2020-07-01 03:30:39');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (38, 99, '2020-08-19 03:22:06');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (39, 95, '2020-06-27 06:42:14');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (40, 70, '2021-04-08 13:11:20');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (40, 78, '2021-04-26 19:02:02');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (41, 99, '2021-05-29 05:35:22');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (43, 23, '2021-03-09 07:10:28');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (43, 37, '2020-09-24 07:49:09');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (43, 65, '2021-06-06 14:00:54');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (44, 23, '2021-03-12 22:09:20');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (45, 65, '2021-06-06 13:14:37');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (46, 52, '2021-04-13 13:38:27');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (47, 47, '2021-01-06 19:14:12');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (47, 79, '2020-06-16 23:02:31');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (49, 40, '2020-09-14 02:18:06');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (49, 79, '2020-07-26 06:31:13');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (50, 74, '2020-06-29 07:22:20');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (51, 89, '2020-11-15 04:56:18');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (52, 16, '2021-05-22 16:39:39');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (53, 95, '2020-10-10 01:27:38');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (56, 90, '2021-05-25 10:20:03');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (56, 96, '2021-04-06 01:58:23');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (57, 45, '2021-05-10 05:04:28');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (58, 10, '2020-10-31 00:06:17');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (58, 29, '2020-08-22 11:19:51');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (58, 59, '2020-08-26 15:08:39');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (59, 70, '2020-10-25 21:12:35');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (60, 14, '2021-01-20 23:06:16');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (61, 74, '2021-05-04 23:07:51');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (62, 64, '2021-01-10 04:48:29');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (62, 98, '2020-08-30 20:10:18');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (63, 41, '2021-05-29 03:27:04');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (66, 38, '2020-08-03 16:16:41');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (67, 57, '2021-01-15 02:13:02');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (68, 7, '2021-02-13 22:00:23');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (68, 71, '2021-01-02 05:07:21');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (68, 95, '2021-04-05 07:16:53');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (69, 70, '2021-03-28 20:23:41');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (71, 7, '2020-06-17 10:47:15');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (71, 19, '2021-01-07 19:53:15');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (71, 25, '2021-01-03 17:32:44');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (71, 63, '2020-08-16 14:11:58');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (73, 30, '2020-12-14 07:35:33');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (73, 37, '2020-08-09 14:51:32');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (74, 64, '2020-08-09 12:58:37');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (74, 83, '2020-08-30 01:15:52');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (75, 38, '2021-01-29 22:57:11');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (77, 80, '2020-12-30 03:41:41');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (77, 84, '2021-06-02 12:29:22');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (78, 74, '2021-06-05 12:53:54');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (79, 16, '2020-10-01 19:16:19');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (80, 79, '2020-09-10 02:20:45');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (81, 54, '2021-01-02 00:45:36');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (83, 2, '2021-03-27 11:35:54');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (85, 63, '2021-03-24 22:53:58');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (86, 65, '2020-09-29 06:56:50');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (86, 99, '2020-09-18 17:25:10');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (87, 36, '2021-03-30 19:35:51');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (91, 100, '2020-10-09 10:35:42');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (94, 14, '2020-07-20 13:24:37');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (94, 30, '2020-10-01 12:59:03');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (95, 42, '2021-02-16 07:29:08');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (96, 78, '2021-03-24 11:28:17');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (98, 56, '2020-11-09 13:03:27');
INSERT INTO `pins_likes` (`pin_id`, `user_id`, `created_at`) VALUES (98, 79, '2021-02-18 12:07:03');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '0000-00-00', 84, 'Voluptatem sint et sed rerum n', 'West Dandremouth', 'Latvia', '2021-02-12 17:50:33', '2020-09-14 13:35:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1976-07-10', 0, '', '', '', '2020-08-06 16:53:49', '2020-10-29 15:22:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '1976-07-16', 0, '', 'Port Dane', 'American Samoa', '2020-10-04 13:24:37', '2021-06-12 20:11:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '0000-00-00', 53, '', '', 'Lesotho', '2020-10-07 08:51:36', '2020-12-07 18:20:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '2017-07-26', 68, '', 'West Gustave', 'Swaziland', '2020-09-19 11:26:55', '2020-08-15 16:59:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '0000-00-00', 0, '', '', 'Ireland', '2021-03-24 17:52:36', '2020-12-31 01:26:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '1975-01-11', 1482136, 'Rerum ipsum saepe rerum sapien', '', '', '2020-07-27 14:11:32', '2020-06-27 15:20:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '1983-09-08', 633, '', 'Jordiview', 'Montenegro', '2021-04-12 11:56:19', '2020-07-20 09:51:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '0000-00-00', 0, 'Commodi molestiae natus error ', 'Waelchiborough', '', '2021-05-11 03:07:43', '2020-09-12 06:54:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1977-02-11', 0, '', 'South Kari', '', '2021-04-08 17:15:37', '2020-12-27 02:50:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '2004-09-09', 3772893, '', 'Kylabury', '', '2021-04-25 11:20:31', '2020-11-16 17:16:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1977-01-01', 20597481, 'Quae perferendis quia id asper', 'Binsland', 'Christmas Island', '2020-12-04 05:36:18', '2021-03-10 15:33:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '0000-00-00', 0, 'Dolorem magni dolore omnis vol', '', 'South Africa', '2020-12-14 13:33:22', '2021-03-31 18:39:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '0000-00-00', 0, 'Velit aspernatur quia minus la', '', 'Italy', '2020-12-26 16:46:26', '2021-05-02 20:51:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '2003-05-04', 0, '', 'East Betsytown', 'Mayotte', '2020-07-04 03:13:12', '2020-07-01 04:49:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '0000-00-00', 0, 'Et perferendis ullam totam odi', '', '', '2021-03-12 15:27:52', '2021-03-07 18:43:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '2014-05-05', 845922, 'Ducimus distinctio doloremque ', '', '', '2021-03-16 03:58:25', '2021-01-01 21:59:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1988-01-04', 0, '', '', 'Cote d\'Ivoire', '2020-07-31 04:36:48', '2021-05-23 09:10:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'f', '2004-03-24', 835564, '', 'Klingchester', 'Netherlands', '2020-06-30 10:49:27', '2021-04-12 14:01:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '2009-01-08', 0, '', '', 'Benin', '2021-04-20 07:19:32', '2020-10-21 22:18:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'f', '0000-00-00', 7998, 'Ut qui inventore qui sunt sint', 'New Erling', 'Nicaragua', '2020-12-11 12:06:47', '2020-11-12 08:16:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '2016-06-24', 0, '', 'Tyreeside', 'Vietnam', '2020-09-19 17:52:57', '2021-05-17 22:44:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '0000-00-00', 1170511, 'Quam commodi odit laborum earu', '', 'Reunion', '2020-07-20 22:35:25', '2020-12-19 21:45:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'm', '1981-07-25', 0, 'Consequatur laborum aut volupt', '', '', '2020-11-11 15:47:11', '2020-07-13 22:21:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'm', '0000-00-00', 93, 'Ratione iste in aut deserunt r', 'Quitzonmouth', '', '2020-12-18 07:16:59', '2020-09-27 08:50:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '2003-11-26', 9630482, 'Omnis et debitis quisquam quos', 'North Monserratfort', 'Malaysia', '2020-09-14 14:36:57', '2021-01-29 07:58:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'f', '1996-01-09', 256, 'Dolor minus ut delectus repell', '', '', '2021-03-03 19:39:33', '2020-12-05 09:38:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'm', '2012-08-29', 0, '', 'Blicktown', 'Bouvet Island (Bouvetoya)', '2021-02-19 14:32:01', '2021-04-03 14:37:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '0000-00-00', 11608185, '', 'West Mabel', 'Argentina', '2020-08-20 00:55:20', '2021-03-13 16:35:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '0000-00-00', 4048585, '', 'Kossbury', 'Namibia', '2021-01-18 08:17:46', '2021-01-07 10:21:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'f', '0000-00-00', 0, 'Enim hic ut quia et eveniet.', '', '', '2020-11-04 04:20:39', '2020-07-11 05:52:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'm', '1993-03-06', 36306, 'At dicta repudiandae numquam q', '', 'Panama', '2021-03-23 05:05:29', '2020-12-03 21:20:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '1989-04-09', 0, '', 'Emileburgh', '', '2020-12-17 13:30:55', '2020-12-08 16:13:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '1974-05-24', 0, '', '', '', '2021-02-28 16:04:39', '2020-10-28 14:01:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '1985-09-02', 0, 'Numquam eaque velit omnis magn', '', '', '2020-06-29 23:37:56', '2020-08-21 10:26:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'm', '0000-00-00', 39292, 'Est vitae velit nesciunt neces', 'East Jevonside', 'Qatar', '2020-07-03 02:38:05', '2021-01-07 21:36:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '2018-04-29', 343, 'Perspiciatis explicabo qui rer', 'Alysonland', '', '2021-03-20 10:42:52', '2020-08-16 05:49:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'm', '0000-00-00', 0, 'Perferendis dolorem molestiae ', 'Destanytown', 'Hungary', '2021-02-01 23:46:56', '2020-06-18 17:37:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '0000-00-00', 0, '', '', 'Croatia', '2020-10-23 19:26:29', '2020-09-21 17:49:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '0000-00-00', 0, 'Voluptatem autem aut sunt ipsu', '', 'Mozambique', '2020-09-06 02:47:02', '2020-08-18 21:56:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '0000-00-00', 0, '', '', '', '2020-09-19 02:06:54', '2020-10-25 11:06:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '0000-00-00', 65325, 'Mollitia minus consequatur aut', 'Reingershire', 'Germany', '2020-08-07 01:01:59', '2020-11-07 23:18:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'm', '2018-01-26', 1, '', 'Harveytown', '', '2020-09-25 09:24:12', '2021-04-01 01:41:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'm', '0000-00-00', 579686, 'Et eum dolorem assumenda.', 'South Janelle', 'Angola', '2020-06-16 10:13:54', '2021-01-05 19:08:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '0000-00-00', 0, 'Eos maiores dolorum qui except', '', '', '2020-08-24 20:41:01', '2020-10-06 02:31:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '2015-05-05', 872143, 'Velit suscipit repellendus rem', 'West Sophie', 'Hungary', '2020-12-06 02:37:51', '2020-09-12 02:53:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1988-10-31', 0, '', '', 'Lebanon', '2021-03-23 15:51:00', '2021-01-09 16:25:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '2017-04-02', 21184, '', 'Port Rosanna', 'Palau', '2021-04-03 04:53:51', '2021-02-04 15:04:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'f', '1983-11-18', 58, '', 'Dareton', 'French Polynesia', '2021-03-17 05:28:17', '2020-07-10 17:49:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'f', '0000-00-00', 41927936, '', 'Terryland', '', '2020-09-18 12:00:59', '2021-02-03 22:21:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'm', '0000-00-00', 0, '', '', 'Bahamas', '2020-12-27 03:40:02', '2020-12-07 09:58:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'f', '1983-06-19', 4749912, 'Libero illo exercitationem del', '', '', '2021-02-21 10:57:13', '2020-08-30 00:52:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'f', '0000-00-00', 0, '', '', 'Togo', '2021-02-05 20:12:46', '2020-09-20 06:44:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '0000-00-00', 872, '', 'Tillmanton', '', '2021-04-25 12:27:25', '2021-01-29 15:34:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'f', '0000-00-00', 9243, 'Sed ut quia voluptates nesciun', '', 'Lithuania', '2020-11-17 11:15:51', '2020-12-12 21:12:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'f', '1991-02-18', 0, '', 'Ressiefort', '', '2020-12-18 18:59:11', '2020-11-14 23:35:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '1979-02-17', 8799, 'Ipsum provident et enim perspi', 'Mabelburgh', '', '2020-12-22 23:11:38', '2021-06-04 15:37:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'm', '1980-06-25', 0, '', '', '', '2021-02-12 20:37:46', '2020-06-19 04:45:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '0000-00-00', 0, 'Et culpa numquam dolores dicta', 'South Camila', '', '2021-03-06 07:03:46', '2021-04-07 20:06:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'f', '0000-00-00', 49, '', '', '', '2021-01-07 21:11:08', '2020-10-15 07:49:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'f', '1985-09-12', 633, 'Repellat cum doloremque explic', 'Carmeloborough', 'Burkina Faso', '2020-07-27 14:20:58', '2020-08-30 03:13:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '0000-00-00', 729259, 'Voluptatem occaecati iure saep', 'Keeblerview', 'Burkina Faso', '2020-08-17 00:36:41', '2021-02-06 04:39:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '2011-04-03', 5351, '', 'Sigurdfurt', 'Puerto Rico', '2021-03-31 11:41:44', '2021-04-01 12:25:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '0000-00-00', 0, 'Esse eos consequatur dolore re', '', 'Grenada', '2020-08-08 18:00:13', '2020-11-05 19:18:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'f', '0000-00-00', 0, '', '', 'Antigua and Barbuda', '2020-09-09 20:18:42', '2021-03-09 01:58:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '0000-00-00', 0, '', '', 'Hong Kong', '2021-04-24 13:50:26', '2020-10-15 07:21:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '0000-00-00', 0, 'Ratione perspiciatis et cum su', 'West Randy', 'Singapore', '2021-02-10 23:51:58', '2021-04-19 14:47:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '0000-00-00', 0, 'Id optio ut sint temporibus om', 'Ericton', 'Nigeria', '2020-09-28 14:38:09', '2021-05-07 05:26:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '0000-00-00', 0, '', 'Lake Julianbury', '', '2021-03-02 23:48:45', '2021-03-17 12:24:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '1970-08-06', 0, 'Iusto omnis consequatur non.', 'West Beaulahhaven', 'Kiribati', '2021-04-03 04:22:23', '2021-01-15 15:54:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '2009-02-16', 0, '', 'New Faustoburgh', 'Kuwait', '2021-05-20 01:21:36', '2021-05-28 14:03:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '1981-08-20', 0, '', '', '', '2020-12-03 04:45:39', '2021-04-02 22:31:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '1985-01-19', 231456208, 'Omnis non est incidunt asperna', 'Destinychester', 'Zambia', '2021-03-14 14:26:32', '2021-02-09 19:35:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'f', '1985-04-05', 7288728, 'Consequuntur id id fugit repud', 'West Cydneyborough', 'Czech Republic', '2021-03-21 16:43:14', '2021-04-06 19:19:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'f', '0000-00-00', 0, '', 'Schultzbury', '', '2020-08-18 13:25:53', '2020-08-01 11:15:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'm', '0000-00-00', 734730729, 'A iure alias saepe officiis.', 'Port Nia', '', '2021-06-14 03:50:30', '2020-10-22 16:15:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'f', '2018-02-22', 30548932, '', '', 'Guadeloupe', '2021-04-22 23:52:16', '2021-05-07 09:10:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '2012-06-13', 9, '', 'East Amelyhaven', 'Mali', '2020-09-25 01:21:55', '2021-06-05 01:34:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'f', '0000-00-00', 60, 'Architecto totam aut qui tempo', 'Hintzside', '', '2020-09-10 03:15:08', '2021-03-27 15:31:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'f', '0000-00-00', 220757221, 'Dolorem quasi sit nulla dolore', '', '', '2021-04-24 23:09:30', '2021-04-08 09:13:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '0000-00-00', 0, 'Vitae molestias blanditiis qua', '', 'Martinique', '2020-11-02 19:20:53', '2021-01-11 14:03:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '1975-12-20', 0, 'A fugiat ipsa rerum odio et es', 'East Jadynview', '', '2020-12-10 11:57:07', '2020-11-13 04:04:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '1985-06-12', 10, '', 'Lake Ezramouth', '', '2021-05-21 20:42:52', '2020-12-20 21:07:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '1976-03-29', 8638868, 'Suscipit explicabo molestiae p', '', '', '2020-09-02 12:51:34', '2021-05-16 18:55:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'm', '1984-03-12', 80118565, '', '', 'Lebanon', '2020-12-25 18:59:51', '2020-12-24 00:39:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'f', '0000-00-00', 0, '', 'Willardview', '', '2021-04-10 07:48:26', '2021-05-03 15:13:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'f', '0000-00-00', 0, '', '', 'Tajikistan', '2021-06-10 17:57:34', '2020-11-30 23:29:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '1999-11-29', 0, '', '', 'Panama', '2020-07-02 04:01:26', '2021-06-05 04:36:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '0000-00-00', 0, 'Quas nobis nesciunt totam occa', '', 'Philippines', '2020-10-18 18:09:03', '2020-06-15 14:31:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'm', '0000-00-00', 939317, '', 'New Jorgeville', 'Lao People\'s Democratic Republic', '2021-05-03 09:42:02', '2020-10-11 15:52:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '2013-03-12', 0, 'Ex voluptas quia incidunt adip', 'Geraldview', 'Lesotho', '2021-02-18 08:20:16', '2020-07-12 15:52:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '2009-04-07', 0, 'Tenetur beatae dolore debitis ', 'New Hailey', 'Norway', '2021-02-12 11:37:10', '2020-12-30 14:36:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'm', '2001-04-03', 88719354, 'Est nostrum est neque perferen', '', '', '2020-12-30 09:27:00', '2021-04-01 06:02:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'f', '1970-04-06', 0, '', '', '', '2021-04-26 01:27:56', '2021-05-02 18:03:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'm', '1997-08-05', 5, '', 'New Desmondville', '', '2021-04-27 06:03:19', '2020-11-04 04:17:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'm', '2010-03-01', 0, '', 'New Houstonland', '', '2020-07-01 22:58:57', '2021-06-08 04:24:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'f', '2000-12-06', 29, '', '', 'Malawi', '2021-02-19 07:32:16', '2021-04-08 20:06:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '0000-00-00', 0, '', 'Granttown', 'Hong Kong', '2020-11-30 20:10:59', '2020-10-02 22:09:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'm', '0000-00-00', 7042241, '', '', '', '2020-07-13 06:35:11', '2021-02-17 02:38:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '2000-12-27', 0, 'Ut unde odit libero inventore ', '', 'Norfolk Island', '2021-04-04 20:54:57', '2020-08-18 09:54:26');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Kennedy', 'Ullrich', 'moses29@example.com', '(730)360-6509x04184', '2021-01-06 10:15:35', '2021-05-25 21:49:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Cullen', 'Weissnat', 'tracy.jerde@example.com', '(419)088-6363', '2020-09-19 22:39:55', '2020-06-23 16:02:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Celine', 'Littel', 'houston91@example.org', '962.289.9226', '2020-09-15 05:31:20', '2020-10-03 21:37:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Angel', 'Marquardt', 'brady.lebsack@example.com', '579-593-3521', '2020-08-28 12:13:17', '2020-09-12 02:08:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Martine', 'Wilderman', 'jakayla68@example.com', '1-338-697-5736', '2021-01-14 17:18:09', '2021-04-13 01:52:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Alfonso', 'Klein', 'estell.homenick@example.net', '130-143-6261x7105', '2021-03-15 02:47:21', '2020-09-20 13:10:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Darrion', 'Fahey', 'olen.waters@example.com', '337.671.8929x27086', '2020-09-05 03:28:52', '2020-11-16 04:27:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Lenna', 'Steuber', 'dicki.sister@example.org', '(718)266-4675x90556', '2021-03-11 21:22:58', '2021-05-20 14:00:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Michelle', 'Wyman', 'vschuster@example.com', '06890116742', '2021-04-11 02:26:05', '2020-12-26 20:27:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Loma', 'Leannon', 'rjerde@example.net', '(655)984-1002x23003', '2021-01-30 12:45:06', '2021-05-03 13:08:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Eddie', 'Doyle', 'weber.franz@example.net', '641-545-0935x75719', '2021-06-05 17:55:30', '2021-04-23 13:02:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Austen', 'Konopelski', 'fritsch.alex@example.com', '000.382.2993', '2020-11-01 19:43:32', '2021-01-11 20:25:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Claudia', 'Baumbach', 'zjast@example.com', '1-528-976-8033x238', '2020-06-16 07:56:21', '2020-07-04 08:56:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Lyric', 'Parisian', 'raheem.jacobi@example.net', '(000)801-8648x1125', '2020-08-11 07:04:45', '2020-10-21 08:41:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Joe', 'Welch', 'rodolfo.denesik@example.org', '05381473169', '2021-01-09 19:35:45', '2021-03-17 13:00:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Jocelyn', 'Bergstrom', 'graham.mekhi@example.net', '374.829.1225x4582', '2021-01-02 15:29:34', '2021-05-06 02:36:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Omari', 'Lubowitz', 'jaqueline.satterfield@example.com', '619.848.8879x168', '2021-01-10 04:06:03', '2020-06-14 14:28:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Kade', 'Wolf', 'thompson.hulda@example.net', '1-364-676-4479x768', '2021-04-30 09:10:09', '2021-05-07 12:16:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Sibyl', 'King', 'pschmidt@example.com', '(841)090-0076x4233', '2021-04-10 15:09:11', '2020-10-03 08:54:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Haylee', 'Gerhold', 'bcole@example.net', '(605)500-3123x0912', '2021-04-08 23:33:01', '2020-09-04 01:43:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Susie', 'Goldner', 'kessler.elsa@example.org', '021-440-6617', '2020-07-17 23:40:57', '2020-12-21 04:06:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Alicia', 'Hackett', 'roman.veum@example.org', '+37(2)1500832377', '2021-05-16 23:04:58', '2020-10-03 20:51:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Sydnee', 'Hagenes', 'molson@example.org', '1-189-207-7991x854', '2021-06-12 05:28:22', '2021-04-11 01:09:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Treva', 'Dibbert', 'bahringer.modesta@example.net', '1-559-965-3811', '2020-08-23 18:39:28', '2020-09-15 06:43:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Kasey', 'Ziemann', 'connelly.thomas@example.org', '(421)736-0008', '2021-01-13 19:12:20', '2021-05-07 13:28:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Reinhold', 'Champlin', 'hluettgen@example.com', '1-567-040-0252', '2021-02-14 20:29:00', '2021-04-27 06:04:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Wilburn', 'Yost', 'lulu25@example.com', '(247)528-5028x19609', '2021-06-06 02:03:37', '2021-05-07 00:00:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Hayley', 'Morissette', 'carli88@example.com', '+88(8)6398331280', '2020-12-31 06:36:47', '2021-05-14 23:21:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Anjali', 'Eichmann', 'jamaal.reynolds@example.com', '(575)418-9070x359', '2020-08-25 21:46:39', '2020-09-20 04:29:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Rylee', 'Deckow', 'alejandra.little@example.net', '023-852-7739', '2020-11-24 20:09:56', '2020-11-03 21:18:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Afton', 'Reichel', 'cbahringer@example.com', '107.926.8921x85918', '2020-10-01 01:19:44', '2020-06-24 00:15:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Alexanne', 'Kirlin', 'bleffler@example.org', '833.998.9578', '2020-12-23 20:59:28', '2020-11-28 19:44:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Baby', 'Steuber', 'zrunte@example.net', '+35(8)3417484264', '2020-10-23 16:12:35', '2020-08-18 02:42:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Ernesto', 'Stanton', 'zhackett@example.com', '282.042.9980', '2020-12-30 21:45:50', '2020-12-15 15:45:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Isabella', 'Rau', 'kilback.lera@example.com', '435-835-0532', '2020-09-30 17:34:45', '2020-11-12 22:27:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Monserrate', 'Beatty', 'verda35@example.org', '1-140-825-5570x800', '2020-07-07 08:05:14', '2021-04-17 23:43:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Elliot', 'Turner', 'floy.mosciski@example.com', '+54(7)3483752530', '2021-04-23 16:49:30', '2021-03-14 10:04:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Stacy', 'Lynch', 'paolo.kihn@example.com', '087.780.8115', '2020-07-14 05:03:37', '2020-11-12 20:23:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Idella', 'Barton', 'fondricka@example.org', '674-549-8445x21602', '2020-09-20 04:24:21', '2020-12-12 08:17:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Vallie', 'Altenwerth', 'erik17@example.org', '842.886.2308x414', '2021-04-27 21:03:38', '2020-07-11 13:35:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Agustin', 'Bailey', 'zulauf.nicola@example.com', '+88(0)3839620874', '2020-08-16 03:14:00', '2020-09-13 13:08:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Alexane', 'Johnson', 'johnpaul67@example.net', '111-041-5519', '2021-06-10 19:33:05', '2020-12-16 22:57:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Wilford', 'Zboncak', 'sabshire@example.net', '177-175-5407', '2021-05-23 20:47:33', '2021-01-28 00:38:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Tanner', 'Towne', 'lsmitham@example.org', '259.943.8058', '2021-02-25 11:09:01', '2021-03-26 08:46:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Freda', 'Glover', 'tkoelpin@example.net', '197-408-4422', '2020-11-01 18:05:55', '2020-12-15 07:34:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Marcelle', 'Smith', 'uwill@example.net', '1-553-273-9019x352', '2020-07-05 11:17:50', '2021-04-19 02:27:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Gia', 'Leannon', 'weimann.kari@example.net', '(346)042-7816x752', '2020-11-25 11:57:28', '2020-08-17 23:00:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Ardith', 'Bode', 'amie.beahan@example.org', '1-654-041-2232x460', '2021-05-23 21:49:24', '2021-02-18 09:57:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Raymundo', 'Kirlin', 'justina90@example.org', '834-412-9149', '2021-05-04 15:36:43', '2020-11-18 06:20:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Nickolas', 'Lesch', 'amie.krajcik@example.org', '1-493-912-8089x935', '2021-04-24 00:39:10', '2021-05-13 12:26:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Gina', 'Schmidt', 'tcruickshank@example.org', '065.232.3588', '2020-11-15 15:30:10', '2021-04-26 00:25:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Makenzie', 'Weissnat', 'mclaughlin.kevon@example.org', '259.535.5733', '2021-02-06 03:59:46', '2020-09-02 17:01:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Otis', 'Heidenreich', 'laila89@example.net', '+56(6)6976114607', '2020-06-22 21:30:02', '2021-02-07 09:01:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Rosie', 'Lehner', 'gerhold.micah@example.net', '1-888-521-8541x3134', '2021-02-02 01:30:19', '2020-07-22 22:26:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Garrison', 'Upton', 'clarabelle31@example.org', '02107533384', '2021-04-08 18:11:56', '2020-10-02 00:21:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Katrina', 'Boyle', 'zoila.haley@example.com', '1-941-369-4479', '2020-08-27 23:29:50', '2021-05-12 22:14:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Nia', 'Parker', 'marcelle.jaskolski@example.com', '+25(2)8409892868', '2020-10-10 05:08:07', '2020-11-16 23:22:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Carson', 'Cummings', 'mitchel.collier@example.net', '780-459-6949', '2021-05-07 20:24:54', '2021-05-12 12:09:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Margie', 'Schowalter', 'allie59@example.com', '735-617-8124', '2020-11-02 01:36:00', '2021-01-27 16:37:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Doris', 'Raynor', 'tlang@example.com', '1-849-350-2553x1940', '2020-12-10 17:50:18', '2020-07-06 21:54:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Keenan', 'Gibson', 'ldaugherty@example.net', '+96(1)6257696434', '2020-10-19 09:08:57', '2020-06-27 01:44:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Jovany', 'Veum', 'ttoy@example.com', '323-365-6450', '2021-03-28 02:41:06', '2021-05-15 22:34:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Winfield', 'Will', 'conor.hermann@example.org', '230.284.2693', '2021-04-06 05:29:26', '2020-09-29 14:27:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Abdul', 'Carroll', 'modesta.kohler@example.org', '1-185-534-7617x964', '2021-03-06 02:12:25', '2021-02-01 04:24:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Connie', 'Bartell', 'jayce12@example.net', '399-056-7762x0521', '2020-10-05 14:55:56', '2020-12-08 23:35:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Nolan', 'Runolfsdottir', 'megane84@example.net', '689.494.7048', '2020-12-08 13:57:56', '2021-05-07 02:36:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Dante', 'Gulgowski', 'lionel.kessler@example.org', '+95(8)6050259825', '2021-04-05 15:24:55', '2020-10-31 21:00:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Gage', 'Boyer', 'dillon.ferry@example.net', '1-934-087-9098', '2020-07-18 09:58:09', '2020-06-16 04:45:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Omer', 'Rogahn', 'vondricka@example.net', '437.250.6021', '2020-08-15 02:25:01', '2021-02-08 16:29:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Marc', 'Schiller', 'joaquin86@example.org', '+76(4)8228655203', '2021-02-28 10:49:33', '2021-05-27 18:36:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Cassidy', 'Brekke', 'barrett46@example.net', '1-415-451-4995x3896', '2020-11-25 20:50:22', '2020-08-01 17:46:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Maud', 'Botsford', 'co\'connell@example.com', '364-563-3592', '2020-11-15 19:09:33', '2021-04-17 09:56:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Vivienne', 'Roberts', 'gglover@example.org', '09294505505', '2021-02-14 04:47:09', '2021-02-19 03:32:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Emmanuelle', 'Balistreri', 'elza70@example.org', '776.694.9882', '2020-07-17 19:48:29', '2020-07-12 11:07:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Jazmyn', 'D\'Amore', 'wfisher@example.net', '115-267-9331x6419', '2021-01-16 17:54:36', '2020-10-14 05:22:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Reba', 'Steuber', 'evert.hand@example.com', '542-661-5927x00363', '2021-03-19 19:07:50', '2020-12-18 17:32:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Eladio', 'Murphy', 'angelita22@example.net', '1-533-457-7504x977', '2020-11-07 19:20:08', '2020-10-28 21:58:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Willard', 'Brekke', 'royce79@example.org', '+23(5)3396727012', '2021-02-22 12:29:31', '2021-04-30 06:21:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Margot', 'Dietrich', 'zbotsford@example.com', '1-118-016-9323x2530', '2020-08-07 11:18:28', '2020-08-04 19:18:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'June', 'Altenwerth', 'altenwerth.rosetta@example.net', '288.327.4195x819', '2020-09-05 08:24:37', '2020-08-26 23:28:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Monroe', 'Klocko', 'alexandrea.carroll@example.net', '1-861-410-9817x6541', '2020-12-01 01:17:06', '2020-10-05 15:42:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Eda', 'Bechtelar', 'hartmann.cornelius@example.org', '+84(5)6123127816', '2021-05-14 08:51:53', '2020-08-09 18:30:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Maurice', 'Gislason', 'shannon07@example.org', '043-490-2216', '2021-04-02 01:46:52', '2020-09-01 17:27:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Payton', 'Runolfsdottir', 'columbus92@example.com', '646-347-2019', '2020-07-21 21:33:14', '2021-01-16 02:46:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Erik', 'Walsh', 'kerdman@example.com', '+88(8)8982329785', '2020-08-29 21:57:10', '2020-09-12 10:04:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Tad', 'Hayes', 'huels.jabari@example.org', '1-198-482-3880x7420', '2020-09-30 18:50:16', '2020-06-27 02:24:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Bobbie', 'Armstrong', 'nya66@example.org', '1-328-129-3408x3662', '2020-09-13 22:28:06', '2020-12-11 01:10:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Amie', 'Weber', 'katheryn.waelchi@example.net', '920.495.8872', '2021-03-07 11:32:19', '2020-09-07 19:45:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Shaylee', 'Leannon', 'wolff.kayley@example.org', '592-802-6782x218', '2020-09-05 05:48:44', '2020-10-07 07:02:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Melany', 'Powlowski', 'baby08@example.net', '125.835.6458x160', '2020-07-24 06:51:00', '2020-06-22 03:16:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Dianna', 'Flatley', 'ndubuque@example.net', '1-241-543-3936x48027', '2020-09-04 17:30:08', '2020-09-20 05:41:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Zoey', 'Feeney', 'tyler.stracke@example.net', '03915503387', '2020-12-04 14:49:41', '2020-08-28 03:05:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Leonor', 'Pacocha', 'uriah.will@example.org', '+00(0)5621415596', '2021-03-19 04:45:12', '2021-05-29 12:50:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Vidal', 'Kuhic', 'rigoberto.trantow@example.org', '1-971-726-7960x60660', '2021-06-10 23:34:17', '2021-02-26 15:29:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Antwon', 'Cronin', 'michele20@example.org', '+03(4)1891962438', '2021-04-15 13:16:08', '2020-11-07 07:46:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Olen', 'Hoeger', 'kharber@example.com', '1-652-414-9839', '2020-11-10 09:11:41', '2021-02-09 14:51:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Gregg', 'Zieme', 'conner22@example.org', '125-035-2143x415', '2020-09-26 12:51:06', '2021-04-25 06:01:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Twila', 'King', 'roberts.justus@example.com', '09185505868', '2020-07-12 21:43:21', '2020-09-16 01:54:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Yasmin', 'Bruen', 'wdaniel@example.net', '+11(1)0836951559', '2020-12-19 17:58:08', '2021-01-17 17:06:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Hailee', 'Osinski', 'wgorczany@example.net', '404.889.4698x991', '2021-01-14 22:54:09', '2021-05-30 19:03:14');


#
# TABLE STRUCTURE FOR: users_likes
#

DROP TABLE IF EXISTS `users_likes`;

CREATE TABLE `users_likes` (
  `user_id_to` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, которого лайкнули',
  `user_id_from` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который лайкнул другого пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`user_id_to`,`user_id_from`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Лайки пользователей';

INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (1, 12, '2020-09-02 14:26:32');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (1, 18, '2020-12-09 12:43:18');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (2, 22, '2021-03-07 16:17:52');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (3, 41, '2021-06-13 18:23:23');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (3, 98, '2020-12-23 19:19:04');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (5, 48, '2021-04-11 15:14:35');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (6, 35, '2021-04-17 12:02:54');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (8, 6, '2020-06-30 22:37:30');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (8, 93, '2020-11-01 20:42:06');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (9, 56, '2021-05-23 07:37:07');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (10, 22, '2021-04-16 09:38:30');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (10, 82, '2020-07-23 16:32:12');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (10, 92, '2021-01-08 19:31:01');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (11, 8, '2021-04-05 10:50:49');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (11, 14, '2020-12-30 21:51:04');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (14, 92, '2020-11-28 02:07:04');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (16, 75, '2021-02-15 01:32:25');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (17, 18, '2021-02-14 07:05:37');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (17, 37, '2020-10-29 10:30:11');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (17, 68, '2020-08-10 05:43:07');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (18, 24, '2020-10-16 23:03:22');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (18, 87, '2020-10-07 15:49:33');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (20, 86, '2021-03-24 23:27:15');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (21, 43, '2020-08-11 04:08:32');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (21, 100, '2020-09-06 13:59:41');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (22, 43, '2020-10-18 16:54:56');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (22, 66, '2020-06-18 22:58:08');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (22, 73, '2021-01-23 12:21:33');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (25, 83, '2021-01-13 22:23:38');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (26, 86, '2020-07-25 14:09:04');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (26, 97, '2020-06-19 05:02:20');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (29, 34, '2020-12-11 04:34:59');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (30, 3, '2020-09-07 10:06:37');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (31, 77, '2020-09-02 05:16:30');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (32, 48, '2021-03-18 11:53:14');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (35, 71, '2021-05-29 05:25:49');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (37, 55, '2020-08-09 17:58:20');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (44, 58, '2020-12-23 14:22:38');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (45, 70, '2020-10-15 00:46:47');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (46, 93, '2020-10-25 20:00:55');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (47, 49, '2020-07-27 09:49:26');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (47, 92, '2021-01-24 19:08:45');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (49, 86, '2020-09-23 07:03:06');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (51, 29, '2021-03-31 14:17:30');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (51, 35, '2020-08-18 10:50:37');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (51, 82, '2020-09-12 21:16:00');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (52, 29, '2021-01-13 11:22:31');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (52, 67, '2021-04-18 11:36:48');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (54, 37, '2021-05-22 05:48:23');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (55, 81, '2020-07-15 00:39:42');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (56, 45, '2021-02-22 03:17:01');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (57, 58, '2020-09-20 14:54:47');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (57, 79, '2020-09-17 05:03:46');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (63, 95, '2020-08-04 12:10:27');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (64, 99, '2020-10-07 14:24:14');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (65, 28, '2021-02-19 13:29:36');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (65, 75, '2020-12-21 04:19:56');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (65, 82, '2020-10-10 09:12:12');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (65, 97, '2020-07-23 05:14:25');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (66, 9, '2020-07-10 05:01:08');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (66, 25, '2020-09-02 04:16:44');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (66, 44, '2020-08-21 19:26:57');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (66, 78, '2020-12-03 20:15:12');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (67, 23, '2021-04-23 02:12:56');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (67, 78, '2020-08-12 20:48:35');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (70, 87, '2020-08-27 22:44:00');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (71, 64, '2020-12-16 10:50:55');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (72, 75, '2020-11-21 13:33:50');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (74, 9, '2020-06-23 06:07:41');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (78, 96, '2020-08-11 21:35:33');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (80, 17, '2021-05-01 08:22:30');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (80, 49, '2021-02-11 14:09:11');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (80, 52, '2020-11-30 11:56:17');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (81, 38, '2020-11-15 12:56:05');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (82, 10, '2020-06-19 20:09:35');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (82, 68, '2021-03-24 10:37:21');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (83, 40, '2020-11-21 07:19:15');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (83, 59, '2020-09-04 16:57:52');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (84, 34, '2021-06-03 12:45:33');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (85, 2, '2021-06-09 22:16:30');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (85, 61, '2020-10-16 06:36:16');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (86, 31, '2021-03-16 14:50:39');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (87, 97, '2021-05-19 10:13:59');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (88, 17, '2021-05-14 13:46:22');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (88, 64, '2020-12-03 13:38:25');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (89, 66, '2021-01-28 18:20:15');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (91, 61, '2020-09-08 20:42:44');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (91, 97, '2020-12-07 12:27:34');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (92, 29, '2020-06-30 19:07:11');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (93, 57, '2021-04-26 14:01:20');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (94, 28, '2020-10-13 16:49:14');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (94, 47, '2020-11-13 03:15:57');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (95, 51, '2020-12-22 15:55:05');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (96, 2, '2021-02-09 21:54:52');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (97, 47, '2020-06-23 17:52:49');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (97, 73, '2020-08-30 01:55:51');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (97, 84, '2021-06-10 20:33:01');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (97, 100, '2020-07-17 03:45:18');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (98, 100, '2021-03-16 22:16:13');
INSERT INTO `users_likes` (`user_id_to`, `user_id_from`, `created_at`) VALUES (99, 4, '2020-09-22 09:07:15');


