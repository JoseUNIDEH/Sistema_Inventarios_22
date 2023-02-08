<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="MsgExito.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.MsgExito" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" align="center">

        <h1>Movimiento exitoso!</h1><br />

        <asp:Image ID="Image1" runat="server" src="https://www.ask-aladdin.com/assets/imgs/right.png" Width="400" Height="400"/>

        <asp:Button ID="btnVolvermenu" runat="server" Text="Volver a menu" class="btn btn-success" onclick="btnVolverMenu"/>
    </div>

</asp:Content>
