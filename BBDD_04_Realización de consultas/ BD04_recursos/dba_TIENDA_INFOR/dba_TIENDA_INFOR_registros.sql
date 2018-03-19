insert into FABRICANTES (codigo, nombre) values ('120','Würth');
insert into FABRICANTES (codigo, nombre) values ('121','BASF');
insert into FABRICANTES (codigo, nombre) values ('122','Bosch');
insert into FABRICANTES (codigo, nombre) values ('123','IKEA');
insert into FABRICANTES (codigo, nombre) values ('14','Philips');

insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A01','Tornillo 45X45','120','21');
insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A012','Rosca 85X85','120','24');
insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A013','Rosca 25X25','120','22');

insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A02','Cinta Adhesiva','121','14');
insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A022','Cinta Adhesiva Roja','121','11');
insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A023','Cinta Adhesiva Americana','121','12');

insert into ARTICULOS (cod_art, nombre, fabricante) values ('A03','Taladro','122','46');
insert into ARTICULOS (cod_art, nombre, fabricante) values ('A032','Broca de Acero 0.12','122','18');
insert into ARTICULOS (cod_art, nombre, fabricante) values ('A033','Broca de Metar 0.2','122','19');

insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A04','Lámpara de Mesa','123','29');
insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A042','Tornillo 12x12','123','33');
insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A043','Tuerca 12x12','123','34');

insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A05','Bombilla','124','48');
insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A052','Plafon B0.5','124','58');
insert into ARTICULOS (cod_art, nombre, fabricante, precio) values ('A053','Portalamáparas W027','124','15');

select * from FABRICANTES;
select * from ARTICULOS order by fabricante;