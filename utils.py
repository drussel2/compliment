# utils.py
import MySQLdb


DATABASE='complimentDB'
DB_USER = 'happy'
DB_PASSWORD = 'password'
HOST = 'localhost'

def db_connect():
  return MySQLdb.connect(HOST, DB_USER, DB_PASSWORD, DATABASE)
