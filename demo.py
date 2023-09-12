import pypyodbc as odbc # pip install pypyodbc\
import pymysql as sql

#""""
"""
DRIVER_NAME = 'SQL SERVER'
SERVER_NAME = 'Glover-Alien-Ware\SQLEXPRESS'
DATABASE_NAME = 'master'

#connection_string = f
    DRIVER = {{{DRIVER_NAME}}};
    SERVER = {SERVER_NAME};
    DATABASE = {DATABASE_NAME};
    Trust_Connection=yes
    uid=<user>;
    pwd=<Nellie0)>;

"""
#conn = odbc.connect(connection_string)
#print(conn)


"""
conn = sql.connect(
    host=r'192.168.1.201, 1433',
    user=r'user',
    password=r'Nellie0)',
    database='master'
)


"""

import pyodbc

# Connect to the database using a driver
cnxn = pyodbc.connect("DRIVER={ODBC Driver 17 for SQL Server}; SERVER=192.168.1.201, 1433;DATABASE=master;UID=user;PWD=Nellie0)")
print(cnxn)