using Sistema_Inventarios_22.usuarioSoporteTecnico;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Inventarios_22.usuarioAdministrador
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (ModificarUsuario.modificar == 1)
                {
                    btnmodificar.Visible = true;
                    lbmotivo.Visible = true;
                    tamotivo.Visible = true;

                    Usuario user = new Usuario();

                    user.ConsultarUser(ModificarUsuario.iduser);

                    tbnumeroempleado.Text = user.getNumEmpleado().ToString();
                    tbnombre.Text = user.getnombreComp();
                    tbusuario.Text = user.getUsuario();
                    ddluser.SelectedValue = user.getTipoUsuario(); 

                }
                else {
                    btnguardar.Visible = true;
                    
                }
            }
        }

        protected void InsertarUsuario(object sender, EventArgs e)
        {
            if (tbnumeroempleado.Text != "" && tbnombre.Text != "" && tbusuario.Text != "" && tbcontraseña.Text != "" && ddluser.SelectedValue != "")
            {
                Usuario validacion = new Usuario();
                string existencia = validacion.ConsultarUser(int.Parse(tbnumeroempleado.Text));
                if (existencia == "Usuario inexistente")
                {
                    if (lbcontraseña.Text != lbconfirmacion.Text)
                    {
                        Administrador user = new Administrador();

                        user.AgregarUsuario(int.Parse(tbnumeroempleado.Text), tbnombre.Text, tbusuario.Text, tbcontraseña.Text, ddluser.SelectedValue);

                        string JavaScript = "ModalConfirmacion();";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", JavaScript, true);

                    }
                    else
                    {
                        lberror.Text = "Las contraseñas no coinciden";
                        alert.Visible = true;
                    }
                }
                else {
                    lberror.Text = "El numero de empleado ya esta asignado a otro empleado";
                    alert.Visible = true;
                }
            }
            else {
                lberror.Text = "Hay campos vacios todos son necesarios";
                alert.Visible = true;
            }
        }

        protected void ModificaRUsurio(object sender, EventArgs e)
        {
            if (tbnumeroempleado.Text != "" && tbnombre.Text != "" && tbusuario.Text != "" && tbcontraseña.Text != "" && ddluser.SelectedValue != "" && tbconfirmacion.Text != "")
            {
                if (ModificarUsuario.iduser == int.Parse(tbnumeroempleado.Text))
                {
                    if (lbcontraseña.Text != lbconfirmacion.Text)
                    {
                        Administrador user = new Administrador();

                        user.ModificarUsuario(int.Parse(tbnumeroempleado.Text), tbnombre.Text, tbusuario.Text, tbcontraseña.Text, ddluser.SelectedValue, tamotivo.Value);

                        ModificarUsuario.modificar = 0;
                        ModificarUsuario.iduser = 0;
                        string JavaScript = "ModalConfirmacion();";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", JavaScript, true);
                    }
                    else
                    {
                        lberror.Text = "Las contraseñas no coinciden";
                        alert.Visible = true;
                    }

                }
                else {
                    Usuario validacion = new Usuario();
                    string existencia = validacion.ConsultarUser(int.Parse(tbnumeroempleado.Text));
                    if (existencia == "Usuario inexistente")
                    {
                        if (lbcontraseña.Text != lbconfirmacion.Text)
                        {
                            Administrador user = new Administrador();

                            user.ModificarUsuario(int.Parse(tbnumeroempleado.Text), tbnombre.Text, tbusuario.Text, tbcontraseña.Text, ddluser.SelectedValue, tamotivo.Value);

                            ModificarUsuario.modificar = 0;
                            ModificarUsuario.iduser = 0;

                            string JavaScript = "ModalConfirmacion();";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", JavaScript, true);
                        }
                        else
                        {
                            lberror.Text = "Las contraseñas no coinciden";
                            alert.Visible = true;
                        }
                    }
                    else {
                        lberror.Text = "El numero de empleado ya esta asignado a otro empleado";
                        alert.Visible = true;
                    }
                }
            }
            else
            {
                lberror.Text = "Hay campos vacios todos son necesarios";
                alert.Visible = true;
            }
        }

        protected void Volver(object sender, EventArgs e)
        {
            if (ModificarUsuario.modificar == 1)
            {
                ModificarUsuario.modificar = 0;
                ModificarUsuario.iduser = 0;
                Response.Redirect("ModificarUsuario.aspx");
            }
            else {
                Response.Redirect("menuAdministrador.aspx");
            }            
        }

    }
}