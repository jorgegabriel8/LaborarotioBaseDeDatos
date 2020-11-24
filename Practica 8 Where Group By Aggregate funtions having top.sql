SELECT * FROM Clientes
WHERE Nombre = 'Raul'
SELECT * FROM Domicilios
WHERE Calle = 'Dominos'
SELECT * FROM Municipios
WHERE NombreMunicipio = 'Chile'
SELECT * FROM Paises
WHERE NombrePais = 'EstadosUnidos'
SELECT * FROM Estados
WHERE NombreEstado = 'Chiapas'

SELECT Nombre
FROM Clientes
Where PrimerApellido = 'Caudillo'
Group by FechaDeNacimiento

SELECT NumeroExt
From Domicilios
Where Calle = 'Pinos'
Group by CP

Select Nombre
From Clientes
Where PrimerApellido = 'Gonzalez'
Group By FechaDeNacimiento

SELECT FechaDeNacimiento
From Clientes
Where Nombre = 'Pablo'
Group by IdCliente

SELECT SegundoApellido
From Clientes
Where Nombre = 'Pablo'
Group by IdCliente

SELECT TOP 1 *
FROM Clientes

SELECT TOP 5 *
FROM Domicilios

SELECT TOP 3 *
FROM Estados

SELECT TOP 1 *
FROM Paises

SELECT TOP 7 *
FROM Municipios

SELECT PrimerApellido, SegundoApellido
FROM Clientes
WHERE Nombre = 'Gaby'
GROUP BY FechaDeNacimiento
HAVING IdCliente = '3'


SELECT SegundoApellido, 
FROM Clientes
WHERE PrimerApellido = 'Caudillo'
GROUP BY FechaDeNacimiento
HAVING Nombre = 'Jorge'


SELECT Calle, NumeroExt
FROM Domicilio
WHERE CP = '64770'
GROUP BY Colonia
HAVING NumeroInt = '2020'


SELECT Nombre
FROM Clientes
WHERE Nombre = 'Jorge'
GROUP BY FechaDeNacimiento
HAVING PrimerApellido = 'Caudillo'



