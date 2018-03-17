insert into DEPARTAMENTOS (codigo, nombre, presupuesto) values ('d01', 'FISICA','17850');
insert into DEPARTAMENTOS (codigo, nombre, presupuesto) values ('d02', 'MATEMATICAS','15550');
insert into DEPARTAMENTOS (codigo, nombre, presupuesto) values ('d03', 'ELECTRONICA','21540');
insert into DEPARTAMENTOS (codigo, nombre, presupuesto) values ('d04', 'SISTEMAS','19850');
insert into DEPARTAMENTOS (codigo, nombre, presupuesto) values ('d05', 'ECONOMIA','14050');
select * from DEPARTAMENTOS order by codigo;

insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('35453639A','Adrian','Alvarez Lois','d01');
insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('35453639B','Miguel','Cervantes Saavedra','d01');
insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('35453639C','Lorem','Ipsum','d01');

insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('25453639A','Adriana','Lopez Gaarcia','d02');
insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('25453639B','Isaac','Becerra Perez','d02');
insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('25453639C','Pablo','Honey Honey','d02');

insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('45453639A','Adrian','Alvarez Lois','d03');
insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('45453639B','Raquel','Gonzalez Garrido','d03');
insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('45453639C','Don','Willians','d03');

insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('55453639A','Mike','Mills','d04');
insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('55453639B','RX','Ibañez','d04');
insert into EMPLEADOS (DNI, nombre, apellidos, cod_dep) values ('55453639C','Marta','Carrasco Fernandez','d04');

select all * from EMPLEADOS group by dni;