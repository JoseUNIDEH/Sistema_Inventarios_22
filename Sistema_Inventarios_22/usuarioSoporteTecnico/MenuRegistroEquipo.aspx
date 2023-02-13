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
            <div class="col btn btn-outline-danger" runat="server" align="center" onclick="btnRegistro()">
                 <asp:Image ID="Imageopc1" runat="server" src="https://cdn-icons-png.flaticon.com/512/5146/5146927.png" With="180" Height="180"/><br />
                 <asp:Label ID="titleopc1" runat="server" Text="Registro de equipo"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center" onclick="btnRegistroMasivo()">
                <asp:Image ID="Imageopc2" runat="server" src="https://cdn-icons-png.flaticon.com/512/4409/4409421.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Registro masivo"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center" onclick="btnVolver()">
                <asp:Image ID="imageopc3" runat="server" src="https://upload.wikimedia.org/wikipedia/commons/c/c4/1328102001_Undo.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc3" runat="server" Text="Volver"></asp:Label>
            </div>
            <div class="col " align="center">
                
            </div>
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

