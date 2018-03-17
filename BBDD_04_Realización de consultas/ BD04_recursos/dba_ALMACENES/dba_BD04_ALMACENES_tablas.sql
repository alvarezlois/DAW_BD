
create table ALMACENES (
	codigo VARCHAR(10),
	lugar VARCHAR(50) not null unique,
	capacidad VARCHAR(10),
	primary key (codigo)
	);

create table CAJAS
	numRef VARCHAR(5),
	contenido VARCHAR(100) not null,
	valor VARCHAR(5),
	almacen VARCHAR (10),
	primary key (numRef),
	foreign key (almacen) references ALMACENES(codigo)
	);
