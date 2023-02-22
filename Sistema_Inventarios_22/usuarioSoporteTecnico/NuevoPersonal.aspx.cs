using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioSoporteTecnico
{
    public partial class NuevoPersonal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar(object sender, EventArgs e) {
            if (lbpersonal.Text != "")
            {
                SoporteTecnico nuevo = new SoporteTecnico();

                nuevo.NuevoPersonal(lbpersonal.Text);

                string JavaScript = "ModalConfirmacion();";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", JavaScript, true);

            }
            else {
                lberror.Text = "El campo esta vacio";
                alert.Visible = true;
            }
        }

        protected void btnCancelar(object sender, EventArgs e) {
            Response.Redirect("MenuCrearCatalogo.aspx");
        }

    }
}