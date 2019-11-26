using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    }
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strng = Encryptdata(TextBox2.Text);
        string passchange = Encryptdata(TextBox3.Text);
        string conp= Encryptdata(TextBox4.Text);
        SqlDataAdapter adp = new SqlDataAdapter("select conpass from register where email='" + TextBox1.Text + "' ", con);
        DataSet dt = new DataSet();
        adp.Fill(dt);
        con.Close();
        string passwd = dt.Tables[0].Rows[0][0].ToString();
        //string OLdpassword = ds.Tables[0].Rows[0][2].ToString();

        if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        if (passwd == strng)
        {
            if (passchange == conp)
            {
                SqlCommand cmd = new SqlCommand("changepass", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 100).Value = (TextBox1.Text).ToString();
                cmd.Parameters.Add("@old", SqlDbType.VarChar, 100).Value = strng;
                cmd.Parameters.Add("@new", SqlDbType.VarChar, 100).Value = passchange;
                cmd.Parameters.Add("@con", SqlDbType.VarChar, 100).Value = conp;
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Sucessfully Updated";
                Response.Redirect("personal.aspx");
                // Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        else
        {
            Label1.Text = "Check your Old Password and Email Id";
        }

        


        
    }
}
