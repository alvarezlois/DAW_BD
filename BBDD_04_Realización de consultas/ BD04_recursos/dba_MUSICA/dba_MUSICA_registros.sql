

/*		 	           	 	 */
/* 1º insertamos os artistas */
/*							 */

-- insertamos os artistas do grupo ALGIERS
	insert into artista values ('15453639a','Lee Tesche');
	insert into artista values ('15453639b','Ryan Mahan');
	insert into artista values ('15453639c','Franklin James Fisher');
	insert into artista values ('15453639d','Natalie Judge');

-- insertamos os artistas do grupo SLOWDIVE
	insert into artista values ('25453639a','Simon Scott');
	insert into artista values ('25453639b','Christian Savill');
	insert into artista values ('25453639c','Neil Halstead');
	insert into artista values ('25453639d','Rachel Goswell');

-- insertamos os artistas do grupo RIDE
	insert into artista values ('35453639a','Steve Queralt');
	insert into artista values ('35453639b','Mark Gardener');
	insert into artista values ('35453639c','Loz Colbert');
	insert into artista values ('35453639d','Andy Bell');

select * from artista;


/*						*/
/* insertamos os grupos */
/*						*/

--insertamos o grupo ALGIERS
	insert into grupo values ('g01','ALGIERS','01/01/2001','USA'); 
--insertamos o grupo SLOWDIVE
	insert into grupo values ('g02','SLOWDIVE','11/01/2001','UK'); 
--insertamos o grupo RIDE
	insert into grupo values ('g03','RIDE','21/01/2001','ESCOCIA'); 
--insertamos o grupo X
	insert into grupo values ('g04','SINGLE','22/02/2001','ESPAÑA'); 
	insert into grupo values ('g05','LA PLATA','23/02/2001','ESPAÑA'); 
	insert into grupo values ('g06','SIERRA','24/02/2001','ESPAÑA'); 
	insert into grupo values ('g07','AUSTRALIAN BLONDE','17/05/2001','ESPAÑA'); 

select * from grupo;


/*														*/
/* insertamos os datos na taboa relacionas 'pertenece' 	*/
/*														*/

-- insertamos a taboa ralaciona pertenece os artistas do grupo ALGIERS
	insert into pertenece values ('15453639a','g01','GUITAR');
	insert into pertenece values ('15453639b','g01','BASS');
	insert into pertenece values ('15453639c','g01','DRUMS');
	insert into pertenece values ('15453639d','g01','VOCALS');

-- insertamos a taboa ralaciona pertenece os artistas do grupo SLOWDIVE
	insert into pertenece values ('25453639a','g02','GUITAR');
	insert into pertenece values ('25453639b','g02','BASS');
	insert into pertenece values ('25453639c','g02','DRUMS');
	insert into pertenece values ('25453639d','g02','VOCALS');

-- insertamos a taboa ralacional pertenece os artistas do grupo RIDE
	insert into pertenece values ('35453639a','g03','GUITAR');
	insert into pertenece values ('35453639b','g03','BASS');
	insert into pertenece values ('35453639c','g03','DRUMS');
	insert into pertenece values ('35453639d','g03','VOCALS');

select artista.nombre as 'artista', pertenece.funcion as 'créditos', grupo.nombre as 'grupo' 
from artista, pertenece, grupo
where (artista.dni = pertenece.dni and pertenece.cod = grupo.cod);


/*							*/
/* insertamos as companhias */
/*							*/

-- insertamos companhia de ALGIERS
	insert into companhia values ('k01','Matador','Michigan','555222111','000111222');
-- insertamos companhia de SLOWDIVE
	insert into companhia values ('k02','Dead Oceans Records','California','555222112','000111223');
-- insertamos companhia de RIDE
	insert into companhia values ('k03','Phantasy Sound','Manchester','555222113','000111224');
-- insertamos companhia X
	insert into companhia values ('k04','Elefant Records','Madrid','555222114','000111225');
	insert into companhia values ('k05','Subterfuge Records','Madrid','555222115','000111226');
	insert into companhia values ('k06','Sonido Muchacho','Madrid','555222116','000111227');
	insert into companhia values ('k07','Creation Records','Londres','555222117','000111228');


/*						*/
/* insertamos os discos */
/*						*/

-- insertamos o discos de ALGIERS algiers
	insert into disco values ('disc01','Algiers','02/06/2017','k01','g01');
-- insertamos o discos de SLOWDIVE slowdive
	insert into disco values ('disc02','Slowdive','05/05/2017','k02','g02');
-- insertamos o discos de RIDE weather diaries
	insert into disco values ('disc03','The Weather Diaries','16/06/2017','k03','g03');
-- insertamos o discos de X
	insert into disco values ('disc04','Mapas del Océano','16/02/2018','k04', 'g04');
	insert into disco values ('disc05','Mapas del Cielo','16/02/2017','k05', 'g04');
	insert into disco values ('disc06','Desorden','16/02/2018','k06', 'g05');
	insert into disco values ('disc07','A Ninguna Parte','20/10/2017','k06', 'g06');
	insert into disco values ('disc08','After Shave','18/05/1996','k05', 'g07');
	insert into disco values ('disc09','Cosmic EP','28/09/1995','k05', 'g07');
	insert into disco values ('disc10','Pygmalion','06/02/1995','k07', 'g02');

/*						  			 */
/* insertamos as cancions dos discos */
/*						  			 */

-- insertamos as cancions de ALGIERS disco algiers
	insert into cancion values ('c01','Remains','0305');
	insert into cancion values ('c02','Claudette','0331');
	insert into cancion values ('c03','And When You Fall','0341');
	insert into cancion values ('c04','Blood','0401');

-- insertamos as cancions de SLOWDIVE disco slowdive
	insert into cancion values ('c11','Slomo','0525');
	insert into cancion values ('c12','Star Roving','0441');
	insert into cancion values ('c13','Dont Know Why','0246');
	insert into cancion values ('c14','Sugar for the Pill','0529');

-- insertamos as cancions de RIDE disco weather diaries
	insert into cancion values ('c21','Lannoy Point','05258');
	insert into cancion values ('c22','Charm Assault','0412');
	insert into cancion values ('c23','All I Want','357');
	insert into cancion values ('c24','Home Is a Feeling','0319');

select * from cancion;
	
/*														    */
/* insertamos cancions e discos na taboa de relacion 'esta' */
/*														    */

-- insertamos as cancions no disco01 */
	insert into esta values ('c01', 'disc01');
	insert into esta values ('c02', 'disc01');
	insert into esta values ('c03', 'disc01');
	insert into esta values ('c04', 'disc01');

-- insertamos as cancions no disco02
	insert into esta values ('c11', 'disc02');
	insert into esta values ('c12', 'disc02');
	insert into esta values ('c13', 'disc02');
	insert into esta values ('c14', 'disc02');

-- insertamos as cancions no disco03
	insert into esta values ('c21', 'disc03');
	insert into esta values ('c22', 'disc03');
	insert into esta values ('c23', 'disc03');
	insert into esta values ('c24', 'disc03');


