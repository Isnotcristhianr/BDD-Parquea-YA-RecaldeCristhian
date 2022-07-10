<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregar.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.agregar" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro de Usuarios
    </title>
    <!--CSS-->
        <link href="../assets/styles.css" />

    <style type="text/css">


        .auto-style23 {
            margin-left: 0px;
        }

        .auto-style16 {
            height: 738px;
        }

        .auto-style2 {
            width: 746px;
            margin-left: 399px;
            height: 288px;
        }

        .auto-style19 {
            text-align: center;
            width: 382px;
        }

        .auto-style24 {
            text-align: center;
            margin-left: 40px;
        }
    
        .auto-style18 {
            height: 26px;
            text-align: center;
            width: 382px;
        }

        .auto-style9 {
            margin-left: 0px;
            margin-bottom: 0px;
        }

        .auto-style25 {
            height: 209px;
            margin-left: 72px;
        }

        .auto-style26 {
            font-size: xx-small;
        }
        .auto-style27 {
            text-align: left;
            width: 382px;
        }

        </style>
     <div style="background-color: rgb(0, 74, 173)">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" CssClass="auto-style23" />
    </div>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div class="auto-style16">
            <asp:Panel ID="Panel1" runat="server" Height="46px">
            </asp:Panel>
            <table class="auto-style2" style="border-width: 1px; border-color: #CCCCCC; background-color: #FFFFFF;" id="tblLogin">
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image6" runat="server" Height="67px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="79px" />
                    </td>
                    <td class="auto-style24" rowspan="15" style="background-color: #808080">
                        <asp:Image ID="Image14" runat="server" Height="377px" ImageAlign="Baseline" ImageUrl="~/imgs/animation_640_l5e8416y.gif" Width="384px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        Registrarse</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="Image8" runat="server" ImageUrl="~/imgs/person.png" />
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="Nombre"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/imgs/name-card.png" />
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="Apellido"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image3" runat="server" Height="24px" ImageUrl="~/imgs/user (4).png" Width="26px" />
                        <asp:TextBox ID="txtUser" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="Usuario"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image4" runat="server" Height="24px" ImageUrl="~/imgs/lock.png" Width="26px" />
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style9" MaxLength="50" Width="276px" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image15" runat="server" Height="24px" ImageUrl="~/imgs/lock.png" Width="26px" />
                        <asp:TextBox ID="txtConfPassword" runat="server" CssClass="auto-style9" MaxLength="50" Width="276px" placeholder="Repita la Contraseña" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/imgs/location.png" />
                        <asp:TextBox ID="txtUbi" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="Direccion"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/imgs/cell.png" />
                        <asp:TextBox ID="txtTelf" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="Telefono"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/imgs/identification-card.png" />
                        <asp:TextBox ID="txtId" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="Cedula"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image12" runat="server" ImageUrl="~/imgs/email.png" />
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="e-mail"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image13" runat="server" ImageUrl="~/imgs/date.png" />
&nbsp;Fecha<br />
                        <div class="auto-style25">
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="134px" NextPrevFormat="ShortMonth" Width="262px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Button ID="btnRegistrarse" runat="server" OnClick="btnRegistrarse_Click" Text="Registrarse" BackColor="#004AAD" Font-Bold="True" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:CheckBox ID="cbxAcuerdo" runat="server" ForeColor="Gray" Text="Acepto Terminos y Condiciones" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:HyperLink ID="hplVolver" runat="server" CssClass="auto-style26" ForeColor="Gray" NavigateUrl="~/pags/inicio.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
                </table>
        </div>
        </div>
    </form>
</body>

    
<footer>

    <p class="auto-style8" style="background-color: #000000">
        <span style="color: rgb(255, 255, 255); font-family: arial, sans-serif-light, sans-serif; font-size: 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 200; letter-spacing: 0px; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(32, 33, 36); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: block; float: none; background-attachment: fixed; background-repeat: no-repeat; padding-top: 10px;">Copyright © Cristhian Recalde - ItsnotCristhian </span>
    </p>

</footer>

</html>

