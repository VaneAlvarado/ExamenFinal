<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="ExamenFinal.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu principal</title>
    <link rel="stylesheet" type="text/css" href="css/principal.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
             <ul>
  <li><a href="Auditoria.aspx">Auditorias</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Catalogos</a>
    <div class="dropdown-content">
      <a href="CatalogoArticulos.aspx">Articulos</a>
      <a href="CatalogoUsuarios.aspx">Usuarios</a>
      <a href="CatalogoTipoArticulo.aspx">Tipos de Usuarios</a>
  <li class="dropdown">
        <a href="javascript:void(0)" class="dropbtn">Reportes</a>
    <div class="dropdown-content">
      <a href="ReporteArticulos.aspx">Articulos</a>
      <a href="ReporteGanancias.aspx">Ganancias</a>
      <a href="ReporteInventario.aspx">Costo de inventario</a>

  </div>
</ul>
        </div>
    <p>
        &nbsp;</p>
        Bienvenido:
        <asp:Label ID="lusuario" runat="server"></asp:Label>
    </form>
    <p>
</body>
    
</html>
