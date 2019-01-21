using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    dream11.mainregister obj = new dream11.mainregister();
    dream11.prpregister objx = new dream11.prpregister();
    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Char usertype;
        Int32 cod;
        cod = obj.logincheck(TextBox1.Text, TextBox2.Text, out usertype);
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        //Check(TextBox1.Text, TextBox2.Text,out usertyp); 
        if (cod == -1)
        {
            Response.Write("<h3>Wrong Username</h3>");
        }
        else if (cod == -2)
        {
            Response.Write("<h3>Wrong Password</h3>");
        }
        else
        {
            Session["ucod"] = cod;
            if (usertype == 'A')
            {
                Response.Redirect("ADMIN/index.aspx");
            }
            else
            {
                Response.Redirect("create_team.aspx");
            }

            
        }
    }

    protected void Ch_CheckedChanged(object sender, EventArgs e)
    {

    }

}