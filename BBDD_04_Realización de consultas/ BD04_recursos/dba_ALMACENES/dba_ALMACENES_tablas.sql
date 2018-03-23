
CREATE TABLE almacenes(
codigo VARCHAR( 10 ) ,
lugar VARCHAR( 100 ) NOT NULL UNIQUE ,
capacidad VARCHAR( 10 ) ,
PRIMARY KEY ( codigo )
);

CREATE TABLE  `cajas` (
 `numRef` VARCHAR( 10 ) NOT NULL ,
 `contenido` VARCHAR( 100 ) NOT NULL ,
 `valor` VARCHAR( 10 ) NOT NULL ,
 `almacen` VARCHAR( 10 ) NOT NULL ,
PRIMARY KEY ( numRef ) ,
FOREIGN KEY ( almacen ) REFERENCES almacenes( codigo )
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4
