<%@ Page Title="Usuario interno" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="menuUsuarioInterno.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioInterno.menuUsuarioInterno1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> Selecciona operacion a realizar</h1>

    <div class="container">
        <div class="row aling-items-start">
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc1" runat="server" src="https://i.pinimg.com/originals/af/79/e2/af79e2c484b54dd8236c661b9fa09022.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc1" runat="server" Text="Crear formato"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc2" runat="server" src="https://cdn-icons-png.flaticon.com/512/8006/8006669.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Seguimiento de equipo"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc3" runat="server" src="https://cdn-icons-png.flaticon.com/512/4365/4365924.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc3" runat="server" Text="Consultar resguardo"></asp:Label>
            </div>
            <div class="col" align="center">

            </div>
        </div>
    </div>
</asp:Content>
