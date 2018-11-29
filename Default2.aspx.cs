using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Usuario"].ToString() == "Iniciar Sessión" || Session["Rol"].ToString() == "JUGADOR")
        {
            Response.Write("<script language='javascript'>alert('Página no autorizada solo para administradores, cerrando sesion...')</script>");
            Response.Write("<script language='javascript'>document.location.href='acceso.aspx'</script>");
        }
        // CODIGO PARA RECUPERAR VARIABLES DEL QUERYSTRING
        // -----------------------------------------------
        if (Request["op"] == null)
        {
        }
        else
        {
            Response.Write("<script language ='javascript'>alert('" + Request["op"].ToString() + "-" + Request["emp"].ToString() + "');</script>");
            // UTILIZAR LAS VARIABLES QUE FUERON RECIBIDAS
            // POR EL QUERYSTRING
            if (Request["op"].ToString() == "1")
            {
                // CONSULTAR TABLA NIÑO FILTRANDO POR
                // LA CLAVE DEL NIÑO 
                string cadSql = "";
                cadSql = cadSql + " SELECT NIÑ_CVE_NIÑO, NIN_NOMBRE, NIÑ_APELLIDO_PATERNO, NIÑ_APELLIDO_MATERNO, NIÑ_EDAD, NIN_GENERO ";
                cadSql = cadSql + " FROM NIÑO ";
                cadSql = cadSql + " WHERE NIÑ_CVE_NIÑO =" + Request["emp"].ToString();

                SqlConnection cnnEmp = new SqlConnection(Application["KidegDB"].ToString());
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnnEmp;
                cmd.CommandText = cadSql;
                cmd.CommandType = CommandType.Text;
                cnnEmp.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                // VACIAR DATOS DEL dr A LOS TEXTBOXES... 
                TextBox1.Text = dr.GetValue(0).ToString();
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox3.Text = dr.GetValue(2).ToString();
                TextBox4.Text = dr.GetValue(3).ToString();
                TextBox5.Text = dr.GetValue(4).ToString();
                TextBox7.Text = dr.GetValue(5).ToString();
                cnnEmp.Close();
            }
        }
        // -----------------------------------------------

        Label4.Text = Application["strEmpresa"].ToString();

        GridView1.PageIndexChanging += new GridViewPageEventHandler(GridView1_PageIndexChanging);

        /*string strSQL = "";
        strSQL = strSQL + " select niñ_cve_niño, niñ_nombre, niñ_apellido_paterno, niñ_apellido_materno, niñ_edad, nin_genero ";
        strSQL = strSQL + " from niño ";



        SqlConnection cnn = new SqlConnection(Application["KidegDB"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(strSQL, cnn);
        DataSet ds = new DataSet();

        da.Fill(ds, "NIÑO");*/
        ServiceReferenceKideg.KideggServiceSoapClient ws = new ServiceReferenceKideg.KideggServiceSoapClient();
        GridView1.DataSource = ws.dsNiños();
        GridView1.DataMember = "NIÑO";
        GridView1.DataBind();
    }
    void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //clsBD inserter = new clsBD(Application["KidegDB"].ToString());
        ServiceReferenceKideg.KideggServiceSoapClient ws = new ServiceReferenceKideg.KideggServiceSoapClient();
        if (ws.insertar(TextBox2.Text.ToString(), TextBox3.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox7.Text.ToString(), "YAEL", 2) == 1)
        //if (inserter.insertar(TextBox2.Text.ToString(), TextBox3.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox7.Text.ToString()) == 1)
        {
            Response.Write("<script language='javascript'>alert('Registro de Usuario exitoso.');</script>");
            Response.Write("<script language='javascript'>document.location.href='Default2.aspx'</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Error de registro');</script>");
        }

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ServiceReferenceKideg.KideggServiceSoapClient ws = new ServiceReferenceKideg.KideggServiceSoapClient();
        //clsBD deleter = new clsBD(Application["KidegDB"].ToString());
        if (ws.eliminar(TextBox1.Text.ToString()) == 1)
        //if (deleter.eliminar(TextBox1.Text.ToString()) == 1)
        {
            Response.Write("<script language='javascript'>alert('Registro eliminado exitosamente');</script>");
            Response.Write("<script language='javascript'>document.location.href='Default2.aspx'</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Error registro no eliminado');</script>");
        }

    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        ServiceReferenceKideg.KideggServiceSoapClient ws = new ServiceReferenceKideg.KideggServiceSoapClient();
        //clsBD updater = new clsBD(Application["KidegDB"].ToString());
        if (ws.actualizar(TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox7.Text.ToString()) == 1)
        //if (updater.actualizar(TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox7.Text.ToString()) == 1)
        {
            Response.Write("<script language='javascript'>alert('Registro actualizado exitosamente');</script>");
            Response.Write("<script language='javascript'>document.location.href='Default2.aspx'</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Error registro no actualizado');</script>");
        }

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

    }
}