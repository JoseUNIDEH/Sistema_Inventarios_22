<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sistema_Inventarios_22.Logueo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1 " />
    <link href="logueoStyle.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <title>Acceso</title>
</head>
<body>
    <div>
        <nav style="background-color: #691A32;">
            <div>
                <div class="row">
                    <div class="col-2" align="center">
                        <img src="../Img/Logo.png" alt="Logo" width="300" height="100" class="d-inline-block align-text-top" />
                       <%-- <img src="../Img/Logotipo7.png" alt="Logo" width="160" height="60" class="d-inline-block align-text-top" />--%>
                    </div>
                    <div class="col-8" align="center">
                        <br />
                        <%--<h2 style="color: #DDC9A3;">Sistema de inventarios 2022</h2>--%>
                        <br />
                    </div>
                    <div class="col-2">
                    </div>
                </div>
            </div>
        </nav>

        <div class="wrapper">
            <div class="formcontent">
                <form id="formularioLogueo" runat="server">
                    <div class="form-control" style="background-color: #691A32;">
                        <div>
                            <img src="../Img/C5Invent.png" alt="Logo" width="300" height="150" class="d-inline-block align-text-top" />
                            <%--<img src="../Img/Logo.png" alt="Logo" width="230" height="50" class="d-inline-block align-text-top" />--%>
                        </div>
                        <br />
                        <div class="form-floating mb-3">
                            <input type="Text" class="form-control" id="tbuser" runat="server" placeholder="User" style="border-radius: 25px;" />
                            <label for="floatingInput">&#128100;Usuario</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="Password" class="form-control" id="tbpassword" runat="server" placeholder="Password" style="border-radius: 25px;" />
                            <label for="floatingInput">&#128274;Contraseña</label>
                        </div>
                        <hr />
                        <div class="row">
                            <asp:Label runat="server" ID="lblError" Style="color: white;"></asp:Label>
                        </div>
                        <div>
                            <asp:ImageButton ID="ibtAccess" src="../Img/BotonAcceder.png" Width="150" Height="50" runat="server" OnClick="BtnAccess_click" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>  
    <footer> 
        <section>
            <div>
                <div class="row" align="center">
                    <div class="col-sm-12">
                        <hr />
                        <h3>Centro de Control, Comando, Comunicaciones, Cómputo, Coordinación e Inteligencia C5I</h3>
                        <p>Copyright © 2023. GARUB-SOFTWARE. </p>
                    </div>
                </div>
            </div>
        </section>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
