using Sistema_Inventarios_22.Logueo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22
{
    public partial class Inventario : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                LoadNameUser();
            }

        }

        protected void LoadNameUser() {
            lblnameuser.Text = "&#128100; " + Session["nombreComp"];

        }

        protected void btnCloseSession_Click(object sender, EventArgs e) {

            Access validate = Default.validate;

            validate.CloseSession();

            Session["user"] = "";
            Session["typeUser"] = "";
            Session["nombreComp"] = "";

            lblnameuser.Text = "";

            Response.Redirect("../Logueo/Default.aspx");

        }
    }
}