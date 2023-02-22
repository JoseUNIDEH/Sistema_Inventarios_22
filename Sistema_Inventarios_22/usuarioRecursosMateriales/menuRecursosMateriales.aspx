<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="menuRecursosMateriales.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioRecursosMateriales.menuRecursosMateriales" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> Selecciona la operación a realizar</h1><br />

    <div class="container">
        <div class="row aling-items-start">
          <center>
            <div class="col-3 btn btn-outline-danger" align="center"  >
                 <asp:Image ID="Imageopc1" runat="server" src="../Img/consulta.png" alt="Consultar" With="120" Height="120"/><br />
                 <asp:Label ID="titleopc1" runat="server" Text="Consultar Resguardo"></asp:Label>
            </div>
            <div class="col-3 btn btn-outline-danger" align="center">
                <asp:Image ID="Imageopc2" runat="server" src="../Img/consulta_baja.png" alt="Consulta de baja" With="120" Height="120"/><br />
                <asp:Label ID="titleopc2" runat="server" Text="Consultar bajas de equipo"></asp:Label>
            </div>
           
            <div class="col " align="center">
                
            </div>
          </center>
        </div><br />
     
    </div>
</asp:Content>
