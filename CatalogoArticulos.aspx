<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatalogoArticulos.aspx.cs" Inherits="ExamenFinal.CatalogoArticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/principal.css">
    <style type="text/css">


        .button1 {
    background-color: #a8edea;
    color: black;
    border: 2px solid #a8edea;
    font-family: 'Vibur', cursive;
}

.button2 {
    background-color: #fed6e3;
    color: black;
    border: 2px solid #fed6e3;
    font-family: 'Vibur', cursive;
}
    </style>
</head>
<body>

            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catalogo Articulos</p>
    <form id="form1" runat="server">
        <div style="width: 901px; height: 577px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="16px" Width="100px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                            <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
                            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        </Columns>
                       <FooterStyle BackColor="#c5e8de" Font-Bold="True" ForeColor="Black" />
                        <HeaderStyle BackColor="#c5e8de" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#9bd1c2" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#9bd1c2" />
                        <SelectedRowStyle BackColor="#c5e8de" Font-Bold="True" ForeColor="white" />
                        <SortedAscendingCellStyle BackColor="#c5e8de" />
                        <SortedAscendingHeaderStyle BackColor="#c5e8de" />
                        <SortedDescendingCellStyle BackColor="#c5e8de" />
                        <SortedDescendingHeaderStyle BackColor="#c5e8de" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="SELECT * FROM [Mae_Articulos]"></asp:SqlDataSource>
              <EditRowStyle BackColor="#26bdbf" />
<p>
    &nbsp;</p>
                    <p>
    Descripcion:&nbsp;
    <asp:TextBox ID="tDescripcion" runat="server"></asp:TextBox>
</p>
<p>
    Codigo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tCodigo" runat="server"></asp:TextBox>
</p>
<p>
    Precio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tPrecio" runat="server" Width="90px"></asp:TextBox>
</p>
<p>
    Cantidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tCantidad" runat="server" Width="80px"></asp:TextBox>
</p>
<p>
    Costo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tCosto" runat="server" Width="94px"></asp:TextBox>
</p>
            <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bIngresar" runat="server" Height="50px" Text="Ingresar" CssClass="button1" Width="106px" OnClick="bIngresar_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bBorrar" runat="server" Height="50px" Text="Borrar" CssClass="button2"  Width="106px" OnClick="bBorrar_Click" />
&nbsp;&nbsp;
        <asp:Button ID="bActualizar" runat="server" Height="50px" Text="Actualizar" CssClass="button1" Width="106px" OnClick="bActualizar_Click" />
&nbsp;</p>
        </div>
    </form>
</body>
</html>
