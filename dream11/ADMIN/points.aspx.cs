using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_point : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("point_updater", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@team",SqlDbType.VarChar, 50).Value = Dt.SelectedValue.ToString();
        cmd.Parameters.Add("@name",SqlDbType.VarChar,50).Value = D2.SelectedValue.ToString();
        cmd.Parameters.Add("@score", SqlDbType.Float).Value = T1.Text;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        D1.Text = String.Empty;
       // Dt.Text = String.Empty;
        //D2.Text = String.Empty;
        T1.Text = String.Empty;
       // Response.Redirect("index.aspx");
    }
}