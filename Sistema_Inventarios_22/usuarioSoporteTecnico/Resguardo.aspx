<%@ Page Title="" Language="C#" MasterPageFile="~/Inventario.Master" AutoEventWireup="true" CodeBehind="Resguardo.aspx.cs" Inherits="Sistema_Inventarios_22.usuarioSoporteTecnico.Resguardo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .col {
            margin: 5px;
        }
    </style>
    
    <h1 align="center">LLena la información correspondiente</h1>
    <asp:Image ID="imgregistro" runat="server" src="/Img/resguardo.png" class="rounded float-start" With="80" Height="80" />
    <br />

    <div class="container" align="center">
        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center" onclick="btnResguardo()">
                <asp:Label ID="lbC5resguardante" runat="server" Text="C5i_Resguardante"></asp:Label><br />
                <asp:TextBox ID="tbc5iresguardante" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbresponsable" runat="server" Text="Responsable"></asp:Label><br />
                <asp:TextBox ID="tbresponsable" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbdireccion" runat="server" Text="Dirección"></asp:Label><br />
                <asp:TextBox ID="tbdireccion" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center">
                <asp:Label ID="lbsubdireccion" runat="server" Text="Subdirección"></asp:Label><br />
                <asp:TextBox ID="tbsubdireccion" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbubicacion" runat="server" Text="Ubicación"></asp:Label><br />
                <asp:TextBox ID="tbmodelo" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbestatus" runat="server" Text="Estatus"></asp:Label><br />
                <asp:TextBox ID="tbestatus" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>

        <div class="row jaling-items-start">
            <div class="col" runat="server" align="center">
                <asp:Label ID="lbentrego" runat="server" Text="Entregó"></asp:Label><br />
                <asp:TextBox ID="tbentrego" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbusuario" runat="server" Text="Usuario"></asp:Label><br />
                <asp:TextBox ID="tbusuario" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
            <div class="col" align="center">
                <asp:Label ID="lbfirma" runat="server" Text="Firma"></asp:Label><br />
                <asp:TextBox ID="tbfirma" type="text" runat="server" Class="input"></asp:TextBox>
            </div>
        </div>

        <div class="row jaling-items-start">
            <div class="col-8" align="center">
                <asp:Label ID="lbobservaciones" runat="server" Text="Observaciones"></asp:Label><br />
                <textarea id="tbobservaciones" runat="server" cols="75" rows="2" class="inputComent"></textarea>
            </div>
        </div>
        <br />

        <div id="alert" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert" visible="false">
            <strong>No se ha podido guardar!</strong><asp:Label ID="lberror" runat="server"></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <asp:Button ID="btnguardar" runat="server" Text="Guardar" class="btn bg-primary btn-lg" />
        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-lg" />

    </div>





</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>--%>
