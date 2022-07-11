<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="olvide.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.olvide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Olvide la Contraseña</title>
    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 159px;
        }
        .auto-style2 {
            width: 47%;
            height: 265px;
            margin-left: 405px;
        }
        .auto-style4 {
            width: 885px;
            text-align: center;
            }
    
        .auto-style9 {
            margin-left: 0px;
            margin-bottom: 0px;
        }

        .auto-style26 {
            font-size: xx-small;
        }
        .auto-style27 {
            width: 1050px;
            text-align: center;
            height: 31px;
        }
        .auto-style28 {
            width: 1050px;
            height: 32px;
            text-align: center;
        }
        .auto-style29 {
            width: 1050px;
            height: 32px;
        }
        .auto-style30 {
            height: 267px;
        }
        .auto-style31 {
            margin-left: 1px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style32 {
            width: 1050px;
            height: 32px;
            text-align: center;
            color: #004AAD;
        }
        .auto-style33 {
            text-align: center;
        }
        </style>
    <div style="background-color: rgb(0, 74, 173)">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" CssClass="auto-style23" />
    </div>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        </div>
        <div>

            <table class="auto-style2" style="background-color: #FFFFFF;border-radius:3%">
                <tr>
                    <td class="auto-style27">
                        <asp:Image ID="Image6" runat="server" Height="67px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="79px" />
                    </td>
                    <td class="auto-style4" rowspan="7" style="background-color: #0074FD">
                        <asp:Image ID="Image16" runat="server" CssClass="auto-style31" Height="218px" ImageAlign="Bottom" ImageUrl="~/imgs/animation_640_l5fea9ve.gif" Width="229px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        Cambio de Contraseña</td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/imgs/identification-card.png" />
                        <asp:TextBox ID="txtId" runat="server" CssClass="auto-style9" MaxLength="50" Width="252px" placeholder="Cedula"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Image ID="Image4" runat="server" Height="24px" ImageUrl="~/imgs/lock.png" Width="26px" />
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style9" MaxLength="50" Width="246px" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Image ID="Image15" runat="server" Height="24px" ImageUrl="~/imgs/lock.png" Width="26px" />
                        <asp:TextBox ID="txtConfPassword" runat="server" CssClass="auto-style9" MaxLength="50" Width="246px" placeholder="Repita la Contraseña" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;&nbsp;<asp:Button ID="btnActualizar" runat="server" OnClick="btnActualizar_Click" Text="Actualizar" BackColor="#004AAD" Font-Bold="True" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">
                        <asp:HyperLink ID="hplVolver" runat="server" CssClass="auto-style26" ForeColor="Gray" NavigateUrl="~/pags/inicio.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
            </table>

        </div>
        <div class="auto-style30"></div>
    </form>
</body>

<footer>
    
        <div class="auto-style33" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
            <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
        </div>

</footer>

</html>
