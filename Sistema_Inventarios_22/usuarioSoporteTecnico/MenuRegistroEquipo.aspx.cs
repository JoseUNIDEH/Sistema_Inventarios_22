using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioSoporteTecnico
{
    public partial class MenuRegistroEquipo : System.Web.UI.Page
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
    }
}