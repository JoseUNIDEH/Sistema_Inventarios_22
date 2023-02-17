<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioAdministrador.CrearUsuario" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> LLena la información correspondiente</h1>
    <asp:Image ID="imgcrearUsuario" runat="server" src="https://cdn-icons-png.flaticon.com/512/455/455764.png" With="80" Height="80" ImageAlign="Right"/>
    <br />

    <div class="container" align="center">
        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center">
                <asp:Label ID="lbnumempleado" runat="server" Text="Numero de empleado"></asp:Label><br />
                <asp:TextBox ID="tbnumeroempleado" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbnombre" runat="server" Text="Nombre completo"></asp:Label><br />
                <asp:TextBox ID="tbnombre" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbusuario" runat="server" Text="Usuario asignado"></asp:Label><br />
                <asp:TextBox ID="tbusuario" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center" >
                <asp:Label ID="lbcontraseña" runat="server" Text="Contraseña"></asp:Label><br />
                <asp:TextBox ID="tbcontraseña" type="password" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbconfirmacion" runat="server" Text="Confirma contraseña"></asp:Label><br />
                <asp:TextBox ID="tbconfirmacion" type="password" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:DropDownList ID="ddluser" runat="server">
                     <asp:ListItem Selected="True" Value="0"> Selecciona un tipo de usuario </asp:ListItem>
                    <asp:ListItem Value="SoporteTecnico"> Soporte Tecnico </asp:ListItem>
                    <asp:ListItem Value="RecursosMateriales"> Recursos Materiales </asp:ListItem>
                    <asp:ListItem Value="UsuarioInterno"> Usuario Interno </asp:ListItem>
                    <asp:ListItem Value="Administrador"> Administrador </asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="row jaling-items-start" >
                <div class="col" runat="server" align="center">
                    <asp:Label ID="lbmotivo" runat="server" Text="Motivo" Visible="false"></asp:Label><br />
                    <textarea id="tamotivo" cols="75" rows="2" runat="server" class="inputComent" visible="false"></textarea>
                </div>

            </div>
        </div>

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false" >
          <strong>No se ha crear usuario!</strong><asp:label id="lberror" runat="server"></asp:label>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <asp:Button ID="btnguardar" runat="server" Text="Guardar" class="btn bg-primary btn-lg" OnClick="InsertarUsuario" visible="false"/>
         <asp:Button ID="btnmodificar" runat="server" Text="Modificar" class="btn bg-primary btn-lg" OnClick="ModificaRUsurio" visible="false"/>
        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-lg" OnClick="Volver" />

    </div>

    <template id="my-template">
      <swal-title id="msjexito">
        Accion para el usuario exitosa!
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
                window.location.href = "MenuAdministrador.aspx";
            });
            
        }
    </script>

</asp:Content>
