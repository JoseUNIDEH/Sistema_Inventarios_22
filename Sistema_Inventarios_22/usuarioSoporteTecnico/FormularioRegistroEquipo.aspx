<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="FormularioRegistroEquipo.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.FormularioRegistroEquipo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .col {
            margin: 5px;
        }
    </style>

    <h1 align="center"> LLena la información correspondiente</h1>
    <asp:Image ID="imgregistro" runat="server" src="https://cdn-icons-png.flaticon.com/512/5146/5146927.png" With="80" Height="80" ImageAlign="Right"/>
    <br />

    <div class="container" align="center">
        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center">
                <asp:Label ID="lbinventario" runat="server" Text="Inventario"></asp:Label><br />
                <asp:TextBox ID="tbinventario" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbmarca" runat="server" Text="Marca"></asp:Label><br />
                <asp:TextBox ID="tbmarca" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbestatus" runat="server" Text="Estatus"></asp:Label><br />
                <asp:TextBox ID="tbestatus" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center" >
                <asp:Label ID="lbcategoria" runat="server" Text="Categoría"></asp:Label><br />
                <asp:TextBox ID="tbcategoria" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbmodelo" runat="server" Text="Modelo"></asp:Label><br />
                <asp:TextBox ID="tbmodelo" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbaño" runat="server" Text="Año de adquisición"></asp:Label><br />
                <asp:TextBox ID="tbaño" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center">
                <asp:Label ID="lbequipo" runat="server" Text="Equipo"></asp:Label><br />
                <asp:TextBox ID="tbequipo" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbserie" runat="server" Text="Serie"></asp:Label><br />
                <asp:TextBox ID="tbserie" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbcolor" runat="server" Text="Color"></asp:Label><br />
                <asp:TextBox ID="tbcolor" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center">
                <asp:Label ID="lbmaterial" runat="server" Text="Material"></asp:Label><br />
                <asp:TextBox ID="tbmaterial" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col-8" align="center">
                <asp:Label ID="lbobservaciones" runat="server" Text="Observaciones"></asp:Label><br />
                <textarea id="tbobservaciones" runat="server" cols="75" rows="2" class="inputComent"></textarea>
            </div>
        </div><br />

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false" >
          <strong>No se ha podido guardar!</strong><asp:label id="lberror" runat="server"></asp:label>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <asp:Button ID="btnguardar" runat="server" Text="Guardar" class="btn bg-primary btn-lg" onclick="btnGuardar"/>
        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-lg" OnClick="btnVolver"/>

    </div>

</asp:Content>

