using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioAdministrador
{
    public partial class ModificarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static int modificar = 0;
        public static int iduser = 0;
        protected void btnModificar(object sender, EventArgs e)
        {
            if (tbnumeroempleado.Text != "")
            {
                iduser = int.Parse(tbnumeroempleado.Text);

                Usuario user = new Usuario();

                if (user.ConsultarUser(iduser) == "Correcto")
                {
                    modificar = 1;
                    Response.Redirect("CrearUsuario.aspx");
                }
                else
                {
                    string error = user.ConsultarUser(iduser);
                    lberror.Text = error;
                    alert.Visible = true;
                }
            }
            else {
                lberror.Text = "Debes escribir un numero de trabajador";
                alert.Visible = true;
            }
            
        }

        protected void btnCancelar(object sender, EventArgs e) {
            Response.Redirect("menuAdministrador.aspx");
        }
    }
}