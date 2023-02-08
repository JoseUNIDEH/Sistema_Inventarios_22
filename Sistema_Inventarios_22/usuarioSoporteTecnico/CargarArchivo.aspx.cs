using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Sistema_Inventarios_22.usuarioSoporteTecnico
{
    public partial class CargarArchivo : System.Web.UI.Page
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
        protected void btnSubir(object sender, EventArgs e)
        {
            if (input.HasFile) {
                string ext = System.IO.Path.GetExtension(input.FileName);

                if (ext == ".xlsx")
                {
                    string path = Path.Combine(Server.MapPath("../ArchivosTemporales"), Path.GetFileName(input.FileName));

                    input.SaveAs(Server.MapPath("../ArchivosTemporales/" + input.FileName));

                    string ruta = Server.MapPath("../ArchivosTemporales/" + input.FileName);

                    CrearDT(ruta, ext, "yes");
                }
                else {
                    lberror.Text = "Verifica que la extencion de tu archivo sea .xlsx";
                    alert.Visible = true;
                }                
            }
            else{
                lberror.Text = "No se ha cargado ningun archivo";
                alert.Visible = true;
            }
        }

        public static DataTable dt = new DataTable();
        public void CrearDT(string fpath, string extencion, string hdr) {
            dt.Rows.Clear();
            dt.Columns.Clear();
            dt.Reset();
            dt = new DataTable();
            string con = ConfigurationManager.ConnectionStrings["excelcon"].ConnectionString;
            con = String.Format(con, fpath, hdr);
            OleDbConnection excelcon = new OleDbConnection(con);
            excelcon.Open();
            DataTable exceldata = excelcon.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            string excelsheet = exceldata.Rows[0]["TABLE_NAME"].ToString();
            OleDbCommand selectcomand = new OleDbCommand("Select * From ["+excelsheet+"]", excelcon);
            OleDbDataAdapter da = new OleDbDataAdapter(selectcomand);
            
            da.Fill(dt);
            excelcon.Close();

            for (int i = 0; i < dt.Rows.Count; i++) {
                if (dt.Rows[i]["id_Registro"].ToString() == "") {
                    dt.Rows[i].Delete();
                }
            }

            dt.AcceptChanges();


            File.Delete(Server.MapPath("../ArchivosTemporales/" + input.FileName));

            Response.Redirect("RegistroMasivo.aspx");
            
        }

        protected void btnVolver(object sender, EventArgs e) {
            Response.Redirect("MenuRegistroEquipo.aspx");
        }

    }
}