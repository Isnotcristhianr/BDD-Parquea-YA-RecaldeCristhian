<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autos.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.autos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
    .auto-style1 {
        width: 565px;
        margin-left: 463px;
    }
    .auto-style6 {
        text-align: center;
        width: 493px;
    }
    .auto-style11 {
        text-align: center;
        width: 493px;
        color: #004AAD;
    }
    .auto-style13 {
        width: 282px;
    }
    .auto-style14 {
        width: 493px;
    }
    .auto-style15 {
        font-size: xx-small;
    }
    .auto-style16 {
        height: 88px;
    }
    .auto-style17 {
        height: 128px;
    }
    .auto-style18 {
        height: 165px;
    }
    .auto-style19 {
        color: #004AAD;
        text-align: center;
    }
    .auto-style20 {
        margin-left: 0px;
    }
    </style>

<p style="background-color: rgb(0, 74, 173)">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" />
</p>
<head runat="server">
            <link href="../imgs/ParqueaYa  icon (1).png" rel="icon" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Automoviles</title>
    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style16"></div>
        <div>
            <table class="auto-style1" style="background-color: #FFFFFF;border-radius:3%">
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image2" runat="server" Height="62px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="73px" />
                    </td>
                    <td class="auto-style13" rowspan="9">
                        <asp:Image ID="Image8" runat="server" Height="327px" ImageUrl="~/imgs/90421-car-in-movement.gif" Width="355px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Automoviles</td>
                </tr>
                <tr>
                    <td class="auto-style14">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/imgs/identification-card.png" />
                        <asp:TextBox ID="txtCedula" runat="server" placeholder="Cedula"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/imgs/car (1).png" />
                        <asp:TextBox ID="txtMatricula" runat="server" placeholder="Matricula"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/imgs/car.png" Height="25px" Width="22px" />
                        <asp:DropDownList ID="ddlTipoAutomovil" runat="server">
                            <asp:ListItem>Tipo de Automovil</asp:ListItem>
                            <asp:ListItem>Pequeño</asp:ListItem>
                            <asp:ListItem>Mediano</asp:ListItem>
                            <asp:ListItem>Grande</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/imgs/date (1).png" />
&nbsp;<asp:TextBox ID="txtDate" runat="server" placeholder="Fecha dd/mm/aaaa"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/imgs/clock.png" />
                        <asp:TextBox ID="txtHoraIngreso" runat="server" placeholder="Hora Ingreso 00:00"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnRegistrar" runat="server" BackColor="#004AAD" Font-Bold="True" ForeColor="White" Text="Registrar" OnClick="btnRegistrar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style15" ForeColor="#CCCCCC" NavigateUrl="~/pags/admin.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
                </table>
        </div>
        <div class="auto-style17"></div>
        <div class="auto-style20">
        </div>
        <div class="auto-style18"></div>
    </form>
</body>
<footer>
    
        <div class="auto-style19" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
            <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
        </div>

</footer>
</html>
