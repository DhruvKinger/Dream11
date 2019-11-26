using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using dream11;

public partial class _Default : System.Web.UI.Page
{
    ArrayList MyArray = new ArrayList();
    ArrayList Myy = new ArrayList();
    dream11.maincreate_team obj = new dream11.maincreate_team();
    dream11.prpcreate_team obj1 = new dream11.prpcreate_team();
    SqlConnection con = new SqlConnection();

    List<dream11.maincreate_team> objx = new List<dream11.maincreate_team>();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["ucod"] == null)
        //{
        //    Response.Redirect("login.aspx");

        //}
        if (GlobalVar.GlobalValue == 1)
        {

            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;

            if (!IsPostBack)
            {
                obj1.score = 0;
            }

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
      
        Response.Redirect("output.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        obj1.tname = TextBox1.Text;
        obj1.p1 = D2.SelectedValue.ToString();
        obj1.p2 = D4.SelectedValue.ToString();
        obj1.p3 = D6.SelectedValue.ToString();
        obj1.p4 = D8.SelectedValue.ToString();
        obj1.p5 = D10.SelectedValue.ToString();
        obj1.p6 = D12.SelectedValue.ToString();
        obj1.p7 = D14.SelectedValue.ToString();
        obj1.p8 = D16.SelectedValue.ToString();
        obj1.p9 = D18.SelectedValue.ToString();
        obj1.p10 = D20.SelectedValue.ToString();
        obj1.p11 = D22.SelectedValue.ToString();
        obj1.time = DateTime.Now;
        array_team();
        D23.DataSource = MyArray;
        D23.DataBind();
        D24.DataSource = MyArray;
        D24.DataBind();
        obj1.captain = D23.SelectedValue.ToString();
        obj1.vice_captain = D24.SelectedValue.ToString();
        obj1.team1 = DropDownList1.SelectedValue.ToString();
        obj1.team2 = DropDownList2.SelectedValue.ToString();

        obj.Save_Rec(obj1);
        //TextBox1.Text = String.Empty;
        //  TextBox2.Text = String.Empty;
        Label12.Text = "Make Sure (C) AND (VC) Are Diff";
    }
   
    private void array_team()
    {
        
        MyArray.Add(D2.Text);
        MyArray.Add(D4.Text);
        MyArray.Add(D6.Text);
        MyArray.Add(D8.Text);
        MyArray.Add(D10.Text);
        MyArray.Add(D12.Text);
        MyArray.Add(D14.Text);
        MyArray.Add(D16.Text);
        MyArray.Add(D18.Text);
        MyArray.Add(D20.Text);
        MyArray.Add(D22.Text);
      
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedValue.ToString();
        Label2.Text = DropDownList1.SelectedValue.ToString();
        Label3.Text = DropDownList1.SelectedValue.ToString();
        Label7.Text = DropDownList1.SelectedValue.ToString();
        Label9.Text = DropDownList1.SelectedValue.ToString();
        Label11.Text = DropDownList1.SelectedValue.ToString();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        Label4.Text = DropDownList2.SelectedValue.ToString();
        Label5.Text = DropDownList2.SelectedValue.ToString();
        Label6.Text = DropDownList2.SelectedValue.ToString();
        Label8.Text = DropDownList2.SelectedValue.ToString();
        Label10.Text = DropDownList2.SelectedValue.ToString();
    }

   
}