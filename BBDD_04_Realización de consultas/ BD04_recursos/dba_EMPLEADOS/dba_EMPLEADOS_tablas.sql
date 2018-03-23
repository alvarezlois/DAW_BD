
-- 1º Creamos a táboa DEPARTAMENTOS
create table DEPARTAMENTOS (
	codigo			VARCHAR(5),
	nombre			VARCHAR(20) unique not null,
	presupuesto		VARCHAR(20),
	primary key (codigo)
	);
-- MySQL
-- create table departamentos ( codigo VARCHAR(5), nombre VARCHAR(20) unique not null, presupuesto VARCHAR(20), primary key (codigo) );


-- 2º Creamos a táboa EMPLEADOS	
create table EMPLEADOS (
	dni			VARCHAR(10) unique not null,
	nombre		VARCHAR(100),
	apellidos	VARCHAR(100),
	cod_dep 	VARCHAR(30),
	primary key (DNI),
	foreign key (cod_dep) references DEPARTAMENTOS(codigo)
	);
-- MySQL
-- create table empleados ( dni VARCHAR(10) unique not null,  nombre VARCHAR(100), apellidos VARCHAR(100), cod_dep VARCHAR(3), primary key (dni), index cod_dep (cod_dep), foreign key (cod_dep) references departamentos(codigo) on delete cascade ) engine=INNODB;
