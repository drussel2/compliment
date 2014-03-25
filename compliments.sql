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
INSERT INTO adverbs_vowels (Adverb) VALUES ('one-hundred percent...ly');
INSERT INTO adverbs_vowels (Adverb) VALUES ('unreally');
INSERT INTO adverbs_vowels (Adverb) VALUES ('adorably');
INSERT INTO adverbs_vowels (Adverb) VALUES ('excellently');
INSERT INTO adverbs_vowels (Adverb) VALUES ('agreeably');

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




