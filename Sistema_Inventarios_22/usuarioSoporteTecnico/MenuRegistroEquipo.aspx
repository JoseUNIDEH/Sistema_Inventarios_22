<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="MenuRegistroEquipo.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.MenuRegistroEquipo" %>
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
            <div class="col-2 btn btn-outline-danger" runat="server" align="center" onclick="btnRegistro()">
                 <asp:Image ID="Imageopc1" runat="server" src="../Img/RegistroEq.png" alt="Registro cómputo" With="120" Height="120"/><br />
                 <asp:Label ID="titleopc1" runat="server" Text="Registro de equipo"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnRegistroMasivo()">
                <asp:Image ID="Imageopc2" runat="server" src="../Img/CargaMasiv.png" alt="Carga Masiva" With="120" Height="120"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Registro masivo"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnVolver()">
                <asp:Image ID="imageopc3" runat="server" src="https://upload.wikimedia.org/wikipedia/commons/c/c4/1328102001_Undo.png" With="120" Height="120"/><br />
                <asp:Label ID="titleopc3" runat="server" Text="Volver"></asp:Label>
            </div>
            <div class="col-2 " align="center">
                
            </div>
          </center>
        </div>
    </div>

    <script>
        function btnRegistro() {
            window.location.href = "FormularioRegistroEquipo.aspx";
        }

        function btnRegistroMasivo() {
            window.location.href = "CargarArchivo.aspx";
        }

        function btnVolver() {
            window.location.href = "MenuSoporteTecnico.aspx";
        }

    </script>
</asp:Content>

