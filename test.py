import mysql.connector

   # Vulnerable code
query = "SELECT * FROM users WHERE username = '" + username + "'" 
cursor.execute(query)

   # Secure code (using parameterized queries)
query = "SELECT * FROM users WHERE username = %s" 
cursor.execute(query, (username,))