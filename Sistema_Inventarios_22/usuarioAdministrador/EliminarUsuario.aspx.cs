using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Sistema_Inventarios_22.usuarioAdministrador
{
    public partial class EliminarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static void acepto()
        {

            MessageBox.Show("Llegue");
            EliminarUsuario cls1 = new EliminarUsuario();
            //cls1.btnEliminar();
        }

        protected void btnEliminar(object sender, EventArgs e)
        {
            if (tbnumeroempleado.Text != "")
            {
                int numEmpleado = int.Parse(tbnumeroempleado.Text);

                Usuario user = new Usuario();

                if (user.ConsultarUser(numEmpleado) == "Correcto")
                {
                    Administrador registro = new Administrador();

                    registro.EliminarUser(numEmpleado, tamotivo.Value);

                    string JavaScript = "ModalConfirmacion();";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", JavaScript, true);

                }
                else
                {
                    string error = user.ConsultarUser(numEmpleado);
                    lberror.Text = error;
                    alert.Visible = true;
                }
            }
            else {
                lberror.Text = "Debes escribir un numero de trabajador";
                alert.Visible = true;
            }
        }

        protected void btnCancelar(object sender, EventArgs e)
        {
            Response.Redirect("menuAdministrador.aspx");
        }
    }
}