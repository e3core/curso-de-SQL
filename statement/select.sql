-- sentencia para llamar toda la tabla users
SELECT * FROM users;

-- en vez de colocar un * para que muestre toda la tabla se coloca el nombre de la columna que se desea consultar
SELECT name FROM users;

-- si se quieren ver 2 o mas columnas
SELECT id_users , name FROM users;

-- SELECIONA LOS CAMPOS DISTINTOS
SELECT DISTINCT * FROM users;

-- vera cuales son distintos en la columna age
SELECT DISTINCT age FROM users;

-- selecciona la tabla y ordena los datos por medio del email
SELECT * FROM users ORDER BY email;

-- selecciona la tabla y ordena los datos por nedio del email de manera descentente
SELECT * FROM users ORDER BY email DESC;

-- aqui se selecciona la tabla y luego se hace la pregunta con where donde age = 15
-- el where es como un filtro
SELECT * FROM users WHERE age = 15;

-- esto toma la tabla busca donde email = 'sara' y ordenara de manera descendente
SELECT * FROM users WHERE email='sara@gmail.com' ORDER BY email DESC

-- esto toma la columna nombre se busca donde email = 'sara' y ordenara de manera ascendente
SELECT name FROM users WHERE email='sara@gmail.com' ORDER BY email ASC

-- seleciona la tabla users donde email buscara algo que contiene o se parece(LIKE) A gmail.com y se le coloca % para obviar lo que esta antes del gmail.com
SELECT * FROM users WHERE email LIKE '%gmail.com' 

-- seleciona la tabla users donde email buscara algo que contiene o se parece(LIKE) A gmail.com y se le coloca % para obviar lo que esta antes del gmail
SELECT * FROM users WHERE email LIKE '%gmail%'; 

-- selecciona la tabla users donde el negado de email contenga o se parezca a email ( osea que no contenga email )
SELECT * FROM users WHERE NOT email LIKE '%gmail%'; 

-- selecciona la tabla users donde el negado de email contenga o se parezca a email ( osea que no contenga email ) y que la edad sea 15
SELECT * FROM users WHERE NOT email LIKE '%gmail%' AND age = 15; 

-- selecciona la tabal users y limita a dos la consulta
SELECT * FROM users LIMIT 2;

-- selecciona la tabla users y donde email sea nulo mostrara registros
SELECT * FROM users WHERE email IS NULL;

-- selecciona la tabla users y donde email no sea nulo mostrara registros
SELECT * FROM users WHERE email IS  NOT NULL;

-- selecciona el valor maximo de la columna age de la tabla users
SELECT MAX(age) FROM users;

-- selecciona el valor minimo de la columna age de la tabla users
SELECT MAX(age) FROM users;

-- cuenta la cantidad de registro que contenga age( los nulos no los cuenta)
SELECT COUNT(age) FROM users;

-- cuenta la cantidad de registro que contenga la tabla
SELECT COUNT(*) FROM users;

--suma los valores de age 
SELECT SUM(age) FROM users;

-- avg de los valores de age
SELECT SUM(age) FROM users;

-- selecciona la tabla users y donde el filtro IN vea en la columna name a juan o hector devolvera los registros que coincidan incluso asi esten en mayuscula
SELECT * FROM users WHERE name IN ('juan','hector');