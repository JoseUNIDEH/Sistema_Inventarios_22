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
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc1" runat="server" src="https://cdn-icons-png.flaticon.com/512/455/455764.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc1" runat="server" Text="Crear usuario"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc2" runat="server" src="https://cdn-icons-png.flaticon.com/512/1/1663.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Modificar usuario"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc3" runat="server" src="https://cdn-icons-png.flaticon.com/512/2150/2150535.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc3" runat="server" Text="Cancelar usuario"></asp:Label>
            </div>
            <div class="col" align="center">
                
            </div>
        </div>
    </div>
    
</asp:Content>

