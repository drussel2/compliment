DROP DATABASE complimentDB
CREATE DATABASE IF NOT EXISTS complimentDB
GRANT ALL PRIVILEGES ON complimentDB.* to 'compliment'@'localhost' 
identified by 'password';
USE complimentDB;

--
--Table structure for table "compliment"
--

CREATE TABLE 'compliment' (
  `ID` int(11) NOT NULL auto_increment,
  'Adjective' varchar(35) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY  (`ID`)
) ;

--
--Building data for table "compliment"
--

INSERT INTO compliment ('Adjective') VALUES ('awesome');
INSERT INTO compliment ('Adjective') VALUES ('amazing');
INSERT INTO compliment ('Adjective') VALUES ('beautiful');
INSERT INTO compliment ('Adjective') VALUES ('brilliant');
INSERT INTO compliment ('Adjective') VALUES ('charming');
INSERT INTO compliment ('Adjective') VALUES ('cool');
INSERT INTO compliment ('Adjective') VALUES ('dazzling');
INSERT INTO compliment ('Adjective') VALUES ('delightful');
INSERT INTO compliment ('Adjective') VALUES ('electrifying');
INSERT INTO compliment ('Adjective') VALUES ('exquisite');
INSERT INTO compliment ('Adjective') VALUES ('fabulous');
INSERT INTO compliment ('Adjective') VALUES ('fun');
INSERT INTO compliment ('Adjective') VALUES ('good');
INSERT INTO compliment ('Adjective') VALUES ('great');
INSERT INTO compliment ('Adjective') VALUES ('handsome');
INSERT INTO compliment ('Adjective') VALUES ('harmonious');
INSERT INTO compliment ('Adjective') VALUES ('ideal');
INSERT INTO compliment ('Adjective') VALUES ('impressive');
INSERT INTO compliment ('Adjective') VALUES ('joyous');
INSERT INTO compliment ('Adjective') VALUES ('jubilant');
INSERT INTO compliment ('Adjective') VALUES ('keen');
INSERT INTO compliment ('Adjective') VALUES ('kind');
INSERT INTO compliment ('Adjective') VALUES ('legendary');
INSERT INTO compliment ('Adjective') VALUES ('luminous');
INSERT INTO compliment ('Adjective') VALUES ('marvelous');
INSERT INTO compliment ('Adjective') VALUES ('meritorious');
INSERT INTO compliment ('Adjective') VALUES ('nice');
INSERT INTO compliment ('Adjective') VALUES ('novel');
INSERT INTO compliment ('Adjective') VALUES ('okay');
INSERT INTO compliment ('Adjective') VALUES ('one-hundred percent');
INSERT INTO compliment ('Adjective') VALUES ('perfect');
INSERT INTO compliment ('Adjective') VALUES ('phenomenal');
INSERT INTO compliment ('Adjective') VALUES ('quality');
INSERT INTO compliment ('Adjective') VALUES ('quick');
INSERT INTO compliment ('Adjective') VALUES ('refreshing');
INSERT INTO compliment ('Adjective') VALUES ('remarkable');
INSERT INTO compliment ('Adjective') VALUES ('satisfactory');
INSERT INTO compliment ('Adjective') VALUES ('sparkling');
INSERT INTO compliment ('Adjective') VALUES ('terrific');
INSERT INTO compliment ('Adjective') VALUES ('thrilling');
INSERT INTO compliment ('Adjective') VALUES ('unreal');
INSERT INTO compliment ('Adjective') VALUES ('upbeat');
INSERT INTO compliment ('Adjective') VALUES ('vibrant');
INSERT INTO compliment ('Adjective') VALUES ('virtuous');
INSERT INTO compliment ('Adjective') VALUES ('wonderful');
INSERT INTO compliment ('Adjective') VALUES ('wondrous');
INSERT INTO compliment ('Adjective') VALUES ('adorable');
INSERT INTO compliment ('Adjective') VALUES ('excellent');
INSERT INTO compliment ('Adjective') VALUES ('agreeable');
INSERT INTO compliment ('Adjective') VALUES ('gorgeous');
