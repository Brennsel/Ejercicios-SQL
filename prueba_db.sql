CREATE DATABASE IF NOT EXISTS prueba_db; /* crear solo si no existe */

USE prueba_db;

CREATE TABLE Casa (
	id_casa int,
    calle varchar(50),
    numeracion int,
    es_departamento boolean,
    CONSTRAINT PK_Casa primary key (id_casa)
);

create table Usuario (
	id_usuario int,
    nombre varchar(10),
    apellido varchar(10),
    id_casa2 int,
    constraint PK_Usuario primary key (id_usuario),
    constraint FK_CasaUsuario foreign key (id_casa2) references Casa (id_casa)
);

insert into Casa (id_casa, calle, numeracion, es_departamento) values (163748, 'Av Libertador', 1465, 1); /* tupla */
insert into Casa (id_casa, calle, numeracion, es_departamento) values (345678, 'Carcaraña', 3488, 0);

insert into Usuario (id_usuario, nombre, apellido, id_casa2) values (854267, 'Noelia', 'Devito', 163748);

#consulta para mostrar tabla casa
SELECT *
FROM Casa;

#consulta para mostrar tabla usuario
SELECT *
FROM Usuario;

SELECT id_casa
FROM Casa
WHERE calle = 'Carcaraña';  /*filtrar */