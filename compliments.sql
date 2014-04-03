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

INSERT INTO words (Adjective, sarVal) VALUES ('awesome', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('amazing', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('beautiful', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('brilliant', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('charming', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('cool', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('dazzling', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('delightful', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('electrifying', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('exquisite', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('fabulous', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('fun', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('good', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('great', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('handsome', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('harmonious', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('ideal', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('impressive', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('joyous', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('jubilant', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('keen', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('kind', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('legendary', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('luminous', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('marvelous', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('meritorious', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('nice', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('novel', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('okay', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('perfect', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('phenomenal', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('incredible', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('smashing', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('refreshing', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('remarkable', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('satisfactory', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('sparkling', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('terrific', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('thrilling', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('unreal', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('upbeat', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('vibrant', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('virtuous', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('wonderful', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('wondrous', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('adorable', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('excellent', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('agreeable', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('gorgeous', 'F');
INSERT INTO words (Adjective, sarVal) VALUES ('trite', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('banal', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('unengaging', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('childish', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('annoying', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('ungrateful', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('substandard', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('incompetent', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('uncouth', 'T');
INSERT INTO words (Adjective, sarVal) VALUES ('skanky', 'T');

CREATE TABLE adverbs_vowels
(
  ID INT NOT NULL AUTO_INCREMENT,
  Adverb VARCHAR(35),
  Intensity INT(1),
  PRIMARY KEY (ID)
);

CREATE INDEX intensityIndex ON adverbs_vowels (Adverb, Intensity);

INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('awesomely', 1);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('amazingly', 1);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('electrifyingly', 3);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('exquisitely', 2);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('ideally', 2);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('impressively', 2);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('adorably', 1);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('excellently', 2);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('agreeably', 1);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('unbelievably', 3);
INSERT INTO adverbs_vowels (Adverb, Intensity) VALUES ('extremely', 2);

CREATE TABLE adverbs_consonant
(
  ID INT NOT NULL AUTO_INCREMENT,
  Adverb VARCHAR(35),
  Intensity INT(1),
  PRIMARY KEY (ID)
);

CREATE INDEX intensityIndex ON adverbs_consonant (Adverb, Intensity);

INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('beautifully', 3);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('brilliantly', 3);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('charmingly', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('dazzlingly', 3);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('delightfully', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('fabulously', 3);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('greatly', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('handsomely', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('harmoniously', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('joyously', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('jubilantly', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('keenly', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('kindly', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('legendarily', 3);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('luminously', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('marvelously', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('meritoriously', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('novelly', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('perfectly', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('phenomenally', 3);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('incredibly', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('smashingly', 3);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('refreshingly', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('remarkably', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('satisfactorily', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('sparklingly', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('terrifically', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('thrillingly', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('vibrantly', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('virtuously', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('wonderfully', 1);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('wondrously', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('gorgeously', 2);
INSERT INTO adverbs_consonant (Adverb, Intensity) VALUES ('bodaciously', 3);

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






