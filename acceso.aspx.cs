using ServiceReferenceKideg;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class acceso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Usuario"].ToString() != "Iniciar Sessión")
        {
            Session["Usuario"] = "Iniciar Sessión";
            Session["Rol"] = "";
            Session["Nombre"] = "";
            Session["strFechaLogin"] = DateTime.Now.ToString();
        }
        if (Session["Rol"].ToString() == "JUGADOR") {
            Response.Write("<script language='javascript'>alert('Acceso Denegado, solo para Administrador');</script>");
            Response.Write("<script language='javascript'>document.location.href='acceso.aspx';</script>");
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    { 
     //String []a = new String[4];
     //String[] b = new String[4];
        //Accesar o = new Accesar(Application["KidegDB"].ToString());
        ServiceReferenceKideg.KideggServiceSoapClient w = new ServiceReferenceKideg.KideggServiceSoapClient();
        Array a = w.accesoA(TextBox1.Text, TextBox2.Text);
        Array b = w.accesoJ(TextBox1.Text, TextBox2.Text);
        if (a.GetValue(3).ToString() == "true")
        {

            Session["Nombre"] = a.GetValue(0);
            Session["Usuario"] = a.GetValue(1);
            Session["Rol"] = a.GetValue(2);
            Response.Write("<script language='javascript'>alert('Bienvenido " + a.GetValue(0) + "');</script>");
            Response.Write("<script language='javascript'>document.location.href='Default2.aspx';</script>");
        }
        else if (b.GetValue(3).ToString() == "true")
        {
            Session["Nombre"] = b.GetValue(0);
            Session["Usuario"] = b.GetValue(1);
            Session["Rol"] = b.GetValue(2);
            Response.Write("<script language='javascript'>alert('Bienvenido " + b.GetValue(0) + "');</script>");
            Response.Write("<script language='javascript'>document.location.href='Default2.aspx';</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Usuario y/o Contraseña Incorrectos');</script>");
        }
    }
}