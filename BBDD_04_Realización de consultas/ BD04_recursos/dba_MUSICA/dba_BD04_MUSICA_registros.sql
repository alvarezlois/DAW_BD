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

--insertamos o grupo ALGIERS
insert into grupo values ('g01','ALGIERS','01/01/2001','USA'); 
--insertamos o grupo SLOWDIVE
insert into grupo values ('g02','SLOWDIVE','11/01/2001','UK'); 
--insertamos o grupo RIDE
insert into grupo values ('g03','RIDE','21/01/2001','ESCOCIA'); 

select * from grupo;

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

-- insertamos a taboa ralaciona pertenece os artistas do grupo RIDE
insert into pertenece values ('35453639a','g03','GUITAR');
insert into pertenece values ('35453639b','g03','BASS');
insert into pertenece values ('35453639c','g03','DRUMS');
insert into pertenece values ('35453639d','g03','VOCALS');

select artista.nombre as 'artista', pertenece.funcion as 'créditos', grupo.nombre as 'grupo' 
from artista, pertenece, grupo
where (artista.dni = pertenece.dni and pertenece.cod = grupo.cod);


/* cancion esta en disco */

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

-- insertamos companhia de ALGIERS
insert into companhia values ('k01','Matador','Michigan','555222111','000111222');
-- insertamos companhia de SLOWDIVE
insert into companhia values ('k02','Dead Oceans Records','California','555222112','000111223');
-- insertamos companhia de RIDE
insert into companhia values ('k03','Phantasy Sound','Manchester','555222113','000111224');

-- insertamos o discos de ALGIERS algiers
insert into disco values ('disc01','Algiers','02/06/2017','k01','g01');
-- insertamos o discos de SLOWDIVE slowdive
insert into disco values ('disc02','Slowdive','05/05/2017','k02','g02');
-- insertamos o discos de RIDE weather diaries
insert into disco values ('disc03','The Weather Diaries','16/06/2017','k03','g03');


/* insertamos taboa de relacion esta */
-- insertamos as cancions no disco01
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


