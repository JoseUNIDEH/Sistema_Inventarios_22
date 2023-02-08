<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="Sistema_Inventarios_22.Logueo.Loguin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acceso</title>
    <link href="logueoStyle.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
        <div>
            <nav class="navbar bg-body-tertiary" style="background-color: #691A32;">
              <div class="container-fluid">
                <a class="navbar-brand" href="#">
                  <img src="../Img/Logo.png" alt="Logo" width="230" height="60" class="d-inline-block align-text-top">
                </a>
              </div>
            </nav>

            <div class="wrapper">
                <div class="formcontent">
                    <form id="formularioLogueo" runat="server">
                        <div class="form-control" style="background-color: #691A32;">
                            <div>
                               <img src="../Img/Logo.png" alt="Logo" width="230" height="60" class="d-inline-block align-text-top">
                            </div><br />
                            <div class="form-floating mb-3">
                              <input type="Text" class="form-control" id="tbuser" runat="server" placeholder="User" style="border-radius: 25px;">
                              <label for="floatingInput">&#128100;Usuario</label>
                            </div>
                            <div class="form-floating mb-3">
                              <input type="Password" class="form-control" id="tbpassword" runat="server" placeholder="Password" style="border-radius: 25px;">
                              <label for="floatingInput">&#128274;Contraseña</label>
                            </div>
                            <hr />
                            <div class="row">
                                <asp:Label runat="server" CssClass="" id="lblError" style="color: white;" ></asp:Label>
                            </div>
                            <div>
                                <asp:Button ID="BtnAccess" CssClass="btn btn-success btn-lg" runat="server" Text="Acceder" onClick="BtnAccess_click"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

     
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Mi aplicación ASP.NET</p>
            </footer>
        </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
