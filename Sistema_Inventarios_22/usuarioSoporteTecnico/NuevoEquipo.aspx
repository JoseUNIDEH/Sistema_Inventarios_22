<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="NuevoEquipo.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.NuevoEquipo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"  align="center">
        <h2 align="center">Completa la información del nuevo equipo</h2><br />

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="left">
                <strong><asp:Label ID="lbcategoria" runat="server" Text="Categoría de equipo"></asp:Label></strong><br /> 
                <asp:Label ID="lbcateexistente" runat="server" Text="Categoría existente"></asp:Label>
                <asp:DropDownList ID="ddlcategoria" runat="server"></asp:DropDownList>
                <asp:Label ID="lbcatenuevo" runat="server" Text="Categoría nueva"></asp:Label>
                <asp:TextBox ID="tbcategoria" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>
        <div class="row jaling-items-start">
            <div class="col" runat="server" align="left">
                <strong><asp:Label ID="lbnombre" runat="server" Text="Nombre de equipo"></asp:Label></strong><br />
                <asp:Label ID="lbnombreexistente" runat="server" Text="Nombre existente"></asp:Label>
                <asp:DropDownList ID="ddlnombre" runat="server"></asp:DropDownList>
                <asp:Label ID="Lbnombrenuevo" runat="server" Text="Nombre nueva"></asp:Label>
                <asp:TextBox ID="tbnombre" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>
        <div class="row jaling-items-start">
            <div class="col" runat="server" align="left">
                <strong><asp:Label ID="lbmarca" runat="server" Text="Marca de equipo"></asp:Label></strong><br />
                <asp:Label ID="lbmarcaexistente" runat="server" Text="Marca existente"></asp:Label>
                <asp:DropDownList ID="ddlmarca" runat="server"></asp:DropDownList>
                 <asp:Label ID="lbmarcanueva" runat="server" Text="Marca nueva"></asp:Label>
                <asp:TextBox ID="tbmarca" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>
        <div class="row jaling-items-start">
            <div class="col" runat="server" align="left">
                <strong><asp:Label ID="lbmodelo" runat="server" Text="Modelo de equipo"></asp:Label></strong><br />
                <asp:Label ID="lbmodeloexistente" runat="server" Text="Modelo existente"></asp:Label>
                <asp:DropDownList ID="ddlmodelo" runat="server"></asp:DropDownList>
                <asp:Label ID="lbmodelonuevo" runat="server" Text="Modelo nueva"></asp:Label>
                <asp:TextBox ID="tbmodelo" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div><br />

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false" >
          <strong>No se ha podido guardar!</strong><asp:label id="lberror" runat="server"></asp:label>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <asp:Button ID="btnguardar" runat="server" Text="Guardar" class="btn bg-primary btn-lg" onClick="btnAceptar"/>
        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-lg" onclick="btnCancelar"/>

    </div>

    <template id="my-template">
      <swal-title id="msjexito">
        Equipo agregado correctamente al catálogo!
      </swal-title>
      <swal-icon type="success" color="green"></swal-icon>
      <swal-button id="confirm" type="confirm">
        Aceptar
      </swal-button>
      
      <swal-param name="allowEscapeKey" value="false" />
      <swal-param
        name="customClass"
        value='{ "popup": "my-popup" }' />
      <swal-function-param
        name="didOpen"
        value="popup => console.log(popup)" />
    </template>


    <script type="text/javascript">

        function ModalConfirmacion() {
            Swal.fire({
                template: '#my-template'
            }).then(function () {
                window.location.href = "MenuCrearCatalogo.aspx";
            });
            
        }
    </script>
</asp:Content>
