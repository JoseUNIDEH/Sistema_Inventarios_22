using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioInterno
{
    public partial class menuUsuarioInterno1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["typeUser"].ToString() != "UsuarioInterno")
            {
                Response.Redirect("../Logueo/Default.aspx");
            }
        }
    }
}