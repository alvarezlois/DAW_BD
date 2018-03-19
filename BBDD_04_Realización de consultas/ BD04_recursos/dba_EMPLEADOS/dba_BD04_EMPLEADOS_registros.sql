
/*												*/
/* Insertamos filas en la tabla DEPARTAMENTOS   */
/*												*/

	insert into DEPARTAMENTOS (codigo, nombre, presupuesto) values ('d01', 'FISICA','37850');
	insert into DEPARTAMENTOS values ('d02', 'MATEMATICAS','35550');
	insert into DEPARTAMENTOS values ('d03', 'ELECTRONICA','31540');
	insert into DEPARTAMENTOS values ('d04', 'SISTEMAS','39850');
	insert into DEPARTAMENTOS values ('d05', 'ECONOMIA','34050');
	insert into DEPARTAMENTOS values ('d06', 'CALIDAD','33950');
	insert into DEPARTAMENTOS values ('d07', 'ROBOTICA','38170');
	insert into DEPARTAMENTOS values ('d08', 'BASES DE DATOS','32295');
	insert into DEPARTAMENTOS values ('d09', 'PROGRAMACION','35685');
	
select * from DEPARTAMENTOS order by codigo;


/*										*/
/* insertamos filas na táboa EMPLEADOS  */
/*										*/

-- dep01
	insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('15453639A','Adrian','Alvarez Lois','d01');
	insert into EMPLEADOS values ('15453639B','Miguel','Cervantes Saavedra','d01');
	insert into EMPLEADOS values ('15453639C','Lorem','Ipsum','d01');
-- dep02
	insert into EMPLEADOS values ('25453639A','Adriana','Lopez Gaarcia','d02');
	insert into EMPLEADOS values ('25453639B','Isaac','Becerra Perez','d02');
	insert into EMPLEADOS values ('25453639C','Pablo','Honey Honey','d02');
	insert into EMPLEADOS values ('25453639D','Ruhola','Homeini Pahlavi','d02');
--dep03
	insert into EMPLEADOS values ('35453639A','Adrian','Alvarez Lois','d03');
	insert into EMPLEADOS values ('35453639B','Raquel','Gonzalez Garrido','d03');
	insert into EMPLEADOS values ('35453639C','Don','Willians','d03');
	insert into EMPLEADOS values ('35453639D','Carla','Fraga Oubiña','d03');
	insert into EMPLEADOS values ('35453639E','Emiliana','Pradera Rojo','d03');
	insert into EMPLEADOS values ('35453639F','Laura','Douglas','d03');
--dep04
	insert into EMPLEADOS values ('45453639A','Mike','Mills','d04');
	insert into EMPLEADOS values ('45453639B','RX','Ibañez','d04');
	insert into EMPLEADOS values ('45453639C','Marta','Carrasco Fernandez','d04');
--dep05
	insert into EMPLEADOS values ('55453639A','Lourençp','Maia de Oliveira','d05');
	insert into EMPLEADOS values ('55453639B','Aritz','Urruticoetxea Iparragirre','d05');
	insert into EMPLEADOS values ('55453639C','Pere','Capdevila i Font','d05');
	insert into EMPLEADOS values ('55453639D','Felipe','Perez Garcia','d05');
	insert into EMPLEADOS values ('55453639E','Linus','Torvals','d05');
--dep06
	insert into EMPLEADOS values ('65453639A','Alejo','Prieto Caneda','d06');
	insert into EMPLEADOS values ('65453639B','Elena','Benavente Garcia','d06');
--dep07
	insert into EMPLEADOS values ('785453639A','Curtis','Mayfield','d07');
--dep08
	insert into EMPLEADOS values ('85453639A','Rulis','Horchata Blanco','d08');
	insert into EMPLEADOS values ('85453639B','Iria','Cameselle Haro','d08');
--dep09
	insert into EMPLEADOS values ('91453639A','Pedro','Hinojosa Lopez','d09');
	insert into EMPLEADOS values ('91453639B','Ruud','Van Nistelroy','d09');
	insert into EMPLEADOS values ('91453639C','Ruud','Gullit','d09');
	insert into EMPLEADOS values ('91453639D','Rita','Gonçalvez de Brito Antunes','d09');
	insert into EMPLEADOS values ('91453639E','Alexia','Schneider Velazquez','d09');

select all * from EMPLEADOS order by cod_dep ASC;