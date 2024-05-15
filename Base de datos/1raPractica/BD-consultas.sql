
/*En el contexto de las bases de datos, hay varios 
tipos de consultas que se utilizan para recuperar información 
de las bases de datos. */

/*WHERE*/

WHERE condicion AND condicion OR condicion;

/*SELECT*/

SELECT nombre FROM estudiante;

/*INSERT*/

INSERT INTO estudiante (id_estudiante, nombre) 
VALUES (5,'roberto'), (6,'juanC');

/*UPDATE*/

UPDATE estudiante
SET nombre = 'pablo'
WHERE id_estudiante = 2;

/*DELETE*/

DELETE FROM estudiante
WHERE id_estudiante = 6 OR id_estudiante = 5;

/*INNER JOIN: Retorna filas cuando hay una coincidencia en 
ambas tablas. En otras palabras, retorna filas que tienen 
un valor que coincide en ambas tablas.*/

SELECT nombre, nota FROM estudiante
INNER JOIN nota ON estudiante.id_estudiante = nota.id_estudiante;

/*SUBCONSULTAS: Se utiliza para incluir una 
consulta dentro de otra consulta.*/

SELECT nombre FROM estudiante
WHERE nota.nota
IN (SELECT nota.nota FROM nota WHERE nota.nota > 50);