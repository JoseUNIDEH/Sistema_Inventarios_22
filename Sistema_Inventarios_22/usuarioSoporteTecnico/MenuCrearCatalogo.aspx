<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="MenuCrearCatalogo.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.MenuCrearCatalogo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> Catálogos</h1><br />
    <h2 align="center"> Selecciona la operación a dar de alta</h2><br />

    <div class="container">
        <div class="row jaling-items-start">
           <center>
            <div class="col-2 btn btn-outline-danger" runat="server" align="center" onclick="btnDireccion()">
                 <asp:Image ID="Imageopc1" runat="server" src="../Img/map_contact.png" alt="Dirección" With="120" Height="120"/><br />
                 <asp:Label ID="titleopc1" runat="server" Text="Dirección"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnEquipos()">
                <asp:Image ID="Imageopc2" runat="server" src="../Img/HomeServer.png" alt="Equipos" With="120" Height="120"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Equipos"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnPersonal()">
                <asp:Image ID="Image1" runat="server" src="../Img/user_folder.png" alt="Personal" With="120" Height="120"/><br />
                <asp:Label ID="Label1" runat="server" Text="Personal"></asp:Label>
            </div>
            <div class="col-2 btn btn-outline-danger" align="center" onclick="btnVolver()">
                <asp:Image ID="imageopc3" runat="server" src="https://upload.wikimedia.org/wikipedia/commons/c/c4/1328102001_Undo.png" With="120" Height="120"/><br />
                <asp:Label ID="titleopc3" runat="server" Text="Volver"></asp:Label>
            </div>
            <div class="col " align="center">
                
            </div>
         </center>
        </div>
    </div>

    <script>
       
        function btnVolver() {
            window.location.href = "MenuSoporteTecnico.aspx";
        }
        function btnEquipos() {
            window.location.href = "NuevoEquipo.aspx";
        }
        function btnPersonal() {
            window.location.href = "NuevoPersonal.aspx";
        }
        function btnDireccion() {
            window.location.href = "NuevaDireccion.aspx";
        }

    </script>
</asp:Content>

