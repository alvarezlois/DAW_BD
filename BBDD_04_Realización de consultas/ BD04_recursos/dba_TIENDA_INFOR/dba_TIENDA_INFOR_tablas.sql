
create table FABRICANTES (
	codigo		VARCHAR(5),
	nombre		VARCHAR(20) not null unique,
	primary key (codigo)
	);
	
create table ARTICULOS (
	cod_art	VARCHAR(10),
	nombre	VARCHAR(100),
	precio	VARCHAR(100),
	fabricante VARCHAR(30),
	primary key (cod_art),
	foreign key (fabricante) references FARBRICANTES(codigo)
	);
