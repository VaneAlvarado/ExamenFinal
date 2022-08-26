<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatalogoUsuarios.aspx.cs" Inherits="ExamenFinal.CatalogoUsuarios" %>

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
    <form id="form1" runat="server">
        <div>

            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catalogo Usuarios</p>
        <div style="width: 901px; height: 577px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" Height="16px" Width="25px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                            <asp:BoundField DataField="TipoUsuario" HeaderText="TipoUsuario" SortExpression="TipoUsuario" />
                        </Columns>
                          <EditRowStyle BackColor="#e0c1e6" />
                        <FooterStyle BackColor="#ddace6" Font-Bold="True" ForeColor="Black" />
                        <HeaderStyle BackColor="#ddace6" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#e0c1e6" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#e0c1e6" />
                        <SelectedRowStyle BackColor="#e0c1e6" Font-Bold="True" ForeColor="#e0c1e6" />
                        <SortedAscendingCellStyle BackColor="#e0c1e6" />
                        <SortedAscendingHeaderStyle BackColor="#e0c1e6" />
                        <SortedDescendingCellStyle BackColor="#e0c1e6" />
                        <SortedDescendingHeaderStyle BackColor="#e0c1e6" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExamenFinalConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
<p>
    &nbsp;</p>
                    <p>
    Codigo:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tCodigo" runat="server"></asp:TextBox>
</p>
<p>
    Nombre:&nbsp;&nbsp;
    <asp:TextBox ID="tNombre" runat="server" Width="148px"></asp:TextBox>
</p>
<p>
    Clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tClave" type="password" runat="server" Width="112px"></asp:TextBox>
</p>
<p>
    Tipo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="dTipo" runat="server">
        <asp:ListItem>Administrador</asp:ListItem>
        <asp:ListItem Enabled="False">Regular</asp:ListItem>
    </asp:DropDownList>
</p>
            <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="bIngresar" runat="server" Height="50px" Text="Ingresar" CssClass="button1" Width="106px" OnClick="bIngresar_Click" />

&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bBorrar" runat="server" Height="50px" Text="Borrar" CssClass="button2"  Width="106px" OnClick="bBorrar_Click" />
&nbsp;&nbsp;
        <asp:Button ID="bActualizar" runat="server" Height="50px" Text="Actualizar" CssClass="button1" Width="106px" OnClick="bActualizar_Click"/>
&nbsp;</p>
        </div>
        </div>
    </form>
</body>
</html>
