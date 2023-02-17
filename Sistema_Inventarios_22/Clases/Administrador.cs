

using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System;

public class Administrador {
    private int numEmpleado;
    private string nombreComp;
    private string usuario;
    private string tipoUsuario;

    public Administrador() { 
    }

    public Administrador(int numEmpleado, string nombreComp, string usuario, string tipoUsuario) {
        this.numEmpleado = numEmpleado;
        this.nombreComp = nombreComp;
        this.usuario = usuario;
        this.tipoUsuario = tipoUsuario;
    }

    public int getNumEmpleado()
    {
        return numEmpleado;
    }

    public void setNumEmpleado(int numEmpleado) {
        this.numEmpleado = numEmpleado;        
    }

    public string getnombreComp()
    {
        return nombreComp;
    }

    public void setnombreComp(string nombreComp)
    {
        this.nombreComp = nombreComp;
    }

    public string getUsuario()
    {
        return usuario;
    }

    public void setUsuario(string usuario)
    {
        this.usuario = usuario;
    }

    public string getTipoUsuario()
    {
        return tipoUsuario;
    }

    public void setTipoUsuario(string tipoUsuario)
    {
        this.tipoUsuario = tipoUsuario;
    }

    public void AgregarUsuario(int numEmpleado, string nombreComp, string usuario, string contraseña, string tipoUsuario) {

        string patron = "SI22";
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("AddUser", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@numEmpleado", SqlDbType.Int).Value = numEmpleado;
            cmd.Parameters.Add("@nombreComp", SqlDbType.VarChar).Value = nombreComp;
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar).Value = usuario;
            cmd.Parameters.Add("@contraseña", SqlDbType.VarChar).Value = contraseña;
            cmd.Parameters.Add("@tipoUsuario", SqlDbType.VarChar).Value = tipoUsuario;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar).Value = patron;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }

    public void ModificarUsuario(int numEmpleado, string nombreComp, string usuario, string contraseña, string tipoUsuario, string motivo) { 
        string patron = "SI22";
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("modificarusuario", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@numEmpleado", SqlDbType.Int).Value = numEmpleado;
            cmd.Parameters.Add("@nombreComp", SqlDbType.VarChar).Value = nombreComp;
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar).Value = usuario;
            cmd.Parameters.Add("@contraseña", SqlDbType.VarChar).Value = contraseña;
            cmd.Parameters.Add("@tipoUsuario", SqlDbType.VarChar).Value = tipoUsuario;
            cmd.Parameters.Add("@motivo", SqlDbType.VarChar).Value = motivo;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar).Value = patron;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }

   
    public void EliminarUser(int numEmpleado, string motivo)
    {
        string patron = "SI22";
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("eliminarusuario", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@numEmpleado", SqlDbType.Int).Value = numEmpleado;
            cmd.Parameters.Add("@motivo", SqlDbType.VarChar).Value = motivo;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar).Value = patron;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }

}