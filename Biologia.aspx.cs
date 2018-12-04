using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Usuario"].ToString() == "Iniciar Sessión")
        {
            Response.Write("<script language='javascript'>alert('Inicie Sesión o registrese primero');</script>");
            Response.Write("<script language='javascript'>document.location.href='acceso.aspx';</script>");
        }
        ServiceReferenceKideg.KideggServiceSoapClient ws = new ServiceReferenceKideg.KideggServiceSoapClient();
        DataSet a = ws.dsJuego();
        DataSet d = new DataSet();
        DataTable tb = new DataTable();
        d.Tables.Add(tb);
        for (int i = 0; i < 25; i++)
        {
            tb.Columns.Add(" "+i, typeof(String));
        }
        int counter = 0;
        for(int h = 0; h<25; h++){
            if (a.Tables[0].Rows[h][5].ToString() == "2") {
                counter ++;
                tb.Rows.Add(a.Tables[0].Rows[h][0].ToString(), a.Tables[0].Rows[h][1].ToString(), a.Tables[0].Rows[h][2].ToString(), a.Tables[0].Rows[h][3].ToString(), a.Tables[0].Rows[h][4].ToString(), a.Tables[0].Rows[h][5].ToString(), a.Tables[0].Rows[h][6].ToString(), a.Tables[0].Rows[h][7].ToString(), a.Tables[0].Rows[h][8].ToString(), a.Tables[0].Rows[h][9].ToString(), a.Tables[0].Rows[h][10].ToString());
            }
        } 
        int j = 1;
        switch (counter) 
        { 
            case 0:
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = false;
                p4.Visible = false;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 1:
                p2.Visible = false;
                p3.Visible = false;
                p4.Visible = false;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 2:
                p3.Visible = false;
                p4.Visible = false;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 3:
                p4.Visible = false;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 4:
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 5:
                p6.Visible = false;
                p7.Visible = false;
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 6:
                p7.Visible = false;
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 7:
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 8:
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 9:
                p10.Visible = false;
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 10:
                p11.Visible = false;
                p12.Visible = false;
                break;
            case 11:
                p12.Visible = false;
                break;
        }
        for(int i = 0; i<counter; i++)
        {
            switch (j)
            {
                case 1: Product1.Src = d.Tables[0].Rows[i][2].ToString();
                    Name1.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name1.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1") 
                    {
                        rating1.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating1.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating1.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating1.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating1.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 2: Product2.Src = d.Tables[0].Rows[i][2].ToString();
                    Name2.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name2.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating2.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating2.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating2.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating2.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating2.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 3: Product3.Src = d.Tables[0].Rows[i][2].ToString();
                    Name3.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name3.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating3.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating3.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating3.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating3.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating3.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 4: Product4.Src = d.Tables[0].Rows[i][2].ToString();
                    Name4.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name4.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating4.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating4.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating4.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating4.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating4.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 5: Product5.Src = d.Tables[0].Rows[i][2].ToString();
                    Name5.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name5.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating5.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating5.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating5.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating5.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating5.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 6: Product6.Src = d.Tables[0].Rows[i][2].ToString();
                    Name6.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name6.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating6.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating6.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating6.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating6.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating6.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 7: Product7.Src = d.Tables[0].Rows[i][2].ToString();
                    Name7.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name7.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating7.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating7.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating7.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating7.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating7.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 8: Product8.Src = d.Tables[0].Rows[i][2].ToString();
                    Name8.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name8.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating8.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating8.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating8.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating8.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating8.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 9: Product9.Src = d.Tables[0].Rows[i][2].ToString();
                    Name9.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name9.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating9.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating9.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating9.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating9.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating9.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 10: Product10.Src = d.Tables[0].Rows[i][2].ToString();
                    Name10.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name10.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating1.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating10.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating10.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating10.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating10.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 11: Product11.Src = d.Tables[0].Rows[i][2].ToString();
                    Name11.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name11.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating11.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating11.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating11.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating11.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating11.Attributes["class"] = "rating rating_5";
                    }
                    break;
                case 12: Product12.Src = d.Tables[0].Rows[i][2].ToString();
                    Name12.InnerText = d.Tables[0].Rows[i][3].ToString();
                    Name12.Attributes["href"] = d.Tables[0].Rows[i][4].ToString();
                    if (d.Tables[0].Rows[i][10].ToString() == "1")
                    {
                        rating12.Attributes["class"] = "rating rating_1";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "2")
                    {
                        rating12.Attributes["class"] = "rating rating_2";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "3")
                    {
                        rating12.Attributes["class"] = "rating rating_3";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "4")
                    {
                        rating12.Attributes["class"] = "rating rating_4";
                    }
                    else if (d.Tables[0].Rows[i][10].ToString() == "5")
                    {
                        rating12.Attributes["class"] = "rating rating_5";
                    }
                    break;
            }
            j++;
        }
    }
}