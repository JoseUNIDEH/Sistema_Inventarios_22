

using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System;

public class Registro {
    private string categoria;
    private string equipo;
    private string marca;
    private string modelo;
    private string serie;
    private string inventario;
    private string estatus;
    private string anoAdquisicion;
    private string color;
    private string material;
    private string observaciones;


    public Registro() { 
    }
    public Registro(string categoria, string equipo, string marca, string modelo, string serie, string inventario, string estatus, string anoAdquisicion, string color, string material, string observaciones) { 
        this.categoria = categoria;
        this.equipo = equipo;
        this.marca = marca;
        this.modelo = modelo;
        this.serie = serie;
        this.inventario = inventario;
        this.estatus = estatus;
        this.anoAdquisicion = anoAdquisicion;
        this.color = color;
        this.material = material;
        this.observaciones = observaciones;
    }

    public void setCategoria(string categoria)
    {
        this.categoria = categoria;
    }

    public string getCategoria()
    {
        return this.categoria;
    }
    public void setEquipo(string equipo)
    {
        this.equipo = equipo;
    }

    public string getEquipo()
    {
        return this.equipo;
    }
    public void setMarca(string marca)
    {
        this.marca = marca;
    }

    public string getMarca()
    {
        return this.marca;
    }
    public void setModelo(string modelo)
    {
        this.modelo = modelo;
    }

    public string getModelo()
    {
        return this.modelo;
    }
    public void setSerie(string serie)
    {
        this.serie = serie;
    }

    public string getSerie()
    {
        return this.serie;
    }
    public void setInventario(string inventario)
    {
        this.serie = inventario;
    }

    public string getInventario()
    {
        return this.inventario;
    }
    public void setEstatus(string estatus)
    {
        this.estatus = estatus;
    }

    public string getEstatus()
    {
        return this.estatus;
    }
    public void setanoAdquisicion(string anoAdquisicion)
    {
        this.anoAdquisicion = anoAdquisicion;
    }

    public string getAnoAdquisicion()
    {
        return this.anoAdquisicion;
    }
    public void setColor(string color)
    {
        this.color = color;
    }

    public string getColor()
    {
        return this.color;
    }
    public void setMaterial(string material)
    {
        this.material = material;
    }

    public string getMaterial()
    {
        return this.material;
    }
    public void setObservaciones(string observaciones)
    {
        this.observaciones = observaciones;
    }

    public string getObservaciones()
    {
        return this.observaciones;
    }

    public void InsertarEquipo() {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("insertEquipo", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@categoria", SqlDbType.VarChar, 40).Value = this.categoria;
            cmd.Parameters.Add("@equipo", SqlDbType.VarChar, 40).Value = this.equipo;
            cmd.Parameters.Add("@marca", SqlDbType.VarChar, 40).Value = this.marca;
            cmd.Parameters.Add("@modelo", SqlDbType.VarChar, 40).Value = this.modelo;
            cmd.Parameters.Add("@serie", SqlDbType.VarChar, 25).Value = this.serie;
            cmd.Parameters.Add("@inventario", SqlDbType.VarChar, 8).Value = this.inventario;
            cmd.Parameters.Add("@estatus", SqlDbType.VarChar, 10).Value = this.estatus;
            cmd.Parameters.Add("@anoAdquisicion", SqlDbType.VarChar, 4).Value = this.anoAdquisicion;
            cmd.Parameters.Add("@color", SqlDbType.VarChar, 25).Value = this.color;
            cmd.Parameters.Add("@material", SqlDbType.VarChar, 25).Value = this.material;
            cmd.Parameters.Add("@Observaciones", SqlDbType.Text).Value = this.observaciones;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }

    public void InsercionMasiva(DataTable dtequipos) {
        for (int i = 0; i < dtequipos.Rows.Count; i++){
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("insertEquipo", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@categoria", SqlDbType.VarChar, 40).Value = dtequipos.Rows[i]["categoria"].ToString();
                cmd.Parameters.Add("@equipo", SqlDbType.VarChar, 40).Value = dtequipos.Rows[i]["equipo"].ToString();
                cmd.Parameters.Add("@marca", SqlDbType.VarChar, 40).Value = dtequipos.Rows[i]["marca"].ToString();
                cmd.Parameters.Add("@modelo", SqlDbType.VarChar, 40).Value = dtequipos.Rows[i]["modelo"].ToString();
                cmd.Parameters.Add("@serie", SqlDbType.VarChar, 25).Value = dtequipos.Rows[i]["serie"].ToString();
                cmd.Parameters.Add("@inventario", SqlDbType.VarChar, 8).Value = dtequipos.Rows[i]["inventario"].ToString();
                cmd.Parameters.Add("@estatus", SqlDbType.VarChar, 10).Value = dtequipos.Rows[i]["estatus"].ToString();
                cmd.Parameters.Add("@anoAdquisicion", SqlDbType.VarChar, 4).Value = dtequipos.Rows[i]["anoAdquisicion"].ToString();
                cmd.Parameters.Add("@color", SqlDbType.VarChar, 25).Value = dtequipos.Rows[i]["color"].ToString();
                cmd.Parameters.Add("@material", SqlDbType.VarChar, 25).Value = dtequipos.Rows[i]["material"].ToString();
                cmd.Parameters.Add("@Observaciones", SqlDbType.Text).Value = dtequipos.Rows[i]["observaciones"].ToString();
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
            }
        }

    }

}