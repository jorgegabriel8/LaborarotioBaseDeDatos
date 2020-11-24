INSERT INTO cliente
(Id,Cliente, Nombre, PrimerApellido, Segundo Apellido, FechaDeNacimiento)
Values (
(1, ‘Jorge’, ‘Caudillo’, ‘Valdes’, ‘1992-07-08’,),
(2, ‘Juan’, ‘Garza’, ‘Garza’, ‘1995-01-07’,),
(3, ‘Gaby’, ‘Caudillo’, ‘Valdes’, ‘1982-01-04’,),
(4, ‘July’, ‘Caudillo’, ‘Valdes’, ‘1972-04-11’,),
(5, ‘Carolina’, ‘Martinez’, ‘lopez’, ‘1982-07-08’,),
(6, ‘Patricia’, ‘Chavez’, ‘Jimenez’, ‘1942-10-09’,),
(7, ‘Raul’, ‘Gonzalez’, ‘Smith’, ‘2000-02-02’,),
(8, ‘Luisa’, ‘Treviño’, ‘Perez’, ‘1999-09-01’,),
(9, ‘Pablo’, ‘Perez’, ‘Lopez’, ‘1992-07-08’,),
(10, ‘Eduardo’, ‘Flores’, ‘Jarrones’, ‘1980-01-07’,),
)
Go




INSERT INTO Domicilios
(IdDomicilio, Calle, NumeroExt, NumeroInt, Colonia, CP)
Values (
(01, 'Pinos', '2904', null, 'LosPinos', '64570',),
(02, 'FCFM', '2020', null, 'Universidad', '68870',),
(03, 'FIME', '0000', null, 'Universidad', '68870',),
(04, 'Jalisco', '134', '2', 'Satelite', '75050',),
(05, 'Arbol', '256', null, 'contry', '64770',),
(06, 'Juarez', '666', null, 'Soriana', '62670',),
(07, 'Dominos', '0135', null, 'Florida', '61570',),
(08, 'Libertad', '904', null, 'centro', '0020',),
(09, 'sirlon', null, 'centro', '0020',),
(10, 'pampas', '976', null, 'contry', '64770',),
)
GO

INSERT INTO Estados
(IdEstado, NombreEstado)
Values(
('NL', 'NuevoLeon'),
('CH', 'Chiapas'),
('DU', 'Durango'),
('GUA', 'Guadalajara'),
('TAM', 'Tampico'),
('TAMP', 'Tamaulipas'),
('CD', 'CdMexico'),
('TX', 'Texas'),
('GU', 'Guanajuato'),
('SL', 'SanLuis'),
)
GO

INSERT INTO Municipios
(IdMunicipio, NombreMunicipio)
Values(
('Mon', 'Monterrey'),
('San', 'SanNicolas'),
('Gua', 'Guadalupe'),
('Chil', 'Chile'),
('Jua', 'Juarez'),
('Santa', 'SantaCatarina'),
)
GO

INSERT INTO Paises
(IdPais, NombrePais)
Values(
('Mex', 'Mexico')
('EUA', 'EstadosUnidos')
)
Go

DELETE FROM Clientes
WHERE nombre = 'Juan'
DELETE FROM Domicilios 
WHERE calle = '2020'
DELETE FROM Municipios
WHERE IdMunicipio = 'Jua'
DELETE FROM Estados
WHERE NombreEstado = 'Guanajuato'
DELETE FROM  Clientes
WHERE PrimerApellido = 'Caudillo'

UPDATE Clientes SET PrimerApellido = 'Nieto' WHERE nombre = 'Patricia'
UPDATE Domicilios SET NumeroExt = '8' WHERE calle ='Arbol'
UPDATE Clientes SET FechaDeNacimiento = '2020-20-20' WHERE nombre = 'Jorge' 
UPDATE Domicilios SET CP = '66666' WHERE Colonia = 'Universidad'
UPDATE Clientes SET SegundoApellido = 'Smith' WHERE nombre = 'Luisa'
