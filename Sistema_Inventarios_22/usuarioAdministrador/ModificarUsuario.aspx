<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="ModificarUsuario.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioAdministrador.ModificarUsuario" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> Completa el campo</h1>
    <asp:Image ID="imgcrearUsuario" runat="server" src="/Img/Update_user.png" With="120" Height="120" ImageAlign="left"/>
    <br />


    <div class="container" align="center">
        <div class="container" align="center">
            <div class="row jaling-items-start">
                <div class="col" runat="server" align="center">
                    <asp:Label ID="lbnumempleado" runat="server" Text="Numero de empleado"></asp:Label><br />
                    <asp:TextBox ID="tbnumeroempleado" type="text" runat="server" Class="input"></asp:TextBox>
                </div>
            </div>
         </div>

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false" >
              <strong>No se ha podido!</strong><asp:label id="lberror" runat="server"></asp:label>
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <asp:Button ID="btnmodificar" runat="server" Text="Modificar" class="btn bg-primary btn-lg" onclick="btnModificar" />
        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-lg" onclick="btnCancelar"/>


    </div>

</asp:Content>

