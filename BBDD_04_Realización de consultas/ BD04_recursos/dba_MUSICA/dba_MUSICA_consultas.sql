select cancion.titulo, cancion.duracion, disco.nombre
from cancion, esta, disco
where (cancion.cod = esta.can and esta.cod = disco.cod) and disco.cod_gru = 'g01';

select artista.nombre, pertenece.funcion, grupo.nombre
from artista, pertenece, grupo
where (artista.dni = pertenece.dni and pertenece.cod = grupo.cod);

select artista.nombre, grupo.nombre
from artista, pertenece, grupo
where (artista.dni = pertenece.dni and pertenece.cod = grupo.cod)
and pertenece.funcion = 'BASS'
group by grupo.nombre;

select grupo.nombre as 'BANDA', disco.nombre as 'LP', companhia.nombre 'SELLO', disco.fecha as 'LANZAMIENTO'
from grupo join disco on disco.cod_gru = grupo.cod
left join companhia on (disco.cod_comp = companhia.cod)
 
select disco.nombre as 'LP', count(cancion.cod) as 'Track Totales'
 from cancion, esta, disco
where (cancion.cod = esta.can and esta.cod = disco.cod)
group by disco.nombre;
