<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="NuevaDireccion.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.NuevaDireccion" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" align="center">
        <h2 align="center">Completa la informacion de la nueva direccion</h2><br />

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="left">
                <asp:Label ID="lbdireccion" runat="server" Text="Direccion"></asp:Label>
                <asp:DropDownList ID="ddldireccion" runat="server"></asp:DropDownList>
                <asp:TextBox ID="tbdireccion" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>
        <div class="row jaling-items-start">
            <div class="col" runat="server" align="left">
                <asp:Label ID="lbsubdireccion" runat="server" Text="Subdireccion"></asp:Label>
                <asp:DropDownList ID="ddlsubdireccion" runat="server"></asp:DropDownList>
                <asp:TextBox ID="tbsubdireccion" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>
        <div class="row jaling-items-start">
            <div class="col" runat="server" align="left">
                <asp:Label ID="lbubicacion" runat="server" Text="Ubicacion"></asp:Label>
                <asp:DropDownList ID="ddlubicacion" runat="server"></asp:DropDownList>
                <asp:TextBox ID="tbubicacion" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div><br />

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false" >
          <strong>No se ha podido guardar!</strong><asp:label id="lberror" runat="server"></asp:label>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <asp:Button ID="btnguardar" runat="server" Text="Guardar" class="btn bg-primary btn-lg" onclick="btnGuardar"/>
        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-lg" OnClick="btnCancelar" />

    </div>

     <template id="my-template">
      <swal-title id="msjexito">
        Direccion agregada correctamente al catalogo!
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
