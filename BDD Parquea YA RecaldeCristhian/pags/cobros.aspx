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
        height: 547px;
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
        height: 26px;
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
        text-align: right;
        height: 53px;
    }
    .auto-style21 {
        font-size: xx-small;
    }
    .auto-style23 {
        height: 26px;
        width: 104px;
        text-align: center;
    }
    .auto-style24 {
        height: 26px;
        width: 173px;
        text-align: left;
    }
    .auto-style25 {
        height: 26px;
        width: 84px;
        text-align: center;
    }
    .auto-style26 {
        height: 26px;
        text-align: left;
    }
    .auto-style27 {
        width: 104px;
        text-align: right;
    }
    .auto-style28 {
        text-align: left;
    }
    .auto-style29 {
        width: 84px;
        color: #004AAD;
        height: 29px;
    }
    .auto-style30 {
        height: 29px;
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
                    <td class="auto-style1" colspan="5">
                        <asp:Image ID="Image2" runat="server" Height="43px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="53px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="5">Facturacion</td>
                </tr>
                <tr>
                    <td class="auto-style13">Cedula:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtCedula" runat="server" placeholder="Cedula"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
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
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">Direccion:</td>
                    <td colspan="4" class="auto-style30">
                        <asp:TextBox ID="txtDireccion" runat="server" placeholder="Direccion" Width="410px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Fecha:</td>
                    <td colspan="4">
                        <asp:TextBox ID="txtbFecha" runat="server" placeholder="Fecha" Width="408px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Email:</td>
                    <td colspan="4">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" Width="413px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="border-color: #004AAD">Cantidad</td>
                    <td class="auto-style7" style="border-color: #004AAD">Detalle</td>
                    <td class="auto-style9" style="border-color: #004AAD">Tiempo</td>
                    <td class="auto-style9" style="border-color: #004AAD">P.V.U</td>
                    <td style="border-color: #004AAD">Total</td>
                </tr>
                <tr>
                    <td class="auto-style25" style="border-color: #004AAD">
                        <asp:Label ID="lblCantidad" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style24" style="border-color: #004AAD">
                        <asp:Label ID="lblDetalle" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style23" style="border-color: #004AAD">
                        <asp:Label ID="lblTime" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style23" style="border-color: #004AAD">
                        <asp:Label ID="lblPVU" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style26" style="border-color: #004AAD">
                        <asp:Label ID="lblTotal1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style7" style="border-color: #004AAD">
                        <asp:Label ID="lblDetalleTimeIngreso" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style9" style="border-color: #004AAD">&nbsp;</td>
                    <td style="border-color: #004AAD">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="border-color: #004AAD"></td>
                    <td class="auto-style6" style="border-color: #004AAD">
                        <asp:Label ID="lblDetalleTimeSalida" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style8" style="border-color: #004AAD"></td>
                    <td style="border-color: #004AAD" class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style4" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style6" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style8" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style8" style="border-color: #004AAD">&nbsp;</td>
                    <td style="border-color: #004AAD" class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style6" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style8" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style8" style="border-color: #004AAD">&nbsp;</td>
                    <td style="border-color: #004AAD" class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" rowspan="2">&nbsp;</td>
                    <td class="auto-style7" rowspan="2">&nbsp;</td>
                    <td class="auto-style27" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style27" style="border-color: #004AAD">Subtotal</td>
                    <td style="border-color: #004AAD" class="auto-style28">
                        <asp:Label ID="lblSubtotal" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style27" style="border-color: #004AAD">IVA</td>
                    <td style="border-color: #004AAD" class="auto-style28">
                        <asp:Label ID="lblIva" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Recibí</td>
                    <td class="auto-style16">Entregué</td>
                    <td class="auto-style27" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style27" style="border-color: #004AAD">P.V.F</td>
                    <td style="border-color: #004AAD" class="auto-style28">
                        <asp:Label ID="lblPVF" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style9" style="border-color: #004AAD">&nbsp;</td>
                    <td class="auto-style9" style="border-color: #004AAD">&nbsp;</td>
                    <td style="border-color: #004AAD">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="5">***Parquea Ya no se responsabiliza por el daño o perdida de objetos personales que ocurran dentro del establecimiento y que sean ajenas a nuestro servicio***</td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="5">
                        <asp:Button ID="btnFacturar" runat="server" BackColor="#004AAD" Font-Bold="True" ForeColor="White" Text="Facturar" OnClick="btnFacturar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="2">
                        <asp:Button ID="btnPagar" runat="server" BackColor="#004AAD" Font-Bold="True" ForeColor="White" OnClick="btnPagar_Click" Text="Pagar" />
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style20" colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style21" ForeColor="#CCCCCC" NavigateUrl="~/pags/admin.aspx">← Volver</asp:HyperLink>
                        <asp:ImageButton ID="imgPrint" runat="server" Height="23px" ImageUrl="~/imgs/print.png" OnClick="imgPrint_Click" Width="24px" />
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
