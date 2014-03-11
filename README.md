compliment
==========
Welcome to our CPSC 350 Compliment Generator!
This repository contains all the generated code necessary to get your own unique compliment
generator up and running, complete with a full database of classified nouns and adjectives. 

By using the command git clone https://github.com/drussel2/compliment from the command line
anyone can have access to our files. 

Potential files include:
-Python Server File
-Compliment Database
-Several HTML template pages 
-Folders containing image sources with both .gif and .img extensions

How to install/run the compliments generator
1. clone the repository (git clone https://github.com/durssel2/compliment
2. Go into the directory your flask files are in
  a. Type command: source venv/bin/activate
3. Start MySQL
  a. Type command: parts start mysql
4. Login to MySQL
  a. Type command: mysql -u root --socket=/tmp/mysql.sock
5. Source the compliments.sql file
  a. Type command: source compliments.sql
6. Exit out of MySQL
  a. Type command: exit
7. Go into the compliments directory, wherever you cloned the repository
8. Start the server.py file
  a. Type command: python server.py

The website should then run!
