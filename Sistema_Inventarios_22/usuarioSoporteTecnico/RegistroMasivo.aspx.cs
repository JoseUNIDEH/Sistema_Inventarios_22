using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioSoporteTecnico
{
    public partial class RegistroMasivo : System.Web.UI.Page
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
            
            if (!IsPostBack) {
                
                cargarGrid();
            }
        }

        protected void cargarGrid() {
            /*gvequipoacargar.DataSource = null;
            gvequipoacargar.Columns.Clear();
            for (int i = gvequipoacargar.Rows.Count; i > 0; i--)
            {
                gvequipoacargar.DeleteRow(i);
                gvequipoacargar.Rows[i].Visible = false;

            }*/

            DataTable dt = CargarArchivo.dt;

            gvequipoacargar.DataSource = dt;
            gvequipoacargar.DataBind();
        }


        protected void btnGuardar(object sender, EventArgs e) {
            DataTable dt = CargarArchivo.dt;

            Registro equipos = new Registro();
            equipos.InsercionMasiva(dt);

            Response.Redirect("MsgExito.aspx");

        }
            

        protected void btnVolver(object sender, EventArgs e)
        {
            Response.Redirect("CargarArchivo.aspx");
        }
    }
}