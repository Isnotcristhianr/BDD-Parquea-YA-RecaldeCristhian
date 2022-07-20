<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="config.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.config" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 75px;
        }
        .auto-style2 {
            width: 48%;
            margin-left: 376px;
        }

        .auto-style9 {
            margin-left: 0px;
            margin-bottom: 0px;
        }

        .auto-style11 {
            font-size: xx-small;
        }
        .auto-style12 {
            width: 274px;
        }
        .auto-style13 {
            height: 36px;
            width: 274px;
        }
        .auto-style14 {
            width: 274px;
            text-align: center;
        }
        .auto-style15 {
            width: 274px;
            text-align: center;
            color: #004AAD;
        }
        .auto-style16 {
            width: 274px;
            height: 19px;
        }

        .auto-style17 {
            width: 1394px;
            text-align: center;
        }

        .auto-style18 {
            height: 29px;
            margin-left: 538px;
            margin-top: 15px;
        }

        .auto-style19 {
            text-align: center;
            margin-left: 349px;
        }

        .auto-style20 {
            width: 274px;
            height: 35px;
        }

        </style>
    <p style="background-color: rgb(0, 74, 173)">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" />
    </p>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Configuracion</title>
    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        </div>
        <div>
            <table class="auto-style2" style="background-color: #FFFFFF; border-radius:3% ">
                <tr>
                    <td class="auto-style14">
                        <asp:Image ID="Image2" runat="server" Height="69px" ImageUrl="~/imgs/ParqueaYa  icon (1).png" Width="80px" />
                    </td>
                    <td rowspan="10">
                        <asp:Image ID="Image8" runat="server" Height="368px" ImageUrl="~/imgs/94350-gears-lottie-animation.gif" Width="394px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        Configuraciones</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/imgs/car.png" />
                        <asp:TextBox ID="txtDisponibles" runat="server" CssClass="auto-style9" MaxLength="50" Width="147px" placeholder="Disponibilidad"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/imgs/money.png" />
                        <asp:TextBox ID="txtMoney" runat="server" CssClass="auto-style9" MaxLength="50" Width="165px" placeholder="Costo/Hora"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/imgs/money (1).png" />
                        <asp:TextBox ID="txtIva" runat="server" CssClass="auto-style9" MaxLength="50" Width="165px" placeholder="IVA"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/imgs/clock.png" />
                        <asp:TextBox ID="txtHorarioInicio" runat="server" CssClass="auto-style9" MaxLength="50" Width="165px" placeholder="Hora Inicio 00:00"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/imgs/clock.png" />
                        <asp:TextBox ID="txtHorarioFin" runat="server" CssClass="auto-style9" MaxLength="50" Width="165px" placeholder="Hora Fin 00:00"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Button ID="btnConfigurar" runat="server" BackColor="#004AAD" Font-Bold="True" ForeColor="White" OnClick="btnConfigurar_Click" Text="Configurar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:HyperLink ID="hplVolver" runat="server" CssClass="auto-style11" ForeColor="#CCCCCC" NavigateUrl="~/pags/admin.aspx">← Volver</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:ImageButton ID="imgPrint" runat="server" Height="23px" ImageUrl="~/imgs/print.png" OnClick="imgPrint_Click" Width="24px" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="auto-style18">
            <asp:Button ID="btnVisualizar" runat="server" OnClick="btnVisualizar_Click" Text="Visualizar" BackColor="#006699" Font-Bold="True" ForeColor="White" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnActualizar" runat="server" BackColor="#00CC99" Font-Bold="True" ForeColor="White" OnClick="btnActualizar_Click" Text="Actualizar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEliminar" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="White" OnClick="btnEliminar_Click" Text="Eliminar" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEstado" runat="server" OnClick="btnEstado_Click" Text="Delete" />
        </div>
        <div class="auto-style19">
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
    </form>
</body>
<footer>
    
        <div class="auto-style17" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
            <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
        </div>

</footer>
</html>
