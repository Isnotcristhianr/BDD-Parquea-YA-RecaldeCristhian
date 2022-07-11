<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="BDD_Parquea_YA_RecaldeCristhian.pags.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="../imgs/ParqueaYa  icon (1).png" rel="icon" />
    <p style="background-color: rgb(0, 74, 173)">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/ParqueaYa (1500 × 50&nbsp;px).png" Height="45px" />
    </p>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Parquea Ya</title>
    <style type="text/css">
        .auto-style4 {
            position: absolute;
            z-index: 2;
            left: 539px;
            top: 189px;
            width: 448px;
            height: 131px;
        }

        .auto-style5 {
            position: absolute;
            z-index: 2;
            left: 538px;
            top: 487px;
            width: 448px;
            height: 131px;
        }

        .auto-style9 {
            width: 574px;
            margin-left: 0px;
        }

        .auto-style10 {
            height: 738px;
        }

        .auto-style11 {
            margin-left: 662px;
        }

        .auto-style12 {
            text-align: center;
        }

        </style>

    <!--CSS-->
    <link href="../assets/styles.css" rel="stylesheet" />
</head>

<body>

    <form id="form1" runat="server" class="auto-style10">
        <p class="auto-style9">
            <span class="auto-style4" style="color: rgb(0, 0, 0); font-weight: 600; font-style: normal; text-decoration: none; padding-left: 0px; font-family: 'Nirmala UI'; font-size: 50px; font-variant: normal; text-transform: none;">DESCUBRE UNA NUEVA FORMA DE GESTIONAR TUS DATOS</span>
        </p>
        <div style="width: 575px; height: 74px">
        </div>
        <p style="width: 574px">
            <span class="auto-style5" style="color: rgb(0, 0, 0); font-weight: 300; font-style: normal; text-decoration: none; padding-left: 0px; font-family: 'Nirmala UI'; font-size: 20px; font-variant: normal; text-transform: none;"><span class="JsGRdQ" style="color: rgb(255, 255, 255); font-weight: 400; font-style: normal; text-decoration: blink; display: block;">Parquea Ya es un sistema de gestión de Datos que permite a un usuario mediante un rol de administrador poder manipular y controlar un parqueadero.</span></span>
        </p>
        <div style="height: 481px; width: 572px">
        </div>
        <div>

            <asp:Button ID="btnEmpezar" runat="server" OnClick="btnEmpezar_Click" Text="Empezar" CssClass="auto-style11" BackColor="White" Font-Bold="True" ForeColor="#004AAD" Height="40px" Width="118px"/>

            <br />

        </div>
    </form>
</body>

<footer>
    
        <div class="auto-style12" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; text-transform: none; color: #FFFFFF; background-color: #000000">
            <small>&copy; 2022 <b>IsnotCrsthianr</b> - Todos los Derechos Reservados - Cristhian Recalde</small>
        </div>

</footer>

</html>
