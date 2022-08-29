
--La relacion de la tabla 1:N esta dada por tabla Equipo y tabla Jugador
-- Ya que un equipo puede tener varios jugadores pero un jugador no puede tener}
--más de un equipo

create database ligaFutbol
go
use ligaFutbol
go
create table equipo (
	idEquipo tinyint primary key,
	nombreEquipo varchar(50) not null,
	divisionEquipo char not null
	)
go
create table jugador (
	legajoJugador int check (legajoJugador >0 and legajoJugador <3000) primary key,
	nombreJugador varchar(30) not null,
	idEquipo tinyint foreign key (idEquipo) references equipo(idEquipo),
	fechaNac date not null
	)

