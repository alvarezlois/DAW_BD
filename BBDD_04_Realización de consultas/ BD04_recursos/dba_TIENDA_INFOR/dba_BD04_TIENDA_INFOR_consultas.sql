--1.1. Obtener los nombres de los productos de la tienda.
SELECT Nombre FROM ARTICULOS;
--1.2. Obtener los nombres y los precios de los productos de la tienda.
SELECT Nombre, Precio FROM ARTICULOS;
--1.3. Obtener el nombre de los productos cuyo precio sea menor o igual a 20.
SELECT Nombre FROM ARTICULOS WHERE Precio > 20;

--1.4. Obtener todos los datos de los artı́culos cuyo precio esté entre los 16 ¤ y los 42€
(ambas cantidades incluidas).
/* Con AND */
SELECT * FROM ARTICULOS
WHERE Precio >= 16 AND Precio <= 42;
/* Con BETWEEN */
SELECT * FROM ARTICULOS
WHERE Precio BETWEEN 16 AND 42;

--1.5. Obtener el nombre y el precio en pesetas (es decir, el precio en euros multiplicado
--por 166’386)
/* Con AS */
SELECT Nombre, Precio * 166.386 AS PrecioPtas FROM ARTICULOS;

--1.6. Seleccionar el precio medio de todos los productos.
SELECT AVG(Precio) FROM ARTICULOS;

--1.7. Obtener el precio medio de los artı́culos cuyo código de fabricante sea 120.
SELECT AVG(Precio) FROM ARTICULOS WHERE fabricante = 120;

--1.8. Obtener el numero de artı́culos cuyo precio sea mayor o igual a 18.
SELECT COUNT(*) FROM ARTICULOS WHERE Precio >= 18;

/* 1.9. Obtener el nombre y precio de los artı́culos cuyo precio sea mayor o igual a 180 ¤
y ordenarlos descendentemente por precio, y luego ascendentemente por nombre. */
SELECT Nombre, Precio FROM ARTICULOS
WHERE Precio >= 18
ORDER BY Precio DESC, Nombre;

/*1.10. Obtener un listado completo de artı́culos, incluyendo por cada articulo los datos
del articulo y de su fabricante.
/* Sin INNER JOIN */
/* Sin INNER JOIN */
SELECT * FROM ARTICULOS, FABRICANTES
WHERE ARTICULOS.Fabricante = FABRICANTES.Codigo;
/* Con INNER JOIN */
SELECT *
FROM ARTICULOS INNER JOIN FABRICANTES
ON ARTICULOS.Fabricante = FABRICANTES.Codigo;

/* 1.11. Obtener un listado de artı́culos, incluyendo el nombre del artı́culo, su precio, y el
nombre de su fabricante. */
/* Sin INNER JOIN */
SELECT ARTICULOS.Nombre, Precio, FABRICANTES.Nombre
FROM ARTICULOS, FABRICANTES
WHERE ARTICULOS.Fabricante = FABRICANTES.Codigo;
/* Con INNER JOIN */
SELECT ARTICULOS.Nombre, Precio, FABRICANTES.Nombre
FROM ARTICULOS INNER JOIN FABRICANTES
ON ARTICULOS.Fabricante = FABRICANTES.Codigo;

/*1.12. Obtener el precio medio de los productos de cada fabricante, mostrando solo los
códigos de fabricante.*/
SELECT AVG(Precio), Fabricante FROM ARTICULOS
GROUP BY Fabricante;


/*1.13. Obtener el precio medio de los productos de cada fabricante, mostrando el nombre
del fabricante.*/
/* Sin INNER JOIN */
SELECT AVG(Precio), FABRICANTES.Nombre
FROM ARTICULOS, FABRICANTES
WHERE ARTICULOS.Fabricante = FABRICANTES.Codigo
GROUP BY FABRICANTES.Nombre
/* Con INNER JOIN */
SELECT AVG(Precio), FABRICANTES.Nombre
FROM ARTICULOS INNER JOIN FABRICANTES
ON ARTICULOS.Fabricante = FABRICANTES.Codigo
GROUP BY FABRICANTES.Nombre

/* 1.14. Obtener los nombres de los fabricantes que ofrezcan productos cuyo precio medio
sea mayor o igual a 15 */
/* Sin INNER JOIN */
SELECT AVG(Precio), FABRICANTES.Nombre
FROM ARTICULOS, FABRICANTES
WHERE ARTICULOS.Fabricante = FABRICANTES.Codigo
GROUP BY FABRICANTES.Nombre
HAVING AVG(Precio) >= 15;
/* Con INNER JOIN */
SELECT AVG(Precio), FABRICANTES.Nombre
FROM ARTICULOS INNER JOIN FABRICANTES
ON ARTICULOS.Fabricante = FABRICANTES.Codigo
GROUP BY FABRICANTES.Nombre
HAVING AVG(Precio) >= 15;


/*1.15. Obtener el nombre y precio del artı́culo más barato.*/
SELECT nombre, precio FROM ARTICULOS WHERE precio = (SELECT MIN(precio) FROM ARTICULOS);

/*1.16. Obtener una lista con el nombre y precio de los artı́culos más caros de cada pro-
veedor (incluyendo el nombre del proveedor).
/* Sin INNER JOIN */
SELECT A.Nombre, A.Precio, F.Nombre
FROM ARTICULOS A, FABRICANTES F
WHERE A.Fabricante = F.Codigo
AND A.Precio =
(
SELECT MAX(A.Precio)
FROM ARTICULOS A
WHERE A.Fabricante = F.Codigo
);
/* Con INNER JOIN */
SELECT A.Nombre, A.Precio, F.Nombre
FROM ARTICULOS A INNER JOIN FABRICANTES F
ON A.Fabricante = F.Codigo
AND A.Precio =
(SELECT MAX(A.Precio)
FROM ARTICULOS A
WHERE A.Fabricante = F.Codigo);

--1.17. Añadir un nuevo producto: Altavoces de 70 ¤ (del fabricante 123)
INSERT INTO ARTICULOS (nombre, precio, fabricante) VALUES ("Altavoces", '70','123');

/* 1.18. Cambiar el nombre del producto A05 a Impresora Laser */
UPDATE ARTICULOS SET nombre = "Impresora Laser" WHERE cod_art = 'A05';

--1.19. Aplicar un descuento del 10 % (multiplicar el precio por 0’9) a todos los productos.
UPDATE ARTICULOS SET Precio = "Precio * 0.9";

/*1.20. Aplicar un descuento de 10 ¤ a todos los productos cuyo precio sea mayor o igual
a 52 ¤.*/
UPDATE ARTICULOS SET Precio = Precio - 10 WHERE Precio >= 52