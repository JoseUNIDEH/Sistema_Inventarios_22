<%@ Page Title="Administrador" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="menuAdministrador.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioAdministrador.menuAdministrador1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> Selecciona la operación a realizar</h1>
    
    <div class="container">
        <div class="row aling-items-start">
          <center>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnCrearUsuario()">
                <asp:Image ID="Imageopc1" runat="server" src="/Img/user_add.png" With="120" Height="120"/><br />
                <asp:Label ID="titleopc1" runat="server" Text="Crear usuario"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnModificarUsuario()">
                <asp:Image ID="Imageopc2" runat="server" src="/Img/deactivate user.png" With="120" Height="120"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Modificar usuario"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnCancelarUsuario()">
                <asp:Image ID="Imageopc3" runat="server" src="/Img/user_eliminate.png" With="120" Height="120"/><br />
                <asp:Label ID="titleopc3" runat="server" Text="Cancelar usuario"></asp:Label>
            </div>
        </center>
        </div>
    </div>

    <script>
        function btnCrearUsuario() {
            window.location.href = "CrearUsuario.aspx";
        }

        function btnModificarUsuario() {
            window.location.href = "ModificarUsuario.aspx";
        }

        function btnCancelarUsuario() {
            window.location.href = "EliminarUsuario.aspx";
        }

    </script>
    
</asp:Content>

