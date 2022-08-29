
--La relacion de la tabla N:N esta dada por la tabla Profesor, la tabla Materia
-- y la tabla de union Clases
-- Ya que un profesor puede dar mas de una materia
-- y a su vez la materia puede ser dada por mas de un profesor

create database universidad
go
use universidad
go
create table profesor(
	legajoProfesor tinyint not null primary key,
	nombreProfesor varchar (40),
	apellidoProfesor varchar (40)
	)
go
create table materia (
	idMateria tinyint not null primary key,
	nombreMateria varchar (40),
	duracion tinyint
	)
go 
create table clases (
		legajoProfe tinyint not null foreign key(legajoProfe) references profesor(legajoProfesor),
		idMate tinyint not null foreign key (idMate) references materia (idMateria),
		horarioInicio time, 
		primary key(legajoProfe, idMate)
		)

