   CREATE TRIGGER Actualizar_Precio
ON Productos
 AFTER UPDATE AS 
 -- ¿Cambio el estado?
 IF UPDATE(Precio_Producto)
 BEGIN
	UPDATE Productos SET Precio_Producto=(SELECT Precio_Producto FROM inserted) WHERE Producto_Id=(SELECT Producto_Id FROM inserted);
 END;
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER Actualizar_Precio2
ON Productos
 AFTER UPDATE AS 
 BEGIN
	UPDATE Productos SET Precio_Producto=(SELECT Precio_Producto FROM inserted) WHERE Producto_Id=(SELECT Producto_Id FROM inserted);
 END;
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger actualizar2
  on Productos
  for update
  as
   if (update(Precio_producto) and
    not update(Precio_producto) )
   begin
    select 
    (d.Producto_id+'-'+ d.Precio_Producto) as 'registro anterior',
    (i.Producto_id+'-'+ i.Precio_Producto) as 'registro actualizado'
     from deleted as d
     join inserted as i
     on d.Producto_Id=i.Producto_Id
   end
   else
   begin
    raiserror('El precio y stock no pueden modificarse. La actualización no se realizó.', 10, 1)
    rollback transaction
   end;
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger  actualizar3
  on Productos
  for update
  as
   if (update(Precio_producto) and
    not update(Precio_producto) )
   begin
    select 
    (d.Producto_id+'-'+ d.Precio_Producto) as 'registro anterior',
    (i.Producto_id+'-'+ i.Precio_Producto) as 'registro actualizado'
     from deleted as d
     join inserted as i
     on d.Producto_Id=i.Producto_Id
  
   end;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER triggerprube ON Productos
AFTER INSERT, UPDATE, DELETE
AS
 SELECT * FROM deleted;
 SELECT * FROM inserted;
GO
USE [master]
GO
ALTER DATABASE [muebleria] SET  READ_WRITE 
GO