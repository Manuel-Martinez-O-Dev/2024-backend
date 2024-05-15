
/*crear una base de datos*/

CREATE DATABASE prac1;

/*crear las tablas con los atributos y tipos de datos para
la tabla*/

CREATE TABLE estudiante (
  id_estudiante INT PRIMARY KEY,
  nombre VARCHAR(20)
);

CREATE TABLE nota (
  nota INT,
  id_estudiante INT,
  FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante)
);

/*agregar datos a las tablas*/

INSERT INTO estudiante VALUES
(1,'manuel'),
(2,'pepe'),
(3,'lopez');

INSERT INTO nota VALUES
(51,1),
(80,2),
(30,3);

/*cambiar los datos de una columna:
Para cambiar un dato en una columna de una tabla en 
PostgreSQL, debes usar la instrucción UPDATE junto con 
la cláusula SET para especificar el nuevo valor. Además, 
normalmente se utiliza la cláusula WHERE para indicar la 
fila específica que se desea actualizar.

NOTA>>> para cambiar una clave primaria tenemos que agregar el
ON DELETE CASCADE para que los cambios se actualicen a todos las
tablas donde esta referenciada la clave*/

UPDATE estudiante
SET id_estudiante = 4
WHERE id_estudiante = 1;

/*para agregar restricciones de clave foranea y ON DELETE CASCADE para
elimirar en cascada y para actualizar en cascada es ON UPDATE CASCADE*/

ALTER TABLE nota
ADD CONSTRAINT nota_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante) 
ON DELETE CASCADE
ON UPDATE CASCADE;

/*eliminar las restriccones de una tabla*/

ALTER TABLE nota
DROP CONSTRAINT nota_id_estudiante_fkey;

/*DDL (Data Definition Language)*/

CREATE
ALTER
DROP

/*DML (Data Manipulation Language)*/

SELECT
INSERT
UPDATE
DELETE