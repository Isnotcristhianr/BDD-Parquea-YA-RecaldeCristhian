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
        margin-left: 0px;
        margin-top: 0px;
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

    .auto-style17 {
        text-align: center;
    }

    .auto-style18 {
        height: 70px;
        margin-left: 515px;
        margin-top: 42px;
    }

    .auto-style19 {
        margin-left: 457px;
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
            <table class="auto-style2" style="background-color: #FFFFFF; border-radius: 3%">
                <tr>
                    <td class="auto-style8">
                        <asp:Image ID="Image8" runat="server" Height="61px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="71px" />
                    </td>
                    <td class="auto-style6" rowspan="11">
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
                <tr>
                    <td class="auto-style13">
                        <asp:ImageButton ID="imgPrint" runat="server" Height="23px" ImageUrl="~/imgs/print.png" OnClick="imgPrint_Click" Width="24px" />
                    </td>
                </tr>
            </table>
            <div class="auto-style18">
                <asp:Button ID="btnVer" runat="server" BackColor="#006699" BorderStyle="Ridge" Font-Bold="True" ForeColor="White" OnClick="btnVer_Click" Text="Visualizar Clientes" />
                &nbsp;&nbsp;
                <asp:Button ID="btnActualizar" runat="server" BackColor="#00CC99" Font-Bold="True" ForeColor="White" OnClick="btnActualizar_Click" Text="Actualizar" />
                &nbsp;&nbsp;
                <asp:Button ID="btnEliminar" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="White" OnClick="btnEliminar_Click" Text="Eliminar" />
                &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEstado" runat="server" OnClick="btnEstado_Click" Text="Delete" />
            </div>
        </div>
        <div class="auto-style10">
            <div class="auto-style17">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style19" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
<footer>

    <div class="auto-style15" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
        <small>&copy; 2022 </b> - Todos los Derechos Reservados - Cristhian Recalde</small>
    </div>

</footer>
</html>
