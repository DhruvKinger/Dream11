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

public partial class create_team : System.Web.UI.Page
{
    ArrayList MyArray = new ArrayList();
    dream11.maincreate_team obj = new dream11.maincreate_team();
    dream11.prpcreate_team obj1 = new dream11.prpcreate_team();
    SqlConnection con = new SqlConnection();
   
    List<dream11.maincreate_team> objx = new List<dream11.maincreate_team>();
   // List<dream11.prpcreate_team> objy = new List<dream11.prpcreate_team>();

    protected void Page_Load(object sender, EventArgs e)
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
        DateTime dt = DateTime.Parse(TextBox2.Text);
        obj1.time = dt;
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;      
        
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void D23_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void Button2_Click(object sender, EventArgs e)
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
           D23.DataSource = MyArray;
           D23.DataBind();
            obj1.captain = D23.SelectedValue.ToString();
            D24.DataSource = MyArray;
            D24.DataBind();
            obj1.vice_captain = D24.SelectedValue.ToString();
        obj.Save_Rec(obj1);
        Response.Redirect("main.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("personal.aspx");
    }
}