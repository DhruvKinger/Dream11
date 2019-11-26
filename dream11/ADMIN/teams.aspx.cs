using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.IO;

public partial class ADMIN_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    dream11.mainteam obj = new dream11.mainteam();
    dream11.prpteam obj1 = new dream11.prpteam();
        
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
        obj1.tname = TextBox1.Text;
        obj.Save_Rec(obj1);
        Clear_Rec();
        GridView1.DataBind();
        GridView1.EditIndex = -1;
        Response.Redirect("index.aspx");
    }

   
    private void Clear_Rec()
    {
        
        TextBox1.Text = String.Empty;
        TextBox1.Focus();
    }

    

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        //obj.Del_rec(obj1);
        //GridView1.DataBind();
        e.Cancel = true;
    }


}