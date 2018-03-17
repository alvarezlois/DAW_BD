
create table DEPARTAMENTOS (
	codigo		VARCHAR(5),
	nombre		VARCHAR(20) not null unique,
	presupuest		VARCHAR(20),
	primary key (codigo)
	);
	
create table EMPLEADOS (
	DNI	VARCHAR(10),
	nombre	VARCHAR(100),
	Apellidos	VARCHAR(100),
	cod_dep VARCHAR(30),
	primary key (DNI),
	foreign key (cod_dep) references DEPARTAMENTOS(codigo)
	);
