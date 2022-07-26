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
        height: 67px;
        margin-left: 479px;
        margin-top: 35px;
    }
    .auto-style18 {
        height: 500px;
    }
    .auto-style19 {
        color: #004AAD;
        text-align: center;
    }
    .auto-style20 {
        margin-left: 0px;
        text-align: center;
    }
    .auto-style21 {
        margin-left: 430px;
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
                    <td class="auto-style13" rowspan="10">
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
                        <asp:TextBox ID="txtTipo" runat="server" placeholder="tipo"></asp:TextBox>
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
                <tr>
                    <td class="auto-style14">
                        <asp:ImageButton ID="imgPrint" runat="server" Height="23px" ImageUrl="~/imgs/print.png" OnClick="imgPrint_Click" Width="24px" />
                    </td>
                </tr>
                </table>
        </div>
        <div class="auto-style17">
            <asp:Button ID="btnVisualizar" runat="server" OnClick="btnVisualizar_Click" Text="Visualizar Autos" BackColor="#006699" Font-Bold="True" ForeColor="White" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnActualizar" runat="server" OnClick="btnActualizar_Click" Text="Actualizar" BackColor="#00CC99" Font-Bold="True" ForeColor="White" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEliminar" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="White" OnClick="btnEliminar_Click" Text="Eliminar" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEstado" runat="server" OnClick="btnEstado_Click" Text="Delete" />
        </div>
        <div class="auto-style20">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style21">
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
        <div class="auto-style18"></div>
    </form>
</body>
<footer>
    
        <div class="auto-style19" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
            <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
        </div>

</footer>
</html>
