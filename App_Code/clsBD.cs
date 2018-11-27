using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for clsBD
/// </summary>
public class clsBD
{
    private string cnn;
    public clsBD()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public clsBD(String c)
    {
        cnn = c;
    }

    public int insertar(String nombre, String apellidopaterno, String apellidomaterno, String edad, String genero)
    {

        string sql = "insert into niño (niñ_nombre, niñ_apellido_paterno, niñ_apellido_materno, niñ_edad, nin_genero) values ('" + nombre + "','" + apellidopaterno + "','" + apellidomaterno + "','" + edad + "','" + genero + "')";

        SqlConnection cadenaconn = new SqlConnection(cnn);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cadenaconn;
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;

        cadenaconn.Open();
        int resultado = cmd.ExecuteNonQuery();
        cadenaconn.Close();
        return resultado;
    }

    public int eliminar(String clave)
    {

        string sql = "DELETE FROM niño WHERE niñ_cve_niño = '" + clave + "'";

        SqlConnection cadenaconn = new SqlConnection(cnn);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cadenaconn;
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;

        cadenaconn.Open();
        int resultado = cmd.ExecuteNonQuery();
        cadenaconn.Close();
        return resultado;
    }

    public int actualizar(String clave, String nombre, String apellidopaterno, String apellidomaterno, String edad, String genero)
    {
        string sql = "UPDATE niño SET NIÑ_NOMBRE = '" + nombre + "' ,NIÑ_APELLIDO_PATERNO = '" + apellidopaterno + "' ,NIÑ_APELLIDO_MATERNO = '" + apellidomaterno + "' ,NIÑ_EDAD = '" + edad + "' ,NIN_GENERO = '" + genero + "' WHERE NIÑ_CVE_NIÑO = '" + clave + "'";

        SqlConnection cadenaconn = new SqlConnection(cnn);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cadenaconn;
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;

        cadenaconn.Open();
        int resultado = cmd.ExecuteNonQuery();
        cadenaconn.Close();
        return resultado;
    }
}