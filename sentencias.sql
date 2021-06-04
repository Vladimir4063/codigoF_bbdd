/* ¿Que tipo de entidades? : Autores

Nombre: autores
 
Acontinuacion generamos una lluvia de ideas para 
verificar que datos precisamos guardar.

Nombre
Genero
Fecha de Nacimiento
Pais de origen

columna y el tipo de dato

*/
DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE IF NOT EXISTS libreria_cf;

USE libreria_cf;


CREATE TABLE IF NOT EXISTS autores(
    
    autor_id INT,
    nombre VARCHAR(25),
    apellido VARCHAR(25), 
    genero CHAR(1), -- M o F
    fecha_nacimiento DATE, -- formato : año-mes-dia
    pais_origen VARCHAR(40)

);

INSERT INTO autores(autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES(8, 'elPepe', 'Omegle', 'M', '2018-02-04', 'China'), 
      (9, 'Adi', 'Gutierrez', 'M', '2001-01-30', 'Mexico'),
      (10, 'Martin', 'Benites', 'M', '1995-01-30', 'Misiones'),
      (11, 'Soy yo mi hermano', 'ATR', 'M', '1997-01-30', 'Chascomus');

SELECT * FROM autores;

/*
INSERT INTO autores(autor_id, nombre)
VALUES(2, 'Vladi'); -- Comentario: cada valor es asignado con respecto a la posicion y cantidad de las columnas

INSERT INTO autores(autor_id, nombre, pais_origen)
VALUES(3, 'Ivan', 'Nicaragua');

INSERT INTO autores(autor_id, nombre, pais_origen, fecha_nacimiento)
VALUES(4, 'Sacha', 'Brasil', '2021-01-01');

INSERT INTO autores(autor_id, nombre, pais_origen, fecha_nacimiento)
VALUES(5, 'Sacha', 'Brasil', '2021-01-01');

INSERT INTO autores(autor_id, nombre, apellido, pais_origen, fecha_nacimiento)
VALUES(6, 'Sacha', 'Anastasio', 'Brasil', '2021-01-01');

INSERT INTO autores(autor_id, nombre, genero, pais_origen, fecha_nacimiento)
VALUES(7, 'Sacha', 'M', 'Brasil', '2021-01-01');
*/