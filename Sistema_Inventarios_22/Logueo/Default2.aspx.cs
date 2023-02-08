using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Sistema_Inventarios_22.Logueo
{
    public partial class Loguin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static Access validate;
        protected void BtnAccess_click(object sender, EventArgs e) {

            validate = new Access(tbuser.Value, tbpassword.Value);

            if (validate.ValidateUser())
            {
                Session["user"] = validate.getUser();
                Session["typeUser"] = validate.getUser();
                string typeUser = validate.getTypeUser();

                if (typeUser == "SoporteTecnico") {
                    Response.Redirect("../usuarioSoporteTecnico/menuSoporteTecnico.aspx");
                }
                else
                {
                    if (typeUser == "RecursosMateriales") {
                        Response.Redirect("../usuarioRecursosMateriales/menuRecursosMateriales.aspx");
                    }
                    else
                    {
                        if (typeUser == "UsuarioInterno") {
                            Response.Redirect("../usuarioInterno/menuUsuarioInterno.aspx");
                        }
                        else
                        {
                            if (typeUser == "Administrador") {
                                Response.Redirect("../usuarioAdministrador/menuAdministrador.aspx");
                            }
                        }
                    }
                }

            }
            else
                lblError.Text = "El usuario o contraseña son incorrectos <br />";
            {

            }

        }
    }
}