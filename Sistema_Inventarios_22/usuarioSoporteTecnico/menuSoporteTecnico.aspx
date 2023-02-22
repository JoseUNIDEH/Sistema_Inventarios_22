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
           <center>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnRegistroEquipo()">
                 <asp:Image ID="Image1" runat="server" src="../Img/Registro.png" alt="Registro" With="120" Height="120"/><br />
                 <asp:Label ID="titleopc1" runat="server" Text="Registro de equipo"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnAsignarResguardo()">
                <asp:Image ID="Imageopc2" runat="server" src="../Img/AsignarResguardo.png" alt="Resguardo" With="120" Height="120"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Asignar resguardo"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc3" runat="server" src="../Img/consulta.png" alt="Consultar" With="120" Height="120"/><br />
                <asp:Label ID="titleopc3" runat="server" Text="Consultar resguardo"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc4" runat="server" src="../Img/Baja_equipo.png" alt="Baja de equipo" With="120" Height="120"/><br />
                <asp:Label ID="titleopc4" runat="server" Text="Baja de equipo"></asp:Label>
            </div>
          </center>
        </div>
        <br />
        <div class="row aling-items-start">
          <center>
            <div class="col-2 btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc5" runat="server" src="../Img/consulta_baja.png" alt="Consulta de baja" With="120" Height="120"/><br />
                <asp:Label ID="titleopc5" runat="server" Text="Consultar bajas"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc6" runat="server" src="../Img/mtto.png" alt="mantenimiento" With="120" Height="120"/><br />
                <asp:Label ID="titleopc6" runat="server" Text="Atender mantenimiento"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnCrearCatalogo()">
                <asp:Image ID="Imageopc7" runat="server" src="../Img/cat.png" alt="Catálogo" With="120" Height="120"/><br />
                <asp:Label ID="titleopc7" runat="server" Text="Crear catálogo"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc8" runat="server" src="../Img/report2.png" alt="Reporte" With="120" Height="120"/><br />
                <asp:Label ID="titleopc8" runat="server" Text="Obtener reportes"></asp:Label>
            </div>
          </center>
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
