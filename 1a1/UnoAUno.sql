
--La relacion de la tabla 1:1 esta dada por tabla Alumnos y tabla Redes_sociales
-- Ya que cada alumno solo puede tener una sola cuenta por red social

CREATE DATABASE ACTIVIDAD_UnoAUno
GO
USE ACTIVIDAD_UnoAUno
GO
CREATE TABLE ALUMNOS (
LEGAJO BIGINT NOT NULL IDENTITY PRIMARY KEY,
NOMBRE VARCHAR(50) NOT NULL,
APELLIDO VARCHAR (50) NOT NULL,
DNI VARCHAR(10) NOT NULL UNIQUE,
FECHA_DE_NACIMIENTO DATE NOT NULL 
)
GO
CREATE TABLE REDES_SOCIALES(
LEGAJO BIGINT PRIMARY KEY REFERENCES ALUMNOS(LEGAJO),
FACEBOOK VARCHAR(100) NOT NULL UNIQUE,
INSTAGRAM VARCHAR(100) NOT NULL UNIQUE,
LINKEDIN VARCHAR(100) NOT NULL UNIQUE
)
