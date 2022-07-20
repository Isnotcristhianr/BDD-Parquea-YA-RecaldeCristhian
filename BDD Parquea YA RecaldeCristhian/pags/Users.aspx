<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Usuarios</title>
    <style type="text/css">
        .auto-style2 {
            width: 746px;
            margin-left: 399px;
            height: 288px;
            margin-top: 50px;
        }

        .auto-style19 {
            text-align: center;
            width: 436px;
        }

        .auto-style24 {
            text-align: center;
            margin-left: 40px;
        }

        .auto-style28 {
            height: 26px;
            text-align: center;
            width: 436px;
            color: #004AAD;
        }

        .auto-style18 {
            height: 26px;
            text-align: center;
            width: 436px;
        }

        .auto-style9 {
            margin-left: 0px;
            margin-bottom: 0px;
        }

        .auto-style30 {
            text-align: center;
            width: 436px;
            height: 29px;
        }

        .auto-style27 {
            text-align: left;
            width: 436px;
        }

        .auto-style26 {
            font-size: xx-small;
        }

        .auto-style31 {
            margin-left: 498px;
            margin-top: 27px;
        }
        .auto-style32 {
            margin-left: 130px;
            margin-top: 29px;
        }
    </style>
    <p style="background-color: rgb(0, 74, 173)">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" />
    </p>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2" style="border-width: 1px; border-color: #CCCCCC; background-color: #FFFFFF;" id="tblLogin">
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image6" runat="server" Height="67px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="79px" />
                    </td>
                    <td class="auto-style24" rowspan="15" style="background-color: #FFFFFF">
                        <asp:Image ID="Image16" runat="server" Height="416px" ImageUrl="~/imgs/animation_500_l5u3koh5.gif" Width="403px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">Usuarios</td>
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
                    <td class="auto-style30">
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
                        &nbsp;<asp:TextBox ID="txtDate" runat="server" CssClass="auto-style9" MaxLength="50" Width="275px" placeholder="Fecha dd/mm/aaaa"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Button ID="btnRegistrarse" runat="server" OnClick="btnRegistrarse_Click" Text="Registrar" BackColor="#004AAD" Font-Bold="True" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:HyperLink ID="hplVolver0" runat="server" CssClass="auto-style26" ForeColor="Gray" NavigateUrl="~/pags/inicio.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:ImageButton ID="imgPrint" runat="server" Height="23px" ImageUrl="~/imgs/print.png" OnClick="imgPrint_Click" Width="24px" />
                    </td>
                </tr>
            </table>
            <div class="auto-style31">
                <asp:Button ID="btnVer" runat="server" BackColor="#006699" BorderStyle="Ridge" Font-Bold="True" ForeColor="White" OnClick="btnVer_Click" Text="Visualizar Clientes" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnActualizar" runat="server" BackColor="#00CC99" Font-Bold="True" ForeColor="White" OnClick="btnActualizar_Click" Text="Actualizar" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEliminar" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="White" OnClick="btnEliminar_Click" Text="Eliminar" />
                &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEstado" runat="server" OnClick="btnEstado_Click" Text="Delete" />
            </div>
            <div class="auto-style32">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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

    <div class="auto-style12" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
        <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
    </div>

</footer>
</html>
