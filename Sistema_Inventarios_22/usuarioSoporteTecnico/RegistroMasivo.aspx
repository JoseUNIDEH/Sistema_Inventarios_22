<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="RegistroMasivo.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.RegistroMasivo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" align="center">

        <h1 align="center"> Verifica los datos a subir</h1>
        <asp:Image ID="imgregistromasivo" runat="server" src="https://cdn-icons-png.flaticon.com/512/4409/4409421.png" With="80" Height="80" ImageAlign="Right"/>
        <br />

        <asp:GridView ID="gvequipoacargar" runat="server" AlternatingRowStyle-BackColor="#BC955B" AlternatingRowStyle-BorderColor="#691A32" AlternatingRowStyle-BorderStyle="Groove" HeaderStyle-BackColor="#691A32" HeaderStyle-BorderColor="White" HeaderStyle-BorderStyle="Groove" HeaderStyle-ForeColor="White" BorderStyle="Groove" ClientIDMode="Inherit">

        </asp:GridView><br /><br />


        <asp:Button ID="btnsubir" class="btn btn-success col-3" runat="server" Text="Guardar" OnClick="btnGuardar" OnClientClick='return confirm ("¿Confirmas que deseas ingresar la informacion?");' />
        <Button ID="btnvolver" class="btn btn-danger col-3" runat="server" onserverclick="btnVolver"> Volver</Button>

    </div>

</asp:Content>

