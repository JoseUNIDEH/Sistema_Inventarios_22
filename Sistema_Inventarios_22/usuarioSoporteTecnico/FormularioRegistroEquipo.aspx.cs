using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioSoporteTecnico
{
    public partial class FormularioRegistroEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombreComp"] != null)
            {
                if (Session["typeUser"].ToString() != "SoporteTecnico")
                {
                    Response.Redirect("../Logueo/Default.aspx");
                }
            }
            else
            {
                Response.Redirect("../Logueo/Default.aspx");
            }
        }

        protected void btnGuardar(object sender, EventArgs e) {
            if ((tbcategoria.Text != "") && (tbequipo.Text != "") && (tbmarca.Text != "") && (tbmodelo.Text != "") && (tbserie.Text != "") && (tbinventario.Text != "") && ((tbestatus.Text != "")))
            {
                Registro equipo = new Registro(tbcategoria.Text, tbequipo.Text, tbmarca.Text, tbmodelo.Text, tbserie.Text, tbinventario.Text, tbestatus.Text, tbaño.Text, tbcolor.Text, tbmaterial.Text, tbobservaciones.Value);

                equipo.InsertarEquipo();

                Response.Redirect("MsgExito.aspx");
            }
            else {
                lberror.Text = "Hay campos requeridos que no se llenaron";
                alert.Visible = true;
            }
        }

        protected void btnVolver(object sender, EventArgs e) {
            Response.Redirect("MenuRegistroEquipo.aspx");
        }

    }
}