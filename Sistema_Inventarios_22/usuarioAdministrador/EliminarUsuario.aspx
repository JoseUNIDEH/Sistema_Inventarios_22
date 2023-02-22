<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="EliminarUsuario.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioAdministrador.EliminarUsuario" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
        .col {
            margin: 5px;
        }
    </style>
    <h1 align="center"> Completa el campo</h1>
    <asp:Image ID="imgcrearUsuario" runat="server" src="/Img/man_user_alert.png" With="120" Height="120" ImageAlign="left"/>
    <br />

    <div class="container" align="center">
        <div class="container" align="center">
            <div class="row jaling-items-start">
                <div class="col" runat="server" align="center">
                    <asp:Label ID="lbnumempleado" runat="server" Text="Número de empleado"></asp:Label><br />
                    <asp:TextBox ID="tbnumeroempleado" type="text" runat="server" Class="input"></asp:TextBox>
                </div>
            </div>

             <div class="row jaling-items-start">
                <div class="col" runat="server" align="center">
                    <asp:Label ID="lbmotivo" runat="server" Text="Motivo"></asp:Label><br />
                    <textarea id="tamotivo" cols="75" rows="2" runat="server" class="inputComent"></textarea>
                </div>

            </div>
         </div>

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false" >
              <strong>No se ha podido guardar!</strong><asp:label id="lberror" runat="server"></asp:label>
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <Button ID="btneliminar2" class="btn bg-primary btn-lg" runat="server" onClientclick="ModalPregunta();" OnServerClick="btnEliminar" >Eliminar</Button>
        <asp:Button ID="btneliminar3" runat="server" Text="Eliminar" class="btn bg-primary btn-lg" OnClick="btnEliminar" OnClientClick='ModalPregunta();'/><br /><br />
        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-lg" OnClick="btnCancelar" />

    </div>

    <template id="my-template2">
      <swal-title>
        ¿Estás seguro que deseas eliminar a este trabajador?
      </swal-title>
      <swal-icon type="question" color="red"></swal-icon>
      <swal-button type="cancel">
        Cancelar
      </swal-button>
      <swal-button type="confirm" onserverclick="btnEliminar" >
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
   
    <template id="my-template">
      <swal-title>
        Acción para el usuario exitosa!
      </swal-title>
      <swal-icon type="success" color="green"></swal-icon>
      <swal-button  type="confirm">
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

        function ModalPregunta() {
            event.preventDefault();
            Swal.fire({
                template: '#my-template2'
            }).then(resultado => { 
                if (resultado.value) {
                    alert("java");
                                                     
                } else {
                    // Dijeron que no
                    alert("no");
                }
            });
        }

        function OnSucceeded() {
            alert(':D');
        }

        function OnFailed() {
            alert(':(');
        }

        function ModalConfirmacion() {
            Swal.fire({
                template: '#my-template'
            }).then(function () {
                window.location.href = "MenuAdministrador.aspx";
            });
            
        }
    </script>

</asp:Content>
