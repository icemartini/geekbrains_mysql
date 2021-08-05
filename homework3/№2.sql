-- Таблица лайков для медиафайлов
CREATE TABLE media_likes (
  media_id INT UNSIGNED NOT NULL COMMENT "Ссылка на медиафайл",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который лайкнул медиафайл",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  PRIMARY KEY (media_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Лайки медиафайлов";

-- Таблица постов
CREATE TABLE pins (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который загрузил пост",
  pin_content TEXT NOT NULL COMMENT "Содержимое поста",
  external_link_id INT UNSIGNED COMMENT "Ссылка на внешний ресурс",
  repins_count INT UNSIGNED COMMENT "Количество перепостов",
  comments_count INT UNSIGNED COMMENT "Количество комментариев",
  deleted TINYINT(1) UNSIGNED COMMENT "Статус доступности",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  deleted_at DATETIME COMMENT "Время удаления поста"
) COMMENT "Посты";

-- Таблица лайков для постов
CREATE TABLE pins_likes (
  pin_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пост",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который лайкнул пост",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  PRIMARY KEY (pin_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Лайки постов";

-- Таблица лайков для пользователей
CREATE TABLE users_likes (
  user_id_to INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, которого лайкнули",
  user_id_from INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который лайкнул другого пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  PRIMARY KEY (user_id_to, user_id_from) COMMENT "Составной первичный ключ"
) COMMENT "Лайки пользователей";