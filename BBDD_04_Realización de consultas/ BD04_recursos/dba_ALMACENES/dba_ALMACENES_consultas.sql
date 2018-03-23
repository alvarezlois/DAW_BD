/* 3.1. Obtener todos los almacenes*/
	SELECT * FROM almacenes;
	
-- 3.2. Obtener todas las cajas cuyo contenido tenga un valor superior a 3000 ¤.
	SELECT * FROM cajas WHERE valor > 3000;
	
-- 3.3. Obtener los tipos de contenidos de las cajas.
	SELECT DISTINCT contenido FROM cajas;
	
-- .4. Obtener el valor medio de todas las cajas.
	SELECT AVG(valor) FROM cajas;
	 
-- 3.5. Obtener el valor medio de las cajas de cada almacen.
	SELECT almacen as 'Código Almacén', AVG(valor) as 'Valor Medio de las Cajas' 
    FROM cajas
    GROUP BY almacen
    ;
	
/*3.6. Obtener los códigos de los almacenes en los cuales el valor medio de las cajas sea
superior a 3500 */
	SELECT almacen, AVG(valor)
    FROM cajas 
    GROUP BY
    almacen HAVING AVG(valor) > '3500'
    ;
	
/*3.7. Obtener el numero de referencia de cada caja junto con el nombre de la ciudad en
el que se encuentra.*/
		SELECT numRef, lugar as 'Stock Place'
        FROM almacenes
			INNER JOIN cajas ON almacenes.codigo = cajas.almacen
		;
	
/* 3.8. Obtener el numero de cajas que hay en cada almacén. */ 
/* Esta consulta no tiene en cuenta los almacenes vacı́os */
		SELECT almacen as 'Código de Almacén', COUNT(*) as 'Total de Cajas' 
        FROM cajas
        GROUP BY almacen
        ;
/* Esta consulta tiene en cuenta los almacenes vacı́os */
		SELECT codigo as 'Código de Almacén', COUNT(NumRef) as 'Total de Cajas' 
		FROM almacenes
			LEFT JOIN cajas ON almacenes.codigo = cajas.almacen
		GROUP BY codigo
        ;
		
/*3.9. Obtener los códigos de los almacenes que están saturados (los almacenes donde el
numero de cajas es superior a la capacidad).*/
	SELECT almacenes.codigo as 'almacenes saturados', almacenes.lugar, count(cajas.numRef) as 'Stock Cajas Actual', almacenes.capacidad as 'Stock Cajas MAX'
    FROM almacenes 
		inner join cajas on almacenes.codigo = cajas.almacen
    WHERE capacidad <=(
					   SELECT COUNT(*)
                       FROM cajas
                       WHERE almacen = codigo
                       )
	group by almacenes.codigo
    ;
    
	
-- 3.10. Obtener los numeros de referencia de las cajas que están en Portugal
/* Sin subconsultas */
	SELECT numRef as 'numRef Cajas en Portugal' 
    FROM almacenes
		LEFT JOIN cajas ON almacenes.codigo = cajas.almacen
	WHERE lugar = 'Portugal'
    ;
/* Con subconsultas */
	SELECT numRef as 'numRef Cajas en Portugal' 
    FROM cajas
    WHERE almacen IN (
					SELECT codigo 
                    FROM almacenes
                    WHERE lugar = 'Portugal'
                    )
	;

-- 3.11. Insertar un nuevo almacén en Barcelona con capacidad para 3 cajas.
	INSERT INTO almacenes(lugar,capacidad) VALUES('Barcelona','3');
	
/*3.12. Insertar una nueva caja, con número de referencia ‘CJ05’, con contenido ‘Papel’,
valor 200, y situada en el almacén A02.*/
	INSERT INTO cajas(numRef, contenido, valor, almacen) VALUES('CJ05','Papel','200','A02');
	
-- 3.13. Rebajar el valor de todas las cajas un 15 %.
	UPDATE cajas SET valor = (valor * 0.85);
	
/* 3.14. Rebajar un 20 % el valor de todas las cajas cuyo valor sea superior al valor medio
de todas las cajas.*/
	UPDATE cajas SET valor = valor * 0.80 WHERE valor > (SELECT AVG(valor));
	
--3.15. Eliminar todas las cajas cuyo valor sea inferior a 3500 ¤.
	DELETE FROM cajas WHERE valor < 3500;
	
-- 3.16. Vaciar el contenido de los almacenes que están saturados.
	DELETE FROM cajas
    WHERE almacen IN (
					SELECT codigo
					FROM almacenes
					WHERE capacidad <(
							SELECT COUNT(numRef)
							WHERE almacen = codigo
									 )
						)
	;
    
    
/* RESETEAMOS LA BASE DE DATOS */
	
	DELETE FROM cajas;
    DELETE FROM almacen;