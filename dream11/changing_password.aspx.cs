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
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter adp = new SqlDataAdapter("select pass from register where pass= '"+TextBox1.Text+"' ",con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if(dt.Rows.Count>0)
        {
            if(TextBox2.Text==TextBox3.Text)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("changepass",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@old", SqlDbType.VarChar, 100).Value = (TextBox1.Text).ToString();
                cmd.Parameters.Add("@new", SqlDbType.VarChar, 100).Value = (TextBox2.Text).ToString();
                cmd.Parameters.Add("@con", SqlDbType.VarChar, 100).Value = (TextBox3.Text).ToString();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Sucessfully Updated";
                
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("personal.aspx");
            }
            else
            {
                Label1.Text = "New Password and Confirm password Must Match";
            }
        }
        else
        {
            Label1.Text = "Please Check your Old Password";
        }
    }
}