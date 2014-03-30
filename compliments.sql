DROP DATABASE complimentDB;

CREATE DATABASE IF NOT EXISTS complimentDB;
GRANT ALL PRIVILEGES ON complimentDB.* to 'compliment'@'localhost' 
identified by 'password';
USE complimentDB;

CREATE TABLE words
(
  ID INT NOT NULL AUTO_INCREMENT,
  Adjective VARCHAR(35),
  sarVal CHAR(1),
  PRIMARY KEY (ID)
);

INSERT INTO words (Adjective) VALUES ('awesome', 'T');
INSERT INTO words (Adjective) VALUES ('amazing', 'T');
INSERT INTO words (Adjective) VALUES ('beautiful', 'T');
INSERT INTO words (Adjective) VALUES ('brilliant', 'T');
INSERT INTO words (Adjective) VALUES ('charming', 'T');
INSERT INTO words (Adjective) VALUES ('cool', 'T');
INSERT INTO words (Adjective) VALUES ('dazzling', 'T');
INSERT INTO words (Adjective) VALUES ('delightful', 'T');
INSERT INTO words (Adjective) VALUES ('electrifying', 'T');
INSERT INTO words (Adjective) VALUES ('exquisite', 'T');
INSERT INTO words (Adjective) VALUES ('fabulous', 'T');
INSERT INTO words (Adjective) VALUES ('fun', 'T');
INSERT INTO words (Adjective) VALUES ('good', 'T');
INSERT INTO words (Adjective) VALUES ('great', 'T');
INSERT INTO words (Adjective) VALUES ('handsome', 'T');
INSERT INTO words (Adjective) VALUES ('harmonious', 'T');
INSERT INTO words (Adjective) VALUES ('ideal', 'T');
INSERT INTO words (Adjective) VALUES ('impressive', 'T');
INSERT INTO words (Adjective) VALUES ('joyous', 'T');
INSERT INTO words (Adjective) VALUES ('jubilant', 'T');
INSERT INTO words (Adjective) VALUES ('keen', 'T');
INSERT INTO words (Adjective) VALUES ('kind', 'T');
INSERT INTO words (Adjective) VALUES ('legendary', 'T');
INSERT INTO words (Adjective) VALUES ('luminous', 'T');
INSERT INTO words (Adjective) VALUES ('marvelous', 'T');
INSERT INTO words (Adjective) VALUES ('meritorious', 'T');
INSERT INTO words (Adjective) VALUES ('nice', 'T');
INSERT INTO words (Adjective) VALUES ('novel', 'T');
INSERT INTO words (Adjective) VALUES ('okay', 'T');
INSERT INTO words (Adjective) VALUES ('perfect', 'T');
INSERT INTO words (Adjective) VALUES ('phenomenal', 'T');
INSERT INTO words (Adjective) VALUES ('incredible', 'T');
INSERT INTO words (Adjective) VALUES ('smashing', 'T');
INSERT INTO words (Adjective) VALUES ('refreshing', 'T');
INSERT INTO words (Adjective) VALUES ('remarkable', 'T');
INSERT INTO words (Adjective) VALUES ('satisfactory', 'T');
INSERT INTO words (Adjective) VALUES ('sparkling', 'T');
INSERT INTO words (Adjective) VALUES ('terrific', 'T');
INSERT INTO words (Adjective) VALUES ('thrilling', 'T');
INSERT INTO words (Adjective) VALUES ('unreal', 'T');
INSERT INTO words (Adjective) VALUES ('upbeat', 'T');
INSERT INTO words (Adjective) VALUES ('vibrant', 'T');
INSERT INTO words (Adjective) VALUES ('virtuous', 'T');
INSERT INTO words (Adjective) VALUES ('wonderful', 'T');
INSERT INTO words (Adjective) VALUES ('wondrous', 'T');
INSERT INTO words (Adjective) VALUES ('adorable', 'T');
INSERT INTO words (Adjective) VALUES ('excellent', 'T');
INSERT INTO words (Adjective) VALUES ('agreeable', 'T');
INSERT INTO words (Adjective) VALUES ('gorgeous', 'T');
INSERT INTO words (Adjective) VALUES ('gorgeous', 'F');

CREATE TABLE adverbs_vowels
(
  ID INT NOT NULL AUTO_INCREMENT,
  Adverb VARCHAR(35),
  PRIMARY KEY (ID)
);

INSERT INTO adverbs_vowels (Adverb) VALUES ('awesomely');
INSERT INTO adverbs_vowels (Adverb) VALUES ('amazingly');
INSERT INTO adverbs_vowels (Adverb) VALUES ('electrifyingly');
INSERT INTO adverbs_vowels (Adverb) VALUES ('exquisitely');
INSERT INTO adverbs_vowels (Adverb) VALUES ('ideally');
INSERT INTO adverbs_vowels (Adverb) VALUES ('impressively');
INSERT INTO adverbs_vowels (Adverb) VALUES ('adorably');
INSERT INTO adverbs_vowels (Adverb) VALUES ('excellently');
INSERT INTO adverbs_vowels (Adverb) VALUES ('agreeably');
INSERT INTO adverbs_vowels (Adverb) VALUES ('unbelievably');
INSERT INTO adverbs_vowels (Adverb) VALUES ('extremely');

CREATE TABLE adverbs_consonant
(
  ID INT NOT NULL AUTO_INCREMENT,
  Adverb VARCHAR(35),
  PRIMARY KEY (ID)
);

INSERT INTO adverbs_consonant (Adverb) VALUES ('beautifully');
INSERT INTO adverbs_consonant (Adverb) VALUES ('brilliantly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('charmingly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('dazzlingly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('delightfully');
INSERT INTO adverbs_consonant (Adverb) VALUES ('fabulously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('greatly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('handsomely');
INSERT INTO adverbs_consonant (Adverb) VALUES ('harmoniously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('joyously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('jubilantly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('keenly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('kindly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('legendarily');
INSERT INTO adverbs_consonant (Adverb) VALUES ('luminously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('marvelously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('meritoriously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('novelly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('perfectly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('phenomenally');
INSERT INTO adverbs_consonant (Adverb) VALUES ('incredibly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('smashingly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('refreshingly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('remarkably');
INSERT INTO adverbs_consonant (Adverb) VALUES ('satisfactorily');
INSERT INTO adverbs_consonant (Adverb) VALUES ('sparklingly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('terrifically');
INSERT INTO adverbs_consonant (Adverb) VALUES ('thrillingly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('vibrantly');
INSERT INTO adverbs_consonant (Adverb) VALUES ('virtuously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('wonderfully');
INSERT INTO adverbs_consonant (Adverb) VALUES ('wondrously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('gorgeously');
INSERT INTO adverbs_consonant (Adverb) VALUES ('bodaciously');

CREATE TABLE proper_grammar
(
  ID INT NOT NULL AUTO_INCREMENT,
  Article VARCHAR(2),
  PRIMARY KEY (ID)
);

INSERT INTO proper_grammar (Article) Values ('a');
INSERT INTO proper_grammar (Article) Values ('an');

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




