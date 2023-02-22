<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="menuSoporteTecnico.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.menuSoporteTecnico" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> Selecciona la operación a realizar</h1><br />

    <div class="container">
        <div class="row jaling-items-start">
            <div class="col btn btn-outline-danger" align="center" onclick="btnRegistroEquipo()">
                 <asp:Image ID="Imageopc1" runat="server" src="https://cdn-icons-png.flaticon.com/512/5146/5146927.png" With="180" Height="180"/><br />
                 <asp:Label ID="titleopc1" runat="server" Text="Registro de equipo"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center" onclick="btnAsignarResguardo()">
                <asp:Image ID="Imageopc2" runat="server" src="https://i.pinimg.com/originals/c2/85/b2/c285b2f72496df1f4c2649bd2beb7246.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Asignar resguardo"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc3" runat="server" src="https://cdn-icons-png.flaticon.com/512/4365/4365924.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc3" runat="server" Text="Consultar resguardo"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc4" runat="server" src="https://cdn-icons-png.flaticon.com/512/667/667444.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc4" runat="server" Text="Baja de equipo"></asp:Label>
            </div>
        </div>

        <div class="row aling-items-start">
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc5" runat="server" src="https://uhecucuta.com/wp-content/uploads/2022/02/icono-consultar-examenes.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc5" runat="server" Text="Consultar bajas"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc6" runat="server" src="https://gruposeyma.com/wp-content/uploads/Servicio-de-Mantenimiento-Correctivo-Icon3-300x300.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc6" runat="server" Text="Atender mantenimiento"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center" onclick="btnCrearCatalogo()">
                <asp:Image ID="Imageopc7" runat="server" src="https://cdn-icons-png.flaticon.com/512/5353/5353364.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc7" runat="server" Text="Crear catálogo"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc8" runat="server" src="https://www.seekpng.com/png/full/426-4261981_cartas-y-facturas-icono-hoja-de-papel.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc8" runat="server" Text="Obtener reportes"></asp:Label>
            </div>
        </div>
    </div>

    <script>
        function btnRegistroEquipo() {
            window.location.href = "MenuRegistroEquipo.aspx";
        }
        function btnAsignarResguardo() {
            window.location.href = "Resguardo.aspx";
        }
        function btnCrearCatalogo() {
            window.location.href = "MenuCrearCatalogo.aspx";
        }
    </script>
</asp:Content>
