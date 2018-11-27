using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        if (Session["Usuario"].ToString() != "Iniciar Sessión")
        {
            Label1.Text = Session["Usuario"].ToString() + "  " + Session["Rol"] + "  Cerrar Sesion";
        }
        else {
            Label1.Text = "Iniciar Sesion";
        }

        if (Session["Rol"].ToString().Equals("JUGADOR") || Session["Rol"].ToString().Equals(""))
        {
            Label2.Text = "";
        }
    }
}
