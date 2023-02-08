<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="menuRecursosMateriales.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioRecursosMateriales.menuRecursosMateriales" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> Selecciona operacion a realizar</h1><br />

    <div class="container">
        <div class="row aling-items-start">
            <div class="col btn btn-outline-danger" align="center"  >
                 <asp:Image ID="Imageopc1" runat="server" src="https://cdn-icons-png.flaticon.com/512/4365/4365924.png" With="180" Height="180"/><br />
                 <asp:Label ID="titleopc1" runat="server" Text="Consultar Resguardo"></asp:Label>
            </div>
            <div class="col btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc2" runat="server" src="https://uhecucuta.com/wp-content/uploads/2022/02/icono-consultar-examenes.png" With="180" Height="180"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Consulta de bajas"></asp:Label>
            </div>
            <div class="col " align="center">
               
            </div>
            <div class="col " align="center">
                
            </div>
        </div><br />
     
    </div>
</asp:Content>
