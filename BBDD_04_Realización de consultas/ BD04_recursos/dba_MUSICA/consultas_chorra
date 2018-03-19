

/*  Nombre del disco, Banda y Sello en el que está una cancion llamada Remain */
	select disco.nombre as 'Disco', grupo.nombre as 'Banda', companhia.nombre as 'Sello'
	from esta
		inner join cancion on cancion.cod = esta.can
		inner join disco on esta.cod = disco.cod 
		left join grupo on disco.cod_gru = grupo.cod
		left join companhia on disco.cod_comp = companhia.cod
	where cancion.titulo like 'Remain%'
	;

	select disco.nombre as 'Disco', grupo.nombre as 'Banda', companhia.nombre as 'Sello'
	from disco
		inner join grupo on disco.cod_gru = grupo.cod
		inner join companhia on disco.cod_comp = companhia.cod
		left join esta on esta.cod = disco.cod
		left join cancion on esta.can = cancion.cod
	where cancion.titulo like 'Remain%'
	;

/* Listado de discos que ha publicado  el sello 'Sonido Muchacho' */
	select companhia.nombre as 'sello', disco.nombre
	from companhia
		join disco on companhia.cod = disco.cod_comp
	where companhia.nombre like '%Muchacho%'
	;

/* Cuantos discos ha publicado  el sello 'Sonido Muchacho' ?? */
	select companhia.nombre as 'sello', count(disco.cod) as 'nº de Discos Publicados'
	from companhia
		join disco on companhia.cod = disco.cod_comp
	where companhia.nombre like '%Muchacho%'
	;

/* Cuantos discos ha publicado  cada sello ?? */
	select companhia.nombre as 'sello', count(disco.cod) as 'nº de Discos Publicados'
	from companhia
		join disco on companhia.cod = disco.cod_comp
	group by  companhia.nombre
	order by count(disco.cod)
	;

/* Discos publicados por el sello Phantasy Sound k03 */
	select disco.nombre from disco where cod_comp = 'k03';

/* Miembros de cada grupo */
	select grupo.nombre as 'Grupo', artista.nombre as 'Artista', pertenece.funcion as 'Rol'
	from artista, pertenece, grupo
	where (artista.dni=pertenece.dni and grupo.cod=pertenece.cod)
	order by grupo.nombre ASC
	;

/* Nombres de todos los vocalistas y su grupo */
	select all grupo.nombre as 'Grupo', artista.nombre as 'Vocalista'
	from artista
		left join pertenece on artista.dni=pertenece.dni
		inner join grupo on pertenece.cod=grupo.cod
	where pertenece.funcion like 'VOCALS'
	order by grupo.nombre
	;

/* Nombre del bateria de cada grupo */
	select grupo.nombre as 'Grupo', artista.nombre as 'Batería'
	from artista 
		left join pertenece on artista.dni = pertenece.dni
		inner join grupo on pertenece.cod = grupo.cod
	where pertenece.funcion like 'DRUMS'
	;

/* Nombre de los guitarristas del grupo RIDE g03*/
	select artista.nombre, grupo.nombre
	from artista 
		inner join pertenece on artista.dni = pertenece.dni
		left join grupo on grupo.cod = pertenece.cod
	where pertenece.cod like 'g03' and pertenece.funcion like 'GUITAR'
	;

/* Cuantos discos han publicado SLOWDIVE g02 */
	select grupo.nombre as 'Grupo', count(disco.cod) as 'Discos Publicados'
	from disco
		left join grupo on disco.cod_gru = grupo.cod
	where grupo.nombre like 'SLOWDIVE'
	;

	select grupo.nombre as 'Grupo', count(disco.cod) as 'Discos Publicados'
	from disco, grupo
	where disco.cod_gru = grupo.cod
	group by grupo.nombre
	having grupo.nombre like 'SLOWDIVE'
	;

/* Listado de companhias con base en Madrid o Londres */
	select companhia.nombre as 'Sellos con base en Madrid o Londres', count (disco.cod) as 'Discos Publicados'
	from companhia
		inner join disco on disco.cod_comp = companhia.cod
	where companhia.dir in ('Madrid','Londres')
	group by companhia.nombre
	order by count (disco.cod) ASC
	;


