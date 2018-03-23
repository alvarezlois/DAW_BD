
create table almacenes (
	codigo VARCHAR(3),
	lugar VARCHAR(50) not null unique,
	capacidad VARCHAR(6),
	primary key (codigo)
	);

create table cajas
	numRef VARCHAR(5),
	contenido VARCHAR(100) not null,
	valor VARCHAR(5),
	almacen VARCHAR (6),
	primary key (numRef),
	foreign key (almacen) references almacenes(codigo)
	);
