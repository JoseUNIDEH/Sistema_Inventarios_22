using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioSoporteTecnico
{
    public partial class NuevaDireccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                cargarDrows();
            }
        }

        protected void cargarDrows() {
            SoporteTecnico consulta = new SoporteTecnico();

            DataTable direcciones = consulta.DireccionesExistentes();

            ddldireccion.DataSource = direcciones;
            ddldireccion.DataTextField = "cat_nombre_direccion";
            ddldireccion.DataValueField = "cat_nombre_direccion";
            ddldireccion.DataBind();
            ddldireccion.Items.Insert(0, new ListItem("<Selecciona direccion existente>", ""));

            DataTable subdirecciones = consulta.SubdireccionesExistentes();

            ddlsubdireccion.DataSource = subdirecciones;
            ddlsubdireccion.DataTextField = "Subdireccion";
            ddlsubdireccion.DataValueField = "Subdireccion";
            ddlsubdireccion.DataBind();
            ddlsubdireccion.Items.Insert(0, new ListItem("<Selecciona subdireccion existente>", ""));

            DataTable ubicaciones = consulta.UbicacionesExistentes();

            ddlubicacion.DataSource = ubicaciones;
            ddlubicacion.DataTextField = "Ubicacion";
            ddlubicacion.DataValueField = "Ubicacion";
            ddlubicacion.DataBind();
            ddlubicacion.Items.Insert(0, new ListItem("<Selecciona ubicacion existente>", ""));

        }

        protected void btnGuardar(object sender, EventArgs e) {
            string direccion, subdireccion, ubicacion;
            if ((tbdireccion.Text != "" || ddldireccion.SelectedItem.Value != "") && (tbsubdireccion.Text != "" || ddlsubdireccion.SelectedItem.Value != "") && (tbubicacion.Text != "" || ddlubicacion.SelectedItem.Value != ""))
            {
                if (tbdireccion.Text != "" && ddldireccion.SelectedItem.Value != "")
                {
                    lberror.Text = "Solo debes poner una direccion, existente o nueva";
                    alert.Visible = true;
                }
                else
                {
                    if (ddldireccion.SelectedItem.Value != "")
                    {
                        direccion = ddldireccion.SelectedItem.Value;
                    }
                    else
                    {
                        direccion = tbdireccion.Text;
                    }
                    if (tbsubdireccion.Text != "" && ddlsubdireccion.SelectedItem.Value != "")
                    {
                        lberror.Text = "Solo debes poner una subdireccion, existente o nueva";
                        alert.Visible = true;
                    }
                    else
                    {
                        if (ddlsubdireccion.SelectedItem.Value != "")
                        {
                            subdireccion = ddlsubdireccion.SelectedItem.Value;
                        }
                        else
                        {
                            subdireccion = tbsubdireccion.Text;
                        }
                        if (tbubicacion.Text != "" && ddlubicacion.SelectedItem.Value != "")
                        {
                            lberror.Text = "Solo debes poner una ubicacion, existente o nueva";
                            alert.Visible = true;
                        }
                        else
                        {
                            if (ddlubicacion.SelectedItem.Value != "")
                            {
                                ubicacion = ddlubicacion.SelectedItem.Value;
                            }
                            else
                            {
                                ubicacion = tbubicacion.Text;
                            }

                            SoporteTecnico nuevo = new SoporteTecnico();

                            nuevo.NuevoDireccion(direccion, subdireccion, ubicacion);

                            string JavaScript = "ModalConfirmacion();";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", JavaScript, true);

                        }
                    }
                }


            }
            else {
                lberror.Text = "Hay campos vacios";
                alert.Visible = true;
            }
        }

        protected void btnCancelar(object sender, EventArgs e) {
            Response.Redirect("MenuCrearCatalogo.aspx");
        }
    }
}