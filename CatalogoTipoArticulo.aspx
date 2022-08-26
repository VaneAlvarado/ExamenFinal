<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatalogoTipoArticulo.aspx.cs" Inherits="ExamenFinal.CatalogoTipoArticulo" %>

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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catalogo Tipo de Articulos</p>
    <form id="form1" runat="server">
        <div style="width: 901px; height: 577px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" ForeColor="Black" Height="16px" Width="409px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
                            <asp:BoundField DataField="CodigoTipo" HeaderText="CodigoTipo" SortExpression="CodigoTipo" />
                            <asp:BoundField DataField="TipoDescripcion" HeaderText="TipoDescripcion" SortExpression="TipoDescripcion" />
                        </Columns>
                         <FooterStyle BackColor="#ebbce8" Font-Bold="True" ForeColor="Black" />
                        <HeaderStyle BackColor="#ebbce8" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#e0c1e6" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#e0c1e6" />
                        <SelectedRowStyle BackColor="#ebbce8" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#ebbce8" />
                        <SortedAscendingHeaderStyle BackColor="#ebbce8" />
                        <SortedDescendingCellStyle BackColor="#ebbce8" />
                        <SortedDescendingHeaderStyle BackColor="#ebbce8" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="SELECT * FROM [TipoArticulo]"></asp:SqlDataSource>
<p>
    &nbsp;</p>
                    <p>
    Codigo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="tCodigo" runat="server"></asp:TextBox>
</p>
<p>
    Descripcion:&nbsp;&nbsp;
    <asp:TextBox ID="tDescripcion" runat="server" Width="148px"></asp:TextBox>
</p>
            <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="bIngresar" runat="server" Height="50px" Text="Ingresar" CssClass="button1" Width="106px" OnClick="bIngresar_Click"  />

&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bBorrar" runat="server" Height="50px" Text="Borrar" CssClass="button2"  Width="106px" OnClick="bBorrar_Click" />
&nbsp;&nbsp;
        <asp:Button ID="bActualizar" runat="server" Height="50px" Text="Actualizar" CssClass="button1" Width="106px" OnClick="bActualizar_Click"/>
&nbsp;</p>
        </div>
    </form>
</body>
</html>
