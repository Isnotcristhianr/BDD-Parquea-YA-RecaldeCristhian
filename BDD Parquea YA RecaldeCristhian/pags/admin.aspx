<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 665px;
            margin-left: 426px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 79px;
        }
        .auto-style4 {
            height: 162px;
        }
        .auto-style5 {
            height: 319px;
        }
        .auto-style11 {
            width: 91px;
            text-align: center;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            font-size: xx-small;
        }
        .auto-style15 {
            width: 5px;
            text-align: center;
        }
        .auto-style18 {
            width: 83px;
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
            color: #004AAD;
            border-top-color: #CCCCCC;
            background-color: #FFFFFF;
        }
        .auto-style21 {
            text-align: left;
            height: 20px;
        }
        .auto-style22 {
            font-size: small;
            color: #072344;
        }
    </style>
    <p style="background-color: rgb(0, 74, 173)">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" />
    </p>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Administrador</title>
    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4"></div>
        <div>
            <table class="auto-style1" style="background-color: #FFFFFF; border-radius:3%">
                <tr>
                    <td class="auto-style21" colspan="4" style="border-color: #CCCCCC; background-color: #FFFFFF">
                        <asp:Label ID="lblUsuario" runat="server" CssClass="auto-style22"></asp:Label>
                    </td>
                    <td class="auto-style2" style="border-color: #CCCCCC; background-color: #FFFFFF" rowspan="5">
                        <asp:Image ID="Image3" runat="server" Height="278px" ImageUrl="~/imgs/animation_500_l5fjjsp9.gif" Width="302px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4" style="border-color: #CCCCCC; background-color: #FFFFFF">
                        <asp:Image ID="Image2" runat="server" Height="75px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="82px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="4">Administrador del Parqueadero</td>
                </tr>
                <tr>
                    <td style="background-color: #FFFFFF" class="auto-style18">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/imgs/management.png" OnClick="ImageButton1_Click" />
                        Clientes</td>
                    <td style="background-color: #FFFFFF" class="auto-style11">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/imgs/car.png" OnClick="ImageButton2_Click" />
                        Automoviles</td>
                    <td style="background-color: #FFFFFF" class="auto-style11">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/imgs/configure.png" OnClick="ImageButton3_Click" />
                        Configuracion</td>
                    <td style="background-color: #FFFFFF" class="auto-style15">
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/imgs/payment.png" OnClick="ImageButton4_Click" />
                        Facturar</td>
                </tr>
                <tr>
                    <td style="background-color: #FFFFFF" class="auto-style13" colspan="4">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style14" ForeColor="#CCCCCC" NavigateUrl="~/pags/inicio.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div class="auto-style5"></div>
    </form>
</body>
<footer>
    
        <div class="auto-style12" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
            <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
        </div>

</footer>
</html>
