
SELECT TOP (10) v.[Id_Venta]
      ,v.[Producto_Id]
      ,v.[Id_Empleado]
      ,v.[Dia_Venta]
      ,v.[Cliente_Id]
      ,v.[Precio_Neto]
	  , p.*
  FROM [Venta] as v
  right join Productos as p on v.Producto_Id = p.Producto_Id

  SELECT TOP (5) v.[Id_Venta]
      ,v.[Producto_Id]
      ,v.[Id_Empleado]
      ,v.[Dia_Venta]
      ,v.[Cliente_Id]
      ,v.[Precio_Neto]
	  , p.*
  FROM [Venta] as v
  right join Productos as p on v.Producto_Id = p.Producto_Id

  
SELECT TOP (8) v.[Id_Venta]
      ,v.[Producto_Id]
      ,v.[Id_Empleado]
      ,v.[Dia_Venta]
      ,v.[Cliente_Id]
      ,v.[Precio_Neto]
	  , c.*
 FROM [Venta] as v
  inner join Clientes as c on v.Cliente_Id = c.Cliente_Id

SELECT TOP (2) v.[Id_Venta]
      ,v.[Producto_Id]
      ,v.[Id_Empleado]
      ,v.[Dia_Venta]
      ,v.[Cliente_Id]
      ,v.[Precio_Neto]
	  , c.*
   FROM [Venta] as v
  left join Clientes as c on v.Cliente_Id = c.Cliente_Id

SELECT TOP (4) v.[Id_Venta]
      ,v.[Producto_Id]
      ,v.[Id_Empleado]
      ,v.[Dia_Venta]
      ,v.[Cliente_Id]
      ,v.[Precio_Neto]
	  , c.*
  FROM [Venta] as v
  right join Clientes as c on v.Cliente_Id = c.Cliente_Id

SELECT TOP (9) v.[Id_Venta]
      ,v.[Producto_Id]
      ,v.[Id_Empleado]
      ,v.[Dia_Venta]
      ,v.[Cliente_Id]
      ,v.[Precio_Neto]
	  , p.*
  FROM [Venta] as v
  inner join Productos as p on v.Producto_Id = p.Producto_Id

SELECT TOP (100) v.[Id_Venta]
      ,v.[Producto_Id]
      ,v.[Id_Empleado]
      ,v.[Dia_Venta]
      ,v.[Cliente_Id]
      ,v.[Precio_Neto]
	  , p.*
  FROM [Venta] as v
  right join Productos as p on v.Producto_Id = p.Producto_Id

  SELECT v.Dia_Venta, Count(v.Id_Venta) as total_ventas
  FROM Venta as v
  WHERE Precio_Neto >= 1000
  group by v.Dia_Venta

  SELECT v.Dia_Venta, v.Id_Empleado, Count(v.Id_Venta) as total_ventas
  FROM Venta as v
  WHERE Precio_Neto >= 1000
  group by v.Dia_Venta, v.Id_Empleado

   SELECT  v.Id_Empleado, Count(v.Id_Venta) as total_ventas
  FROM Venta as v
  WHERE Precio_Neto >= 1000
  group by  v.Id_Empleado

 
  SELECT  v.Id_Empleado, Count(v.Id_Venta) as total_ventas, SUM(v.Precio_Neto) as Total_Ingreso
  FROM Venta as v
  WHERE Precio_Neto >= 1000
  group by  v.Id_Empleado
  having SUM(v.Precio_Neto) >= 3000

   SELECT  v.Id_Empleado, Count(v.Id_Venta) as total_ventas, SUM(v.Precio_Neto) as Total_Ingreso
  FROM Venta as v
  WHERE Precio_Neto >= 1000
  group by  v.Id_Empleado
  having SUM(v.Precio_Neto) >= 1

     SELECT v.Dia_Venta, v.Id_Empleado, Count(v.Id_Venta) as total_ventas
  FROM Venta as v
  WHERE Precio_Neto >= 1000
  group by v.Dia_Venta, v.Id_Empleado
  having SUM(v.Precio_Neto) >= 100

  SELECT v.Dia_Venta, Count(v.Id_Venta) as total_ventas
  FROM Venta as v
  WHERE Precio_Neto >= 1000
  group by v.Dia_Venta
  having SUM(v.Precio_Neto) >= 10
