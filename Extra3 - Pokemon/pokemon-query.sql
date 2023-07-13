#1. Mostrar el nombre de todos los pokemon.
SELECT nombre
FROM pokemon;

#2. Mostrar los pokemon que pesen menos de 10k.
SELECT nombre, peso
FROM pokemon
WHERE peso<10;

#3. Mostrar los pokemon de tipo agua.
SELECT p.nombre
FROM pokemon AS p
INNER JOIN pokemon_tipo AS pt
ON p.numero_pokedex = pt.numero_pokedex
INNER JOIN tipo AS t
ON pt.id_tipo = t.id_tipo
WHERE t.nombre='agua';

#4. Mostrar los pokemon de tipo agua, fuego o tierra ordenados por tipo.
SELECT p.nombre, t.nombre
FROM pokemon AS p
INNER JOIN pokemon_tipo AS pt
ON p.numero_pokedex = pt.numero_pokedex
INNER JOIN tipo AS t
ON pt.id_tipo = t.id_tipo
WHERE t.nombre='agua' OR t.nombre='fuego' OR t.nombre='tierra'
ORDER BY t.nombre;

#5. Mostrar los pokemon que son de tipo fuego y volador
SELECT p.nombre
FROM pokemon AS p
INNER JOIN pokemon_tipo AS pt
ON p.numero_pokedex = pt.numero_pokedex
INNER JOIN tipo AS t
ON pt.id_tipo = t.id_tipo
WHERE t.nombre='fuego' AND pt.numero_pokedex IN (SELECT numero_pokedex
													FROM pokemon_tipo AS pt1
                                                    INNER JOIN tipo AS t1
                                                    ON pt1.id_tipo = t1.id_tipo
                                                    WHERE t1.nombre='volador');
                                                    
#6. Mostrar los pokemon con una estadística base de ps mayor que 200.
SELECT p.nombre, eb.ps
FROM pokemon AS p
INNER JOIN estadisticas_base AS eb
ON p.numero_pokedex = eb.numero_pokedex
WHERE eb.ps>200;


