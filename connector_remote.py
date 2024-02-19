# esta manera es mas segura para evitar las inyecciones sql maliciosas

import mysql.connector

def base_date(user):
    config = {
        "host":"blqghulwikypq2g5qvvn-mysql.services.clever-cloud.com",
        "port":"3306",
        "database":"blqghulwikypq2g5qvvn",
        "user":"um4ao9ikj8isb5xm",
        "password":"BagnCpzjF6POhAkLiq3H"
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name = %s;"
    cursor.execute(query,(user,))
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

base_date("hector")