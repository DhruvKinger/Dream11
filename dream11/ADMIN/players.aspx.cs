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
    //dream11.prpplayers obj1 = new dream11.prpplayers();
    //dream11.mainplayers obj = new dream11.mainplayers();
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //   // DataSet ds = new DataSet();
    //    //GridView1.DataSource = ds;
    //}

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    obj1.name = TextBox1.Text;
    //    obj1.category = D.Text;
    //    obj1.value = Convert.ToSingle(TextBox3.Text);
    //     obj1.team = (D2.Text);
    //    obj.Save_Rec(obj1);
    //    Clear_Rec();
    //    GridView1.DataBind();
    //    GridView1.EditIndex = -1;
    //}

    //private void Clear_Rec()
    //{
    //  //  D.Text = String.Empty;
    //    TextBox3.Text = String.Empty;
    //    D.Text = String.Empty;
    //    TextBox1.Text = String.Empty;
    //   // D2.Text = String.Empty;
    //    TextBox1.Focus();
    //}

    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{

    // //   obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
    // //  obj1.name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
    // //  obj1.category = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
    // //  obj1.value = Convert.ToSingle(((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text);
    // //   obj1.points = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text);
    // //   obj1.team = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
    // //   obj.Update_Rec(obj1);
    // //GridView1.DataBind();
    // // e.Cancel = true;
    // //GridView1.EditIndex = -1;
    // //if(GridView1.UpdateMethod)
    //   // {

    //   // }

    //}

    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    GridView1.EditIndex = -1;
    //}

    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
    //    obj.Del_rec(obj1);
    //    GridView1.DataBind();
    //    e.Cancel = true;
    //}

    //// protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    ////{
    //// GridView1.EditIndex = e.NewEditIndex;
    ////   GridView1.DataBind();
    //// }

    //protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    //{

    //}
    dream11.prpplayers obj1 = new dream11.prpplayers();
    dream11.mainplayers obj = new dream11.mainplayers();
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //   // DataSet ds = new DataSet();
    //    //GridView1.DataSource = ds;
    //}

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    obj1.name = TextBox1.Text;
    //    obj1.category = D.Text;
    //    obj1.value = Convert.ToSingle(TextBox3.Text);
    //     obj1.team = (D2.Text);
    //    obj.Save_Rec(obj1);
    //    Clear_Rec();
    //    GridView1.DataBind();
    //    GridView1.EditIndex = -1;
    //}

    private void Clear_Rec()
    {
      //D.Text = String.Empty;
        TextBox3.Text = String.Empty;
    //    D.Text = String.Empty;
        TextBox1.Text = String.Empty;
     //D2.Text = String.Empty;
        TextBox1.Focus();
    }

    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{

    // //   obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
    // //  obj1.name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
    // //  obj1.category = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
    // //  obj1.value = Convert.ToSingle(((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text);
    // //   obj1.points = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text);
    // //   obj1.team = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
    // //   obj.Update_Rec(obj1);
    // //GridView1.DataBind();
    // // e.Cancel = true;
    // //GridView1.EditIndex = -1;
    // //if(GridView1.UpdateMethod)
    //   // {

    //   // }

    //}

    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    GridView1.EditIndex = -1;
    //}

    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    obj1.id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
    //    obj.Del_rec(obj1);
    //    GridView1.DataBind();
    //    e.Cancel = true;
    //}

    //// protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    ////{
    //// GridView1.EditIndex = e.NewEditIndex;
    ////   GridView1.DataBind();
    //// }

    //protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    //{

    //}      
   
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
        obj1.name = TextBox1.Text;
          obj1.category = D.Text;
           obj1.value = Convert.ToSingle(TextBox3.Text);
            obj1.team = (D2.Text);
           obj.Save_Rec(obj1);
        Clear_Rec();
        Response.Redirect("index.aspx");
        
    }
}