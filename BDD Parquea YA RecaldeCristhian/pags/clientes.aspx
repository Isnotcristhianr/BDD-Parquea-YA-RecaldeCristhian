<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clientes.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
    .auto-style2 {
        width: 632px;
        margin-left: 489px;
    }
    .auto-style5 {
        width: 386px;
    }
    .auto-style6 {
        width: 632px;
    }
    .auto-style7 {
        margin-left: 1px;
    }
    .auto-style8 {
        width: 386px;
        text-align: center;
    }
    .auto-style10 {
        height: 270px;
    }
    .auto-style11 {
        height: 123px;
    }
    .auto-style12 {
        font-size: xx-small;
    }
    .auto-style13 {
        width: 386px;
        text-align: left;
    }
    .auto-style14 {
        width: 386px;
        text-align: center;
        color: #004AAD;
    }
    .auto-style15 {
        font-size: xx-small;
        text-align: center;
    }
</style>

<p style="background-color: rgb(0, 74, 173)">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" />
</p>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cliente</title>
    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11"></div>
        <div>
            <table class="auto-style2" style="background-color: #FFFFFF; border-radius:3%">
                <tr>
                    <td class="auto-style8">
                        <asp:Image ID="Image8" runat="server" Height="61px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="71px" />
                    </td>
                    <td class="auto-style6" rowspan="10">
                        <asp:Image ID="Image9" runat="server" CssClass="auto-style7" Height="349px" ImageUrl="~/imgs/animation_500_l5fkmozk.gif" Width="385px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Clientes</td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/imgs/identification-card.png" />
                        <asp:TextBox ID="txtCedula" runat="server" placeholder="Cedula"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/imgs/person.png" />
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/imgs/user (4).png" />
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/imgs/location.png" />
                        <asp:TextBox ID="txtDireccion" runat="server" placeholder="Direccion"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/imgs/cell.png" />
                        <asp:TextBox ID="txtTelefono" runat="server" placeholder="Telefono"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Image ID="Image7" runat="server" ImageUrl="~/imgs/email.png" />
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="btnCrear" runat="server" Text="Crear" BackColor="#004AAD" Font-Bold="True" ForeColor="White" OnClick="btnCrear_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style12" ForeColor="#CCCCCC" NavigateUrl="~/pags/admin.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div class="auto-style10">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
<footer>
    
        <div class="auto-style15" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
            <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
        </div>

</footer>
</html>
