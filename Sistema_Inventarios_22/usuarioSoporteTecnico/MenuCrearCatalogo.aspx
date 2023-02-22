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
            <div class="col btn btn-outline-danger" runat="server" align="center" onclick="btnDireccion()">
                 <asp:Image ID="Imageopc1" runat="server" src="https://i.pinimg.com/originals/01/a9/8b/01a98b056ed72c91be89177576dbc999.png" With="180" Height="180"/><br />
                 <asp:Label ID="titleopc1" runat="server" Text="Dirección"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center" onclick="btnEquipos()">
                <asp:Image ID="Imageopc2" runat="server" src="https://c.s-microsoft.com/es-es/CMSImages/1Surface-HMC-Questions-Component_Laptop.jpg.png?version=338e3812-04d4-5ec6-30f9-bf5f01d4dceb" With="180" Height="180"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Equipos"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center" onclick="btnPersonal()">
                <asp:Image ID="Image1" runat="server" src="https://cdn-icons-png.flaticon.com/512/72/72648.png" With="180" Height="180"/><br />
                <asp:Label ID="Label1" runat="server" Text="Personal"></asp:Label>
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

