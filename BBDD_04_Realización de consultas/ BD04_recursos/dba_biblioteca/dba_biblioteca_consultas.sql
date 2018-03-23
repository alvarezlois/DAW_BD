/**** 2. Cantos libros teñen máis dunha obra? Resolver este exercicio utilizando o atributo
num_obras e sen utilizalo ****/

/* utilizando num_obras */

-- CON INNER JOIN
SELECT
  libro.id_lib,
  COUNT(libro.id_lib)
FROM
  libro
INNER JOIN
  esta_en ON libro.id_lib = esta_en.id_lib
WHERE
  libro.num_obras > 1
GROUP BY
  libro.id_lib;

-- SEN INNER JOIN
SELECT
  libro.titulo as 'titulo del libro',
  COUNT(libro.id_lib) as 'nº de obras del libro'
FROM
  libro, esta_en
WHERE
  (libro.id_lib = esta_en.id_lib AND libro.num_obras > 1)
GROUP BY
  libro.id_lib;

/* sin usar num_obras*/

SELECT
  libro.id_lib,
  COUNT(esta_en.cod_ob)
FROM
  libro
INNER JOIN esta_en ON libro.id_lib = esta_en.id_lib
GROUP BY
  esta_en.id_lib
HAVING COUNT(esta_en.cod_ob) >1


/**** 3. Cantos autores hai na base de datos dos que non se ten ningunha obra? ****/

SELECT
  COUNT(autor.autor_id)
FROM
  autor
INNER JOIN
  escribir ON escribir.autor_id = autor.autor_id
WHERE
  escribir.cod_obra IS NULL
GROUP BY
  autor.autor_id

/**** 4. Obter o nome deses autores. ****/

SELECT
autor.nombre
FROM
  autor
INNER JOIN
  escribir ON escribir.autor_id = autor.autor_id
WHERE
  escribir.cod_obra IS NULL

