#1. Mostrar el nombre de todos los jugadores ordenados alfabéticamente.
SELECT Nombre
FROM jugadores
ORDER BY Nombre ASC;

#2. Mostrar el nombre de los jugadores que sean pivots (‘C’) y que pesen más de 200 libras,
#ordenados por nombre alfabéticamente.
SELECT Nombre
FROM jugadores
WHERE Posicion = 'C' AND Peso>200
ORDER BY Nombre ASC;

#3. Mostrar el nombre de todos los equipos ordenados alfabéticamente.
SELECT Nombre
FROM equipos
ORDER BY Nombre ASC;

#4. Mostrar el nombre de los equipos del este (East).
SELECT Nombre
FROM equipos
WHERE Conferencia = 'East';

#5. Mostrar los equipos donde su ciudad empieza con la letra ‘c’, ordenados por nombre.
SELECT *
FROM equipos
WHERE Ciudad
LIKE 'C%';

#6. Mostrar todos los jugadores y su equipo ordenados por nombre del equipo.
SELECT Nombre, Nombre_equipo
FROM jugadores
ORDER BY Nombre_equipo;

#7. Mostrar todos los jugadores del equipo “Raptors” ordenados por nombre.
SELECT *
FROM jugadores
WHERE Nombre_equipo = 'Raptors'
ORDER BY Nombre;

#8. Mostrar los puntos por partido del jugador ‘Pau Gasol’.
SELECT e.Puntos_por_partido
FROM estadisticas AS e
INNER JOIN jugadores AS j
ON e.jugador = j.codigo
WHERE j.nombre = 'Pau Gasol';

#9. Mostrar los puntos por partido del jugador ‘Pau Gasol’ en la temporada ’04/05′.
#10. Mostrar el número de puntos de cada jugador en toda su carrera.
#11. Mostrar el número de jugadores de cada equipo.
#12. Mostrar el jugador que más puntos ha realizado en toda su carrera.
#13. Mostrar el nombre del equipo, conferencia y división del jugador más alto de la NBA.
#14. Mostrar el partido o partidos (equipo_local, equipo_visitante y diferencia) con mayor diferencia de puntos.
#15. Mostrar quien gana en cada partido (codigo, equipo_local, equipo_visitante, equipo_ganador), en caso de empate sera null.