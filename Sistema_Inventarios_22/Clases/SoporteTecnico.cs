
using Sistema_Inventarios_22.usuarioSoporteTecnico;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Reflection;
using System.Text.RegularExpressions;
using System;

public class SoporteTecnico{
    private int numEmpleado;
    private string nombreComp;
    private string usuario;
    private string tipoUsuario;

    public SoporteTecnico()
    {
    }

    public SoporteTecnico(int numEmpleado, string nombreComp, string usuario, string tipoUsuario)
    {
        this.numEmpleado = numEmpleado;
        this.nombreComp = nombreComp;
        this.usuario = usuario;
        this.tipoUsuario = tipoUsuario;
    }

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

    public void NuevoDireccion(string nombre, string subdireccion, string ubicacion) {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("nuevaDireccion", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat_nombre_direccion", SqlDbType.VarChar).Value = nombre;
            cmd.Parameters.Add("@Subdireccion", SqlDbType.VarChar).Value = subdireccion;
            cmd.Parameters.Add("@Ubicacion", SqlDbType.VarChar).Value = ubicacion;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }

    public DataTable DireccionesExistentes()
    {
        using (SqlConnection cone = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {

            string sql = "SELECT cat_nombre_direccion FROM Direccion";
            SqlCommand cmd = new SqlCommand(sql, cone);
            cmd.Connection = cone;
            cone.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            cmd.Connection.Close();

            //eliminar repetidos
            DataView vista = new DataView(ds.Tables[0]);

            DataTable dt = vista.ToTable(true);  

            return dt;

        }

    }

    public DataTable SubdireccionesExistentes()
    {
        using (SqlConnection cone = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {

            string sql = "SELECT Subdireccion FROM Direccion";
            SqlCommand cmd = new SqlCommand(sql, cone);
            cmd.Connection = cone;
            cone.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            cmd.Connection.Close();

            //eliminar repetidos
            DataView vista = new DataView(ds.Tables[0]);

            DataTable dt = vista.ToTable(true);

            return dt;

        }

    }

    public DataTable UbicacionesExistentes()
    {
        using (SqlConnection cone = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {

            string sql = "SELECT Ubicacion FROM Direccion";
            SqlCommand cmd = new SqlCommand(sql, cone);
            cmd.Connection = cone;
            cone.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            cmd.Connection.Close();

            //eliminar repetidos
            DataView vista = new DataView(ds.Tables[0]);

            DataTable dt = vista.ToTable(true);

            return dt;

        }

    }

    public DataTable EuiposExistentes()
    {
        using (SqlConnection cone = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {

            string sql = "SELECT cat_nombre FROM Equipo";
            SqlCommand cmd = new SqlCommand(sql, cone);
            cmd.Connection = cone;
            cone.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            cmd.Connection.Close();

            //eliminar repetidos
            DataView vista = new DataView(ds.Tables[0]);

            DataTable dt = vista.ToTable(true);

            return dt;

        }

    }

    public DataTable CategoriasExistentes()
    {
        using (SqlConnection cone = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {

            string sql = "SELECT categoria FROM Equipo";
            SqlCommand cmd = new SqlCommand(sql, cone);
            cmd.Connection = cone;
            cone.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            cmd.Connection.Close();

            //eliminar repetidos
            DataView vista = new DataView(ds.Tables[0]);

            DataTable dt = vista.ToTable(true);

            return dt;

        }

    }

    public DataTable MarcaExistentes()
    {
        using (SqlConnection cone = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {

            string sql = "SELECT marca FROM Equipo";
            SqlCommand cmd = new SqlCommand(sql, cone);
            cmd.Connection = cone;
            cone.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            cmd.Connection.Close();

            //eliminar repetidos
            DataView vista = new DataView(ds.Tables[0]);

            DataTable dt = vista.ToTable(true);

            return dt;

        }

    }

    public DataTable ModeloExistentes()
    {
        using (SqlConnection cone = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {

            string sql = "SELECT modelo FROM Equipo";
            SqlCommand cmd = new SqlCommand(sql, cone);
            cmd.Connection = cone;
            cone.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            cmd.Connection.Close();

            //eliminar repetidos
            DataView vista = new DataView(ds.Tables[0]);

            DataTable dt = vista.ToTable(true);

            return dt;

        }

    }

    public void NuevoEquipo(string nombre, string categoria, string marca, string modelo) {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("nuevaEquipo", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat_nombre", SqlDbType.VarChar).Value = nombre;
            cmd.Parameters.Add("@categoria", SqlDbType.VarChar).Value = categoria;
            cmd.Parameters.Add("@marca", SqlDbType.VarChar).Value = marca;
            cmd.Parameters.Add("@modelo", SqlDbType.VarChar).Value = modelo;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }

    public void NuevoPersonal(string nombre) {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("nuevaPersonal", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat_nombre", SqlDbType.VarChar).Value = nombre;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }

}