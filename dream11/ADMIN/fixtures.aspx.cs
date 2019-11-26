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
{
    SqlConnection con = new SqlConnection();
    dream11.mainfixtures obj = new dream11.mainfixtures();
    dream11.prpfixtures obj1 = new dream11.prpfixtures();
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
        obj1.team1 = D1.Text;
        obj1.team2 = D2.Text;
        obj1.venue = D3.Text;
        obj1.date = Convert.ToDateTime(TextBox4.Text);
        obj.Save_Rec(obj1);
        TextBox4.Text = String.Empty;
        GridView1.DataBind(); 
        //        Response.Redirect("index.aspx");
    }

    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        
    //    DropDownList Dr1 = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("Dr1"));

    //    obj1.team1 = Dr1.SelectedValue;
    //    DropDownList Dr2 =((DropDownList) GridView1.Rows[e.RowIndex].FindControl("Dr2"));
    //    obj1.team2 = Dr2.SelectedValue;
    //    DropDownList Dr3 =((DropDownList) GridView1.Rows[e.RowIndex].FindControl("Dr3"));         
    //    obj1.venue =Dr3.SelectedValue;
    //    obj1.date = DateTime.Parse(((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text);
    //    obj.Update_Rec(obj1);
    //    GridView1.DataBind();
    //    GridView1.EditIndex = -1;
    //    e.Cancel=true;
    //}

    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
    //    obj.Del_rec(obj1);
    //    GridView1.DataBind();
    //    e.Cancel = true;
    //}
}