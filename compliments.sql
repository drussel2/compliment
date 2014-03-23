DROP DATABASE complimentDB;

CREATE DATABASE IF NOT EXISTS complimentDB;
GRANT ALL PRIVILEGES ON complimentDB.* to 'compliment'@'localhost' 
identified by 'password';
USE complimentDB;

CREATE TABLE words
(
  ID INT NOT NULL AUTO_INCREMENT,
  Adjective VARCHAR(35),
  PRIMARY KEY (ID)
);

INSERT INTO words (Adjective) VALUES ('awesome');
INSERT INTO words (Adjective) VALUES ('amazing');
INSERT INTO words (Adjective) VALUES ('beautiful');
INSERT INTO words (Adjective) VALUES ('brilliant');
INSERT INTO words (Adjective) VALUES ('charming');
INSERT INTO words (Adjective) VALUES ('cool');
INSERT INTO words (Adjective) VALUES ('dazzling');
INSERT INTO words (Adjective) VALUES ('delightful');
INSERT INTO words (Adjective) VALUES ('electrifying');
INSERT INTO words (Adjective) VALUES ('exquisite');
INSERT INTO words (Adjective) VALUES ('fabulous');
INSERT INTO words (Adjective) VALUES ('fun');
INSERT INTO words (Adjective) VALUES ('good');
INSERT INTO words (Adjective) VALUES ('great');
INSERT INTO words (Adjective) VALUES ('handsome');
INSERT INTO words (Adjective) VALUES ('harmonious');
INSERT INTO words (Adjective) VALUES ('ideal');
INSERT INTO words (Adjective) VALUES ('impressive');
INSERT INTO words (Adjective) VALUES ('joyous');
INSERT INTO words (Adjective) VALUES ('jubilant');
INSERT INTO words (Adjective) VALUES ('keen');
INSERT INTO words (Adjective) VALUES ('kind');
INSERT INTO words (Adjective) VALUES ('legendary');
INSERT INTO words (Adjective) VALUES ('luminous');
INSERT INTO words (Adjective) VALUES ('marvelous');
INSERT INTO words (Adjective) VALUES ('meritorious');
INSERT INTO words (Adjective) VALUES ('nice');
INSERT INTO words (Adjective) VALUES ('novel');
INSERT INTO words (Adjective) VALUES ('okay');
INSERT INTO words (Adjective) VALUES ('one-hundred percent');
INSERT INTO words (Adjective) VALUES ('perfect');
INSERT INTO words (Adjective) VALUES ('phenomenal');
INSERT INTO words (Adjective) VALUES ('incredible');
INSERT INTO words (Adjective) VALUES ('smashing');
INSERT INTO words (Adjective) VALUES ('refreshing');
INSERT INTO words (Adjective) VALUES ('remarkable');
INSERT INTO words (Adjective) VALUES ('satisfactory');
INSERT INTO words (Adjective) VALUES ('sparkling');
INSERT INTO words (Adjective) VALUES ('terrific');
INSERT INTO words (Adjective) VALUES ('thrilling');
INSERT INTO words (Adjective) VALUES ('unreal');
INSERT INTO words (Adjective) VALUES ('upbeat');
INSERT INTO words (Adjective) VALUES ('vibrant');
INSERT INTO words (Adjective) VALUES ('virtuous');
INSERT INTO words (Adjective) VALUES ('wonderful');
INSERT INTO words (Adjective) VALUES ('wondrous');
INSERT INTO words (Adjective) VALUES ('adorable');
INSERT INTO words (Adjective) VALUES ('excellent');
INSERT INTO words (Adjective) VALUES ('agreeable');
INSERT INTO words (Adjective) VALUES ('gorgeous');


CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`,`username`) VALUES
(1, 'Andrew'),
(2, 'Dan'),
(3, 'Emily'),
(4, 'Lizzie');

CREATE TABLE IF NOT EXISTS `user_passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  password varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;


INSERT INTO user_passwords (id, password) VALUES (1, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
INSERT INTO user_passwords (id, password) VALUES (2,'5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
INSERT INTO user_passwords (id, password) VALUES (3, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
INSERT INTO user_passwords (id, password) VALUES (4, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');



CREATE TABLE IF NOT EXISTS quotes
(
  ID INT NOT NULL AUTO_INCREMENT,
  Phrases1 VARCHAR(50),
  Phrases2 VARCHAR(50),
  Pics VARCHAR(25),
  PRIMARY KEY (ID)
);

INSERT INTO quotes(Phrases1, Phrases2, Pics) VALUES ('sometimes all you can do is walk away,','hide your tears, and just pretend you\'re okay -Unknown','slide.jpg');
INSERT INTO quotes(Phrases1, Phrases2, Pics) VALUES ('Happiness is when what you think, what you say','and what you do are in harmony -Mahatma Gandhi','slide1.jpg');
INSERT INTO quotes(Phrases1, Phrases2, Pics) VALUES ('To do what you like is freedom','to like what you do is happiness -Ameya', 'slide2.jpg');
INSERT INTO quotes(Phrases1, Phrases2, Pics) VALUES ('Be so happy that when others look at you','they become happy too. -Unknown','slide3.jpg');




