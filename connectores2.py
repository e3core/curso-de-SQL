import mysql.connector

def base_date(user):
    config = {
        "host":"127.0.0.1",
        "port":"3306",
        "database":"hola_mysql",
        "user":"mantenimiento",
        "password":"20989862"
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name ='" + user + "';"
    cursor.execute(query)
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

base_date("juan")