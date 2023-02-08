using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioRecursosMateriales
{
    public partial class menuRecursosMateriales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["typeUser"].ToString() != "RecursosMateriales")
            {
                Response.Redirect("../Logueo/Default.aspx");
            }
        }
    }
}