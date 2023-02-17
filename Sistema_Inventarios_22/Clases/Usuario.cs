

using System.Configuration;
using System.Data.SqlClient;
using System;

public class Usuario {
    private int numEmpleado;
    private string nombreComp;
    private string usuario;
    private string tipoUsuario;
    public int getNumEmpleado()
    {
        return numEmpleado;
    }

    public void setNumEmpleado(int numEmpleado)
    {
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

    public string ConsultarUser(int numEmpleado)
    {
        string patron = "SI22";
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            string sql = "SELECT * FROM Usuario WHERE numEmpleado =@numEmpleado";
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.Parameters.AddWithValue("@numEmpleado", numEmpleado);
            cmd.Connection.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                this.numEmpleado = int.Parse(reader["numEmpleado"].ToString());
                this.nombreComp = Convert.ToString(reader["nombreComp"]);
                this.usuario = Convert.ToString(reader["usuario"]);
                this.tipoUsuario = Convert.ToString(reader["tipoUsuario"]);

                cmd.Connection.Close();
                return "Correcto";
            }
            else
            {
                return "Usuario inexistente";
            }
        }
    }

}