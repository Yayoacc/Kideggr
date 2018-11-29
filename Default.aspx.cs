using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ServiceReferenceKideg.KideggServiceSoapClient ws = new ServiceReferenceKideg.KideggServiceSoapClient();
        String p = ws.insertarPuntaje(0, 1);
        String usr = ws.insertarUsuario(Number1.Value.ToString(), Text5.Value.ToString(), 2);
        if (ws.insertar(Text1.Value.ToString(), Text2.Value.ToString(), Text3.Value.ToString(), Text4.Value.ToString(), DropDownList1.SelectedValue.ToString(), usr, Convert.ToInt32(p)) == 1)
        {
            Response.Write("<script language='javascript'>alert('Registro exitoso, por favor inicie sesión');</script>");
            Response.Write("<script language='javascript'>document.location.href='acceso.aspx'</script>");
        }
        else {
            Response.Write("<script language='javascript'>alert('Registro fallido, por favor verifique');</script>");
        }
    }
}