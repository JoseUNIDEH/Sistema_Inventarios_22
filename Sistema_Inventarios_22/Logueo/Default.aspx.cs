using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.Logueo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static Access validate;
        protected void BtnAccess_click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["typeUser"] = null;
            Session["nombreComp"] = null;

            validate = new Access();

            if (validate.ValidateUser(tbuser.Value, tbpassword.Value))
            {
                string typeUser = validate.getTypeUser();
                Session["user"] = validate.getUser();
                Session["typeUser"] = typeUser;
                Session["nombreComp"] = validate.getNameComplete();
                
                if (typeUser == "SoporteTecnico")
                {
                    Response.Redirect("../usuarioSoporteTecnico/menuSoporteTecnico.aspx");
                }
                else
                {
                    if (typeUser == "RecursosMateriales")
                    {
                        Response.Redirect("../usuarioRecursosMateriales/menuRecursosMateriales.aspx");
                    }
                    else
                    {
                        if (typeUser == "UsuarioInterno")
                        {
                            Response.Redirect("../usuarioInterno/menuUsuarioInterno.aspx");
                        }
                        else
                        {
                            if (typeUser == "Administrador")
                            {
                                Response.Redirect("../usuarioAdministrador/menuAdministrador.aspx");
                            }
                        }
                    }
                }

            }
            else { 
                lblError.Text = "El usuario o contraseña son incorrectos <br />";
            }

        }
    }
}