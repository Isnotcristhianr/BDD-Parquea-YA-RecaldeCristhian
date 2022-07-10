<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio de Sesion</title>

    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 746px;
            margin-left: 399px;
            height: 288px;
        }

        .auto-style8 {
            height: 26px;
        }

        .auto-style9 {
            margin-left: 0px;
            margin-bottom: 0px;
        }

        .auto-style16 {
            height: 695px;
        }

        .auto-style18 {
            height: 26px;
            text-align: center;
            width: 382px;
        }

        .auto-style19 {
            text-align: center;
            width: 382px;
        }

        .auto-style21 {
            margin-top: 0px;
            margin-left: 0px;
        }

        .auto-style23 {
            margin-left: 0px;
        }

        .auto-style24 {
            text-align: right;
        }
        .auto-style25 {
            text-align: left;
            width: 382px;
        }
        .auto-style26 {
            font-size: xx-small;
        }
    </style>
    <div style="background-color: rgb(0, 74, 173)">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" CssClass="auto-style23" />
    </div>

</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style16">
            <asp:Panel ID="Panel1" runat="server" Height="203px">
            </asp:Panel>
            <table class="auto-style2" style="border-width: 1px; border-color: #CCCCCC; background-color: #FFFFFF;" id="tblLogin">
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image6" runat="server" Height="67px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="79px" />
                    </td>
                    <td class="auto-style24" rowspan="8">
                        <asp:Image ID="Image5" runat="server" CssClass="auto-style21" Height="288px" ImageUrl="~/imgs/ivana-cajina-WPVtT0MEM00-unsplash.jpg" Width="343px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" Text="Inicio de Sesion"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="Image3" runat="server" Height="24px" ImageUrl="~/imgs/person.png" Width="26px" />
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="Usuario"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image4" runat="server" Height="24px" ImageUrl="~/imgs/lock.png" Width="26px" />
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" MaxLength="50" Width="276px" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Button ID="btnIniciar" runat="server" OnClick="btnIniciar_Click" Text="Iniciar" BackColor="#004AAD" Font-Bold="True" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#99CCFF" NavigateUrl="~/pags/olvide.aspx">olvide la contraseña?</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#99CCFF" NavigateUrl="~/pags/registro.aspx">registrase</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:HyperLink ID="hplVolver" runat="server" CssClass="auto-style26" ForeColor="Gray" NavigateUrl="~/pags/Welcome.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>

</body>

<footer>

    <p class="auto-style8" style="background-color: #000000">
        <span style="color: rgb(255, 255, 255); font-family: arial, sans-serif-light, sans-serif; font-size: 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 200; letter-spacing: 0px; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(32, 33, 36); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: block; float: none; background-attachment: fixed; background-repeat: no-repeat; padding-top: 10px;">Copyright © Cristhian Recalde - ItsnotCristhian </span>
    </p>

</footer>



</html>