USE ratings;

#Definir los campos y tipos de datos para la tabla movies haciendo uso de los archivos movies.dat y README.
#id INT PRIMARY KEY
#title VARCHAR(80)
#generos VARCHAR(80)

#Crear la tabla movies (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos).
CREATE TABLE movies(
movieID INT PRIMARY KEY,
title VARCHAR(80),
generos VARCHAR(80));

#Definir los campos y tipos de datos para la tabla ratings haciendo uso de los archivos ratings.dat y README.
#userID INT,
#movieID INT,
#rating INT

#Crear la tabla ratings (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos)
CREATE TABLE rating(
userID INT,
movieID INT,
rating INT,
time_stamp BIGINT);
