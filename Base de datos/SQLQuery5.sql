Create database ExamenFinal

Create table Mae_Articulos
(
 Codigo int identity,
 Descripcion varchar (50) not null,
 Precio money,
 Costo money,
 Cantidad int
 constraint pk_Mae_Articulos primary key (Codigo)
 )
 Select *from Mae_Articulos


Create table TipoArticulo
 (
 Codigo int identity,
 CodigoTipo int,
 TipoDescripcion varchar(50)
 constraint pk_TipoArticulo primary key(Codigo),
 constraint fk_TipoArticulo foreign key (CodigoTipo) references Mae_Articulos(Codigo)
 )
 Select *from TipoArticulo


 Create table Usuarios
 (
 Codigo int identity,
 Nombre varchar(50),
 Clave varchar(30),
 TipoUsuario varchar (30)
 constraint pk_Usuarios primary key (Codigo)
 )
 Select *from Usuarios

Create table TipoUsuario
 (
 Codigo int identity,
 Descripcion varchar(50),
 CodigoTipo int,
 constraint pk_TipoUsuario primary key(Codigo),
 constraint fk_TipoUsuario foreign key (CodigoTipo)  references Usuarios(Codigo)
 )
 Select *from TipoUsuario


 Create procedure IngresarArticulos
 @Desc varchar (50),
 @precio money,
 @costo money,
 @cantidad int
 as
 begin
 INSERT INTO Mae_Articulos VALUES (@Desc, @precio,@costo,@cantidad)
 end


 Create procedure IngresarTipoArticulo
 @codigo int,
 @descripcion varchar(50)
 as
 begin 
 INSERT INTO TipoArticulo VALUES (@Descripcion, @codigo)
 end


 Create procedure IngresarUsuarios
 @Nombre varchar(50),
 @Clave varchar(30),
 @TipoUsuario varchar (30)
 as
 begin
 INSERT INTO Usuarios values(@Nombre,@Clave,@TipoUsuario)
 end

 Create procedure IngresarTipoUsuarios
 @Descripcion varchar(50),
 @CodigoTipo int
  as
 begin
 INSERT INTO TipoUsuario values(@Descripcion ,@CodigoTipo)
 end

 Create procedure BorrarArticulos
 @codigo int
 as
 begin
  delete Mae_Articulos where Codigo = @codigo
 end

 Create procedure BorrarTipoArticulo
 @codigo int
 as
 begin
  delete TipoArticulo where Codigo = @codigo
 end

 Create procedure BorrarUsuarios
 @codigo int
 as
 begin
  delete Usuarios where Codigo = @codigo
 end

 Create procedure BorrarTipoUsuario
 @codigo int
 as
 begin
  delete Mae_Articulos where Codigo = @codigo
 end



Create procedure ActualizarArticulo
 @Desc varchar (50),
 @precio money,
 @costo money,
 @cantidad int
 as
 begin
   update Mae_Articulos set Descripcion = @Desc,Precio= @precio,Costo= @costo, Cantidad= @cantidad
 end

 Create procedure ActualizarTipoArticulo

 @descripcion varchar(50)
 as
 begin 
 update TipoArticulo set TipoDescripcion = @descripcion
 end

 Create procedure ActualizarUsuarios
 @Nombre varchar(50),
 @Clave varchar(30),
 @TipoUsuario varchar (30)
 as
 begin
update Usuarios set Nombre= @Nombre,Clave= @Clave,TipoUsuario= @TipoUsuario
 end

 Create procedure ActualizarTipoUsuarios
 @Descripcion varchar(50),
 @CodigoTipo int
  as
 begin
 update TipoUsuario set Descripcion=  @Descripcion ,@CodigoTipo= @CodigoTipo
 end




Create procedure ArticuloTipo
 as
 begin 
 select ma.Descripcion,ma.Codigo,ma.Precio,ma.Costo,ma.Cantidad,ta.TipoDescripcion,ta.CodigoTipo
 from Mae_Articulos ma
 inner join TipoArticulo ta on ta.Codigo = ma.Codigo
 end


 Create procedure UsuariosTipo
  as
 begin 
 select u.Nombre,u.Clave,u.Codigo,u.TipoUsuario, tu.CodigoTipo,tu.Descripcion
 from Usuarios u
 inner join TipoUsuario tu on u.Codigo = tu.Codigo
 end


Create procedure ReporteCosto
 as 
 begin 
 select descripcion,precio,cantidad,costo,
 precio * cantidad as [total Ventas],
 cantidad * costo as [total Costos]
 from Mae_Articulos
 end
 exec ReporteCosto


 Create procedure ReporteGanancia
 as
 begin 
 select descripcion,cantidad,precio,costo,
 (cantidad*precio) - (cantidad*costo) as [Ganancias] 
 from Mae_Articulos
 end 
 exec ReporteGanancia



Create procedure ReporteArticulos
 as 
 begin 
 select Descripcion, TipoDescripcion , cantidad
 from Mae_Articulos, TipoArticulo
 end
 exec ReporteArticulos



 select *from Usuarios