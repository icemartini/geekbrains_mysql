-- 1. Составить общее текстовое описание БД и решаемых ею задач;

/*
 * БД для рекомендательного сервиса наподобие kinonavigator
 * Решаемые БД задачи: хранение пользователей, каталога фильмов, выставленных оценок, на основе которых составляются рекомендации
 * Задачи сервиса: на основании оценок других пользователей составляем список фильмов для просмотра с наивысшими прогнозными оценками
 * Возможности: юзер может оценить фильм, пропустить, добавить в "виш-лист", отметить просмотренным
 */

-- 2. минимальное количество таблиц - 10;
-- 3. скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами);

DROP DATABASE recommend;
CREATE DATABASE recommend;
USE recommend;


-- Таблица пользователей
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE INDEX users_email_idx (email)
);  

-- Таблица профилей
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY UNIQUE, 
  gender CHAR(1),
  birthday DATE,
  photo_id INT UNSIGNED UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT profiles_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
  INDEX profiles_birthday_idx (birthday)
); 

-- Таблица стран
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE INDEX countries_name_idx (name)
);

-- Таблица с трейлерами
DROP TABLE IF EXISTS trailers;
CREATE TABLE trailers (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  filename VARCHAR(255) NOT NULL,
  size INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX trailers_size_idx (size)
);

-- Таблица с жанрами
DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE INDEX genres_name_idx (name)
);

-- Таблица с каталогом фильмов
DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  year INT UNSIGNED NOT NULL,
  genre_id INT UNSIGNED NOT NULL,
  country_id INT UNSIGNED NOT NULL,
  description TEXT NOT NULL,
  duration INT UNSIGNED NOT NULL,
  budget INT UNSIGNED NOT NULL,
  trailer_id INT UNSIGNED UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT movies_genre_id_fk FOREIGN KEY (genre_id) REFERENCES genres(id)
    ON DELETE RESTRICT,
  CONSTRAINT movies_trailer_id_fk FOREIGN KEY (trailer_id) REFERENCES trailers(id)
    ON DELETE SET NULL,
  CONSTRAINT movies_country_id_fk FOREIGN KEY (country_id) REFERENCES countries(id)
    ON DELETE RESTRICT
);

-- Таблица с оценками фильмов
DROP TABLE IF EXISTS scores;
CREATE TABLE scores (
  user_id INT UNSIGNED NOT NULL,
  movie_id INT UNSIGNED NOT NULL, 
  score INT UNSIGNED NOT NULL, 
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id, movie_id),
  CONSTRAINT scores_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
  CONSTRAINT scores_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movies(id)
    ON DELETE CASCADE,
  INDEX scores_score_idx (score)
);

-- Таблица с отзывами к фильмам
DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
  user_id INT UNSIGNED NOT NULL,
  movie_id INT UNSIGNED NOT NULL, 
  review TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id, movie_id),
  CONSTRAINT reviews_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
  CONSTRAINT reviews_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movies(id)
    ON DELETE CASCADE
);

-- Таблица с типами отметок
DROP TABLE IF EXISTS mark_types;
CREATE TABLE mark_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица с отметками к фильмам
DROP TABLE IF EXISTS user_marks;
CREATE TABLE user_marks (
  user_id INT UNSIGNED NOT NULL,
  movie_id INT UNSIGNED NOT NULL, 
  mark_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id, movie_id),
  CONSTRAINT user_marks_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
  CONSTRAINT user_marks_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movies(id)
    ON DELETE CASCADE,
  CONSTRAINT user_marks_mark_type_id_fk FOREIGN KEY (mark_type_id) REFERENCES mark_types(id)
    ON DELETE RESTRICT
);

-- 4. создать ERDiagram для БД;
-- диаграмма в приложенном файле er-diagram.png