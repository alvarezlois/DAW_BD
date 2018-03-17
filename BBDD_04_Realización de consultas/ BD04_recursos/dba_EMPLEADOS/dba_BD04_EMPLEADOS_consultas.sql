--2.1. Obtener los apellidos de los empleados.
SELECT Apellidos FROM EMPLEADOS

--2.2. Obtener los apellidos de los empleados sin repeticiones.
SELECT DISTINCT Apellidos FROM EMPLEADOS

--2.3. Obtener todos los datos de los empleados que se apellidan ’López’.
SELECT * FROM EMPLEADOS WHERE Apellidos Like ('%Lopez%');

/*2.4. Obtener todos los datos de los empleados que se apellidan ’López’ y los que se
apellidan ’Pérez’.*/
/* Con OR */
	SELECT * FROM EMPLEADOS	WHERE Apellidos like ('%Lopez%') OR Apellidos like ('%Perez%')
/* Con IN */
	SELECT * FROM EMPLEADOS	WHERE Apellidos IN ('Lopez','Perez');

/*2.5. Obtener todos los datos de los empleados que trabajan para el departamento 14.*/
	SELECT * FROM EMPLEADOS WHERE (cod_dep = 'd04');

/* Obtener todos los datos de los empleados que trabajan para el departamento d01 y
para el departamento d03.*/
/* Con OR */
	SELECT * FROM EMPLEADOS WHERE cod_dep = 'd01' OR cod_dep = 'd03';
/* Con IN */
	SELECT * FROM EMPLEADOS WHERE cod_dep IN ('d01','d03');

/*2.7. Obtener todos los datos de los empleados cuyo apellido comience por ’H’.*/
	SELECT * FROM EMPLEADOS WHERE apellidos LIKE ('H%');

/*2.8. Obtener el presupuesto total de todos los departamentos.*/
	SELECT SUM(Presupuesto) FROM DEPARTAMENTOS;
	
/*2.9. Obtener el numero de empleados en cada departamento.*/
	SELECT cod_dep, COUNT(*) FROM EMPLEADOS GROUP BY cod_dep;
	
/*2.10. Obtener un listado completo de empleados, incluyendo por cada empleado los datos
del empleado y de su departamento.*/
	SELECT * FROM EMPLEADOS INNER JOIN DEPARTAMENTOS ON EMPLEADOS.cod_dep = DEPARTAMENTOS.codigo;
	
/*2.11. Obtener un listado completo de empleados, incluyendo el nombre y apellidos del
empleado junto al nombre y presupuesto de su departamento.*/
/* Sin etiquetas */
	SELECT EMPLEADOS.nombre, apellidos, DEPARTAMENTOS.nombre, presupuesto 
	FROM EMPLEADOS INNER JOIN DEPARTAMENTOS ON EMPLEADOS.cod_dep = DEPARTAMENTOS.codigo;
/* Con etiquetas */
	SELECT E.Nombre, Apellidos, D.Nombre, Presupuesto 
	FROM EMPLEADOS E INNER JOIN DEPARTAMENTOS D ON E.cod_dep = D.Codigo;

/*2.12. Obtener los nombres y apellidos de los empleados que trabajen en departamentos
cuyo presupuesto sea mayor de 20.000 */
/* Sin subconsulta */
	SELECT EMPLEADOS.Nombre, Apellidos
	FROM EMPLEADOS INNER JOIN DEPARTAMENTOS ON EMPLEADOS.cod_dep = DEPARTAMENTOS.Codigo
	AND DEPARTAMENTOS.Presupuesto > 20000;
/* Con subconsulta */
	SELECT Nombre, Apellidos FROM EMPLEADOS
	WHERE cod_dep IN (SELECT Codigo FROM DEPARTAMENTOS WHERE Presupuesto > 20000);

/*2.13. Obtener los datos de los departamentos cuyo presupuesto es superior al presupues-
to medio de todos los departamentos.*/
	SELECT * FROM DEPARTAMENTOS 
	WHERE Presupuesto > (SELECT AVG(Presupuesto) FROM DEPARTAMENTOS);

/*2.14. Obtener los nombres (únicamente los nombres) de los departamentos que tienen
más de dos empleados.*/
/* Con subconsulta */
	SELECT Nombre FROM DEPARTAMENTOS
	WHERE Codigo IN
	(
	SELECT cod_dep
	FROM EMPLEADOS
	GROUP BY cod_dep
	HAVING COUNT(*) > 2
	);
/* Con UNION. No funciona si dos departamentos
tienen el mismo nombre */
	SELECT DEPARTAMENTOS.Nombre
	FROM EMPLEADOS INNER JOIN DEPARTAMENTOS
	ON cod_dep = Codigo
	GROUP BY DEPARTAMENTOS.Nombre
	HAVING COUNT(*) > 2;
	
/*2.15. Añadir un nuevo departamento: ‘Calidad’, con presupuesto de 40.000 ¤ y código
11. Añadir un empleado vinculado al departamento recién creado: Esther Vázquez,
DNI: 89267109*/
	INSERT INTO DEPARTAMENTOS (codigo, nombre, presupuesto) VALUES ('d06', 'CALIDAD', '40000');
	INSERT INTO EMPLEADOS (DNI, nombre, apellidos, cod_dep) VALUES ('89267109', 'Esther', 'Vázquez', 'd06');
	
/*2.16. Aplicar un recorte presupuestario del 10 % a todos los departamentos.*/
	UPDATE DEPARTAMENTOS SET Presupuesto = (Presupuesto * 0.9);

/*2.17. Reasignar a los empleados del departamento de investigación (código D06) al depar-
tamento de informática (código D05).*/
	UPDATE EMPLEADOS SET cod_dep = 'd05' WHERE cod_dep = 'd06';

/*2.18. Despedir a todos los empleados que trabajan para el departamento de informática
(código D06).*/
	DELETE FROM EMPLEADOS WHERE cod_dep = 'd06';
	
/*2.19. Despedir a todos los empleados que trabajen para departamentos cuyo presupuesto
sea superior a los 22.000 ¤.*/
	DELETE FROM EMPLEADOS WHERE cod_dep IN (SELECT codigo FROM DEPARTAMENTOS WHERE presupuesto >= '22000');
	
/*2.20. Despedir a todos los empleados.*/
DELETE FROM EMPLEADOS;