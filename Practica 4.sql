
CREATE TABLE Municipios(
Id uniqueidentifier not null primary key,
NombreMunicipio VARCHAR(50) not null,
idEstado uniqueidentifier not null,
)

Create table Estados(
Id uniqueidentifier not null primary key,
NombreEstado VARCHAR(50) not null,
idPais uniqueidentifier not null,
)

Create table Paises(
Id uniqueidentifier not null primary key,
NombrePais VARCHAR(50) not null,
)