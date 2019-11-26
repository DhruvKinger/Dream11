using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        }
    }

    private void Clear_Rec() { 
    
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
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strpassword = Encryptdata(TextBox3.Text);
        dream11.mainregister obj = new dream11.mainregister();
        dream11.prpregister objx = new dream11.prpregister();
        objx.email = TextBox1.Text;
        objx.username = TextBox2.Text;
        objx.pass = strpassword;
        objx.conpass = strpassword;
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

    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }


}