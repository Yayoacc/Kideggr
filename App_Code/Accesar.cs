using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de acceso
/// </summary>
public class Accesar {
    private string Cc;
    public string Name;
    public string User;
    public string Rol;
    public bool login(string u, string p) {
        String Cadsql = "exec CONS_ACCESO '" + u + "', '" + p + "'";
        String Cadsql1 = "exec CONS_ACCESO1 '" + u + "', '" + p + "'";
        SqlConnection cnn = new SqlConnection(Cc);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = Cadsql;
        cmd.CommandType = CommandType.Text;
        SqlCommand cmd1 = new SqlCommand();
        cmd1.Connection = cnn;
        cmd1.CommandText = Cadsql1;
        cmd1.CommandType = CommandType.Text;
        cnn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Name = dr.GetValue(0).ToString();
            User = dr.GetValue(3).ToString();
            Rol = dr.GetValue(2).ToString();
            return true;
        }
        cnn.Close();
        cnn.Open();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {
            dr1.Read();
            Name = dr1.GetValue(0).ToString();
            User = dr1.GetValue(3).ToString();
            Rol = dr1.GetValue(2).ToString();
            return true;
        }
        else {
            Name = "[Inciar Sessión]";
            User = "[Inciar Sessión]";
            Rol = "[Inciar Sessión]";
            return false;
        }
        cnn.Close();
    }
	public Accesar(){}
    public Accesar(String c) {
        Cc = c;
    }
}