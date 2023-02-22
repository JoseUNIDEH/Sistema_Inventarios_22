using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioSoporteTecnico
{
    public partial class NuevoEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                cargarDrows();
            }
        }

        protected void cargarDrows() {
            SoporteTecnico consulta = new SoporteTecnico();

            DataTable equipos = consulta.EuiposExistentes();

            ddlnombre.DataSource = equipos;
            ddlnombre.DataTextField = "cat_nombre";
            ddlnombre.DataValueField = "cat_nombre";
            ddlnombre.DataBind();
            ddlnombre.Items.Insert(0, new ListItem("<Selecciona el equipo existente>", ""));

            DataTable categorias = consulta.CategoriasExistentes();

            ddlcategoria.DataSource = categorias;
            ddlcategoria.DataTextField = "categoria";
            ddlcategoria.DataValueField = "categoria";
            ddlcategoria.DataBind();
            ddlcategoria.Items.Insert(0, new ListItem("<Selecciona la categoria existente>", ""));

            DataTable marcas = consulta.MarcaExistentes();

            ddlmarca.DataSource = marcas;
            ddlmarca.DataTextField = "marca";
            ddlmarca.DataValueField = "marca";
            ddlmarca.DataBind();
            ddlmarca.Items.Insert(0, new ListItem("<Selecciona la marca existente>", ""));

            DataTable modelo = consulta.ModeloExistentes();

            ddlmodelo.DataSource = modelo;
            ddlmodelo.DataTextField = "modelo";
            ddlmodelo.DataValueField = "modelo";
            ddlmodelo.DataBind();
            ddlmodelo.Items.Insert(0, new ListItem("<Selecciona el modelo existente>", ""));

        }

        protected void btnAceptar(object sender, EventArgs e) {
            string categoria, nombre, marca, modelo;
            if ((tbcategoria.Text != "" || ddlcategoria.SelectedItem.Value != "") && (tbnombre.Text != "" || ddlnombre.SelectedItem.Value != "") && (tbmarca.Text != "" || ddlmarca.SelectedItem.Value != "") && (tbmodelo.Text != "" || ddlmodelo.SelectedItem.Value != "")) {
                if (tbcategoria.Text != "" && ddlcategoria.SelectedItem.Value != "")
                {
                    lberror.Text = "Solo debes poner una categoria, existente o nueva";
                    alert.Visible = true;
                }
                else {
                    if (ddlcategoria.SelectedItem.Value != "")
                    {
                        categoria = ddlcategoria.SelectedItem.Value;
                    }
                    else
                    {
                        categoria = tbcategoria.Text;
                    }
                    if (tbnombre.Text != "" && ddlnombre.SelectedItem.Value != "")
                    {
                        lberror.Text = "Solo debes poner un nombre, existente o nueva";
                        alert.Visible = true;
                    }
                    else {
                        if (ddlnombre.SelectedItem.Value != "")
                        {
                            nombre = ddlnombre.SelectedItem.Value;
                        }
                        else
                        {
                            nombre = tbnombre.Text;
                        }
                        if (tbmarca.Text != "" && ddlmarca.SelectedItem.Value != "")
                        {
                            lberror.Text = "Solo debes poner una marca, existente o nueva";
                            alert.Visible = true;
                        }
                        else {
                            if (ddlmarca.SelectedItem.Value != "")
                            {
                                marca = ddlmarca.SelectedItem.Value;
                            }
                            else
                            {
                                marca = tbmarca.Text;
                            }
                            if (tbmodelo.Text != "" && ddlmodelo.SelectedItem.Value != "")
                            {
                                lberror.Text = "Solo debes poner un modelo, existente o nueva";
                                alert.Visible = true;
                            }
                            else {
                                if (ddlmodelo.SelectedItem.Value != "")
                                {
                                    modelo = ddlmodelo.SelectedItem.Value;
                                }
                                else
                                {
                                    modelo = tbmodelo.Text;
                                }

                                SoporteTecnico nuevo = new SoporteTecnico();

                                nuevo.NuevoEquipo(nombre, categoria, marca, modelo);

                                string JavaScript = "ModalConfirmacion();";
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", JavaScript, true);

                            }
                        }
                    }
                }
            }
            else {
                lberror.Text = "Hay campos vacios";
                alert.Visible = true;
            }
        }

        public void btnCancelar(object sender, EventArgs e) {
            Response.Redirect("MenuCrearCatalogo.aspx");
        }

    }
}