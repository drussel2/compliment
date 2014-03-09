DROP DATABASE IF EXISTS complimentDB
CREATE DATABASE IF NOT EXISTS complimentDB
GRANT ALL PRIVILEGES ON complimentDB.* to 'compliment'@'localhost' 
identified by 'password';
USE complimentDB;
USE complimentGenerator

--
--Table structure for table "compliment"
--

DROP TABLE IF EXISTS 'compliment'
CREATE TABLE 'compliment' (
  `ID` int(11) NOT NULL auto_increment,
  'Adjective' varchar(35) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY  (`ID`)
) ;

--
--Building data for table "compliment"
--

INSERT INTO abductions VALUES ('awesome');
INSERT INTO abductions VALUES ('amazing');
INSERT INTO abductions VALUES ('beautiful');
INSERT INTO abductions VALUES ('brilliant');
INSERT INTO abductions VALUES ('charming');
INSERT INTO abductions VALUES ('cool');
INSERT INTO abductions VALUES ('dazzling');
INSERT INTO abductions VALUES ('delightful');
INSERT INTO abductions VALUES ('electrifying');
INSERT INTO abductions VALUES ('exquisite');
INSERT INTO abductions VALUES ('fabulous');
INSERT INTO abductions VALUES ('fun');
INSERT INTO abductions VALUES ('good');
INSERT INTO abductions VALUES ('great');
INSERT INTO abductions VALUES ('handsome');
INSERT INTO abductions VALUES ('harmonious');
INSERT INTO abductions VALUES ('ideal');
INSERT INTO abductions VALUES ('impressive');
INSERT INTO abductions VALUES ('joyous');
INSERT INTO abductions VALUES ('jubilant');
INSERT INTO abductions VALUES ('keen');
INSERT INTO abductions VALUES ('kind');
INSERT INTO abductions VALUES ('legendary');
INSERT INTO abductions VALUES ('luminous');
INSERT INTO abductions VALUES ('marvelous');
INSERT INTO abductions VALUES ('meritorious');
INSERT INTO abductions VALUES ('nice');
INSERT INTO abductions VALUES ('novel');
INSERT INTO abductions VALUES ('okay');
INSERT INTO abductions VALUES ('one-hundred percent');
INSERT INTO abductions VALUES ('perfect');
INSERT INTO abductions VALUES ('phenomenal');
INSERT INTO abductions VALUES ('quality');
INSERT INTO abductions VALUES ('quick');
INSERT INTO abductions VALUES ('refreshing');
INSERT INTO abductions VALUES ('remarkable');
INSERT INTO abductions VALUES ('satisfactory');
INSERT INTO abductions VALUES ('sparkling');
INSERT INTO abductions VALUES ('terrific');
INSERT INTO abductions VALUES ('thrilling');
INSERT INTO abductions VALUES ('unreal');
INSERT INTO abductions VALUES ('upbeat');
INSERT INTO abductions VALUES ('vibrant');
INSERT INTO abductions VALUES ('virtuous');
INSERT INTO abductions VALUES ('wonderful');
INSERT INTO abductions VALUES ('wondrous');
INSERT INTO abductions VALUES ('adorable');
INSERT INTO abductions VALUES ('excellent');
INSERT INTO abductions VALUES ('agreeable');
INSERT INTO abductions VALUES ('gorgeous');
