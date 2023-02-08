using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using WebGrease.Activities;

public class Access {

    private string user;
    private string password;
    private string typeUser;
    private string nameComplete;
    public Access() {

    }

    public void setUser(string user)
    {
        this.user = user;
    }

    public string getUser()
    {
        return this.user;
    }
    public void setPassword(string password){
        this.password = password;    
    }

    public string getPassword() { 
        return this.password;
    }

    public void setTypeUser(string typeUser)
    {
        this.typeUser = typeUser;
    }

    public string getTypeUser()
    {
        return this.typeUser;
    }

    public void setNameComplete(string nameComplete)
    {
        this.nameComplete = nameComplete;
    }

    public string getNameComplete()
    {
        return this.nameComplete;
    }

    public bool ValidateUser(string user, string pass)
    {
        string patron = "SI22";
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("ValidateUser", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar, 10).Value = user;
            cmd.Parameters.Add("@contraseña", SqlDbType.VarChar, 100).Value = pass;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar, 50).Value = patron;
            cmd.Connection.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Usuario valido
                this.nameComplete = Convert.ToString(dr["nombreComp"]);
                this.user = Convert.ToString(dr["usuario"]);
                this.typeUser = Convert.ToString(dr["tipoUsuario"]); 
                cmd.Connection.Close();
                return true;
            }
            else
            {
                cmd.Connection.Close();
                return false;
            }
        }
    }

    public void CloseSession() {
        this.user = "";
        this.password = "";
        this.typeUser = "";
        this.nameComplete = "";
    }


}