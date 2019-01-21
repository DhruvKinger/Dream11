using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        if (!Page.IsPostBack)
        {
            //if (Check.Checked)
            //{
            //    submit.Enabled = true;
            //}
            //else
            //{
            //    submit.Enabled = false;
            //}
        }
    }

    private void Clear_Rec()
    {
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        TextBox5.Text = String.Empty;
        TextBox6.Text = String.Empty;
        TextBox1.Focus();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Clear_Rec();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dream11.mainregister obj = new dream11.mainregister();
        dream11.prpregister objx = new dream11.prpregister();
        objx.email = TextBox1.Text;
        objx.username = TextBox2.Text;
        objx.pass = TextBox3.Text;
        objx.conpass = TextBox4.Text;
        objx.address = TextBox5.Text;
        objx.phone = Convert.ToInt64(TextBox6.Text);
        objx.usertype = "U";
         Clear_Rec();
        
        
        try
        {
            obj.Save_Rec(objx);
            Response.Redirect("login.aspx");
            
        }
        catch (Exception exp)
        {
           
        }

    }

   
}