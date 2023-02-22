<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="NuevoPersonal.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.NuevoPersonal" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"  align="center">
        <h2 align="center">Completa la información del nuevo personal</h2><br />

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="left">
                <asp:Label ID="lbpersonal" runat="server" Text="Nombre del personal"></asp:Label>
                <asp:TextBox ID="tbpersonal" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false" >
          <strong>No se ha podido guardar!</strong><asp:label id="lberror" runat="server"></asp:label>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <asp:Button ID="btnguardar" runat="server" Text="Guardar" class="btn bg-primary btn-lg" onclick="btnAceptar"/>
        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-lg" onclick="btnCancelar"/>

    </div>

    <template id="my-template">
      <swal-title id="msjexito">
        Personal agregado correctamente al catalogo!
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