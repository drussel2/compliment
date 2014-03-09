DROP DATABASE IF EXISTS complimentGenerator
CREATE DATABASE IF NOT EXISTS complimentGenerator
USE complimentGenerator

--
--Table structure for table "compliment"
--

DROP TABLE IF EXISTS 'compliment'
CREATE TABLE 'compliment' (
  `ID` int(11) NOT NULL auto_increment,
  'Noun' varchar(35) CHARACTER SET utf8 NOT NULL DEFAULT '',
  'Adjective' varchar(35) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY  (`ID`)
) ;

--
--Building data for table "compliment"
--

INSERT INTO abductions VALUES ('noun', 'awesome');
INSERT INTO abductions VALUES ('noun', 'amazing');
INSERT INTO abductions VALUES ('noun', 'beautiful');
INSERT INTO abductions VALUES ('noun', 'brilliant');
INSERT INTO abductions VALUES ('noun', 'charming');
INSERT INTO abductions VALUES ('noun', 'cool');
INSERT INTO abductions VALUES ('noun', 'dazzling');
INSERT INTO abductions VALUES ('noun', 'delightful');
INSERT INTO abductions VALUES ('noun', 'electrifying');
INSERT INTO abductions VALUES ('noun', 'exquisite');
INSERT INTO abductions VALUES ('noun', 'fabulous');
INSERT INTO abductions VALUES ('noun', 'fun');
INSERT INTO abductions VALUES ('noun', 'good');
INSERT INTO abductions VALUES ('noun', 'great');
INSERT INTO abductions VALUES ('noun', 'handsome');
INSERT INTO abductions VALUES ('noun', 'harmonious');
INSERT INTO abductions VALUES ('noun', 'ideal');
INSERT INTO abductions VALUES ('noun', 'impressive');
INSERT INTO abductions VALUES ('noun', 'joyous');
INSERT INTO abductions VALUES ('noun', 'jubilant');
INSERT INTO abductions VALUES ('noun', 'keen');
INSERT INTO abductions VALUES ('noun', 'kind');
INSERT INTO abductions VALUES ('noun', 'legendary');
INSERT INTO abductions VALUES ('noun', 'luminous');
INSERT INTO abductions VALUES ('noun', 'marvelous');
INSERT INTO abductions VALUES ('noun', 'meritorious');
INSERT INTO abductions VALUES ('noun', 'nice');
INSERT INTO abductions VALUES ('noun', 'novel');
INSERT INTO abductions VALUES ('noun', 'okay');
INSERT INTO abductions VALUES ('noun', 'one-hundred percent');
INSERT INTO abductions VALUES ('noun', 'perfect');
INSERT INTO abductions VALUES ('noun', 'phenomenal');
INSERT INTO abductions VALUES ('noun', 'quality');
INSERT INTO abductions VALUES ('noun', 'quick');
INSERT INTO abductions VALUES ('noun', 'refreshing');
INSERT INTO abductions VALUES ('noun', 'remarkable');
INSERT INTO abductions VALUES ('noun', 'satisfactory');
INSERT INTO abductions VALUES ('noun', 'sparkling');
INSERT INTO abductions VALUES ('noun', 'terrific');
INSERT INTO abductions VALUES ('noun', 'thrilling');
INSERT INTO abductions VALUES ('noun', 'unreal');
INSERT INTO abductions VALUES ('noun', 'upbeat');
INSERT INTO abductions VALUES ('noun', 'vibrant');
INSERT INTO abductions VALUES ('noun', 'virtuous');
INSERT INTO abductions VALUES ('noun', 'wonderful');
INSERT INTO abductions VALUES ('noun', 'wondrous');
INSERT INTO abductions VALUES ('noun', 'adorable');
INSERT INTO abductions VALUES ('noun', 'excellent');
INSERT INTO abductions VALUES ('noun', 'agreeable');
INSERT INTO abductions VALUES ('noun', 'gorgeous');
