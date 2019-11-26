using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class ADMIN_Default : System.Web.UI.Page
{ SqlConnection con = new SqlConnection();
    dream11.mainvdate obj = new dream11.mainvdate();
    dream11.prvdate obj1 = new dream11.prvdate();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if(con.State==ConnectionState.Closed)
        {
            con.Open();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        obj1.venue = TextBox1.Text;
        obj.Save_Rec(obj1);
        Clear_Rec();
        GridView1.DataBind();
       // Response.Redirect("index.aspx");
    }
    private void Clear_Rec()
    {

        TextBox1.Text = String.Empty;
        TextBox1.Focus();
    }


    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
    //    obj.Del_rec(obj1);
    //    GridView1.DataBind();
    //    e.Cancel = true;
        
    //}

    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
    //    obj1.venue = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
    //    obj.Update_Rec(obj1);
    //    GridView1.DataBind();
    //    GridView1.EditIndex = -1;
    //    e.Cancel = true;
    //}

    
}