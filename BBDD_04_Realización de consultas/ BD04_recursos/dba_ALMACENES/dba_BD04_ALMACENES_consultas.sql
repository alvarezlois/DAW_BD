/* 3.1. Obtener todos los almacenes*/
	SELECT * FROM ALMACENES;
	
--3.2. Obtener todas las cajas cuyo contenido tenga un valor superior a 33500 ¤.
	SELECT * FROM CAJAS WHERE Valor > 33500;
	
--3.3. Obtener los tipos de contenidos de las cajas.
	SELECT DISTINCT Contenido FROM CAJAS;
	
--3.4. Obtener el valor medio de todas las cajas.
	SELECT AVG(Valor) FROM CAJAS;
	
--3.5. Obtener el valor medio de las cajas de cada almacen.
	SELECT Almacen as 'Código Almacén', AVG(Valor) as 'Valor Medio de las Cajas' FROM CAJAS GROUP BY Almacen;
	
/*3.6. Obtener los códigos de los almacenes en los cuales el valor medio de las cajas sea
superior a 3500 */
	SELECT almacen, AVG(valor) FROM CAJAS GROUP BY almacen HAVING AVG(valor) > 3500;
	
/*3.7. Obtener el numero de referencia de cada caja junto con el nombre de la ciudad en
el que se encuentra.*/
		SELECT NumRef, Lugar FROM ALMACENES INNER JOIN CAJAS ON ALMACENES.codigo = CAJAS.almacen;
	
/* 3.8. Obtener el numero de cajas que hay en cada almacén. */ 
/* Esta consulta no tiene en cuenta los almacenes vacı́os */
		SELECT Almacen as 'Código de Almacén', COUNT(*) as 'Total de Cajas' FROM CAJAS GROUP BY Almacen;
/* Esta consulta tiene en cuenta los almacenes vacı́os */
		SELECT Codigo as 'Código de Almacén', COUNT(NumRef) as 'Total de Cajas' 
		FROM ALMACENES LEFT JOIN CAJAS ON ALMACENES.Codigo = CAJAS.Almacen GROUP BY Codigo;
		
/*3.9. Obtener los códigos de los almacenes que están saturados (los almacenes donde el
numero de cajas es superior a la capacidad).*/
	SELECT codigo FROM ALMACENES WHERE capacidad <=
	(SELECT COUNT(*) FROM CAJAS WHERE almacen = codigo);
	
--3.10. Obtener los numeros de referencia de las cajas que están en Portugal
/* Sin subconsultas */
	SELECT NumRef FROM ALMACENES LEFT JOIN CAJAS ON ALMACENES.Codigo = CAJAS.Almacen
	WHERE Lugar = 'Portugal';
/* Con subconsultas */
	SELECT NumRef FROM CAJAS WHERE Almacen IN (SELECT Codigo FROM ALMACENES WHERE Lugar = 'Portugal');

--3.11. Insertar un nuevo almacén en Barcelona con capacidad para 3 cajas.
	INSERT INTO ALMACENES(Lugar,Capacidad) VALUES('Barcelona','3');
	
/*3.12. Insertar una nueva caja, con número de referencia ‘H5RT’, con contenido ‘Papel’,
valor 200, y situada en el almacén 2.*/
	INSERT INTO CAJAS VALUES('H5RT','Papel','200,2');
	
--3.13. Rebajar el valor de todas las cajas un 15 %.
	UPDATE CAJAS SET Valor = (Valor * 0.85);
	
/* 3.14. Rebajar un 20 % el valor de todas las cajas cuyo valor sea superior al valor medio
de todas las cajas.*/
	UPDATE CAJAS SET valor = valor * 0.80 WHERE valor > (SELECT AVG(valor) FROM CAJAS);
	
--3.15. Eliminar todas las cajas cuyo valor sea inferior a 3500 ¤.
	DELETE FROM CAJAS WHERE Valor < 3500;
	
-- 3.16. Vaciar el contenido de los almacenes que están saturados.
DELETE FROM CAJAS WHERE Almacen IN
(
SELECT Codigo
FROM ALMACENES
WHERE Capacidad <
(
SELECT COUNT(*)
FROM CAJAS
WHERE Almacen = Codigo
)
);