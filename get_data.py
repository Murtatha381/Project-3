import sqlite3
import os

def _open_db():
    db_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'covid_data.db')
    conn = sqlite3.connect(db_path)
    return conn.cursor()

def get_country_percentage():
    cursor = _open_db()
    cursor.execute("SELECT * FROM Country_percentage")
    results = cursor.fetchall()
    data_list = []
    for row in results:
        data_list.append(row)
    cursor.close()
    return data_list

