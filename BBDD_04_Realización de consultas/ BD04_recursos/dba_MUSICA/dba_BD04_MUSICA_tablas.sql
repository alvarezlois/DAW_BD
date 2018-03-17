
CREATE TABLE artista (
dni VARCHAR2(10) CONSTRAINT PK_arti PRIMARY KEY,
nombre VARCHAR2(30) NOT NULL);

CREATE TABLE grupo (
cod CHAR(3) CONSTRAINT PK_gru PRIMARY KEY,
nombre VARCHAR2(30) NOT NULL,
fecha DATE,
pais VARCHAR(10) );

CREATE TABLE club (
cod CHAR(3) CONSTRAINT PK_club PRIMARY KEY,
nombre VARCHAR2(30) NOT NULL,
sede VARCHAR2(30),
num NUMBER(6),
cod_gru CHAR(3) NOT NULL CONSTRAINT FK_club_grupo REFERENCES grupo (cod));

CREATE TABLE companhia (
cod CHAR(3) CONSTRAINT PK_compa PRIMARY KEY,
nombre VARCHAR2(30) NOT NULL,
dir VARCHAR2(30),
fax VARCHAR2(15),
tfno VARCHAR2(15) );

CREATE TABLE cancion (
cod NUMBER(3) CONSTRAINT PK_can PRIMARY KEY,
titulo VARCHAR2(30) NOT NULL,
duracion NUMBER(2) );

CREATE TABLE disco (
cod CHAR(3) CONSTRAINT PK_dis PRIMARY KEY,
nombre VARCHAR2(30),
fecha DATE ,
cod_comp CHAR(3) NOT NULL CONSTRAINT FK_disco_comp REFERENCES companhia (cod),
cod_gru CHAR(3) NOT NULL CONSTRAINT FK_disco_grupo REFERENCES grupo (cod));

CREATE TABLE esta (
can NUMBER(3) CONSTRAINT FK_esta_can REFERENCES cancion (cod),
cod CHAR(3) CONSTRAINT FK_esta_disco REFERENCES disco (cod),
CONSTRAINT PK_esta PRIMARY KEY (can, cod));

CREATE TABLE pertenece (
dni VARCHAR2(10) CONSTRAINT FK_perte_arti REFERENCES artista (dni),
cod CHAR(3) CONSTRAINT FK_perte_grupo REFERENCES grupo (cod),
funcion VARCHAR2(15),
CONSTRAINT PK_perte PRIMARY KEY (dni, cod));