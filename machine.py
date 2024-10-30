import sqlite3
connect = sqlite3.connect("machine.db")

cursor  = connect.cursor()

cursor.executescript(
    '''

create table MachineLogs (
id integer primary key,
name TEXT not null
''')
