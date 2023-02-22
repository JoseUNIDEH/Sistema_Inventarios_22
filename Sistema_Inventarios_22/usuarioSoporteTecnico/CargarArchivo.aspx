<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="CargarArchivo.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.CargarArchivo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content" align="center">
        <h1 align="center"> Selecciona la operación a realizar</h1>
        <%--<asp:Image ID="imgregistromasivo" runat="server" src="https://cdn-icons-png.flaticon.com/512/4409/4409421.png" With="80" Height="80" ImageAlign="Right"/>--%>
        <br />
        
        <asp:Image ID="iconocargar" runat="server" src="../Img/file_xls_masiv.png" alt="Carga masiva" With="165" Height="165" ImageAlign="AbsBottom"/>
       
        <div></div>
        <asp:FileUpload id="input" runat="server" accept=".xlsx"/>
        <asp:Button ID="btnsubirarchivo" runat="server" Text="Subir" class="btn btn-success" onclick="btnSubir"/>
        <br /><br />

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false" >
          <strong>No se pudo subir el archivo! </strong><asp:label id="lberror" runat="server"></asp:label>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
       
        <Button ID="btnvolver" class="btn btn-danger" runat="server" onserverclick="btnVolver"> Volver a menú anterior</Button>

    </div>

    <script>
        function ruta() {
            var a;
            return a;
        }

    </script>

</asp:Content>
