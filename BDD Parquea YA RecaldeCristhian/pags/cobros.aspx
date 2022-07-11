<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cobros.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.cobros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        width: 30%;
        margin-left: 456px;
        height: 562px;
    }
    .auto-style3 {
        height: 26px;
    }
    .auto-style4 {
        height: 26px;
        width: 84px;
    }
    .auto-style5 {
        width: 84px;
    }
    .auto-style6 {
        height: 26px;
        width: 173px;
    }
    .auto-style7 {
        width: 173px;
    }
    .auto-style8 {
        height: 26px;
        width: 104px;
    }
    .auto-style9 {
        width: 104px;
    }
    .auto-style10 {
        width: 84px;
        color: #004AAD;
    }
    .auto-style11 {
        width: 104px;
        color: #004AAD;
    }
    .auto-style12 {
        height: 26px;
        width: 104px;
        color: #004AAD;
    }
    .auto-style13 {
        height: 26px;
        width: 84px;
        color: #004AAD;
    }
    .auto-style14 {
        text-align: center;
        color: #004AAD;
    }
    .auto-style15 {
        width: 84px;
        text-align: center;
    }
    .auto-style16 {
        width: 173px;
        text-align: center;
    }
    .auto-style17 {
        text-align: center;
        height: 53px;
    }
    .auto-style18 {
        height: 68px;
    }
    .auto-style19 {
        height: 107px;
    }
    .auto-style20 {
        text-align: left;
        height: 53px;
    }
    .auto-style21 {
        font-size: xx-small;
    }
</style>

<p style="background-color: rgb(0, 74, 173)">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" />
</p>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cobros</title>
    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style18"></div>
        <div>
            <table class="auto-style2" style="background-color: #FFFFFF; border-radius:3%">
                <tr>
                    <td class="auto-style1" colspan="4">
                        <asp:Image ID="Image2" runat="server" Height="43px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="53px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="4">Facturacion</td>
                </tr>
                <tr>
                    <td class="auto-style13">Cedula:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtCedula" runat="server" placeholder="Cedula"></asp:TextBox>
                    </td>
                    <td class="auto-style12">Telefono:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtTelefono" runat="server" placeholder="Telefono"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Nombre:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
                    </td>
                    <td class="auto-style11">Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Direccion:</td>
                    <td colspan="3">
                        <asp:TextBox ID="txtDireccion" runat="server" placeholder="Direccion" Width="410px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Fecha:</td>
                    <td colspan="3">
                        <asp:TextBox ID="txtbFecha" runat="server" placeholder="Fecha" Width="408px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Email:</td>
                    <td colspan="3">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" Width="413px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="border-color: #004AAD">Cantidad</td>
                    <td class="auto-style7" style="border-color: #004AAD">Detalle</td>
                    <td class="auto-style9" style="border-color: #004AAD">P.V.U</td>
                    <td style="border-color: #004AAD">Total</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="border-color: #004AAD"></td>
                    <td class="auto-style6" style="border-color: #004AAD"></td>
                    <td class="auto-style8" style="border-color: #004AAD"></td>
                    <td class="auto-style3" style="border-color: #004AAD"></td>
                </tr>
                <tr>
                    <td class="auto-style5" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style7" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style9" style="border-color: #004AAD">&nbsp;</td>
                    <td style="border-color: #004AAD">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style7" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style9" style="border-color: #004AAD">&nbsp;</td>
                    <td style="border-color: #004AAD">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" rowspan="2">&nbsp;</td>
                    <td class="auto-style7" rowspan="2">&nbsp;</td>
                    <td class="auto-style9" style="border-color: #004AAD">Subtotal</td>
                    <td style="border-color: #004AAD">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" style="border-color: #004AAD">IVA</td>
                    <td style="border-color: #004AAD">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">Recibí</td>
                    <td class="auto-style16">Entregué</td>
                    <td class="auto-style9" style="border-color: #004AAD">P.V.F</td>
                    <td style="border-color: #004AAD">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="4">***Parquea Ya no se responsabiliza por el daño o perdida de objetos personales que ocurran dentro del establecimiento y que sean ajenas a nuestro servicio***</td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="4">
                        <asp:Button ID="btnFacturar" runat="server" BackColor="#004AAD" Font-Bold="True" ForeColor="White" Text="Facturar" OnClick="btnFacturar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="4">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style21" ForeColor="#CCCCCC" NavigateUrl="~/pags/admin.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div class="auto-style19"></div>
    </form>
    
</body>
<footer>

    <div class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
        <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
    </div>

</footer>
</html>
