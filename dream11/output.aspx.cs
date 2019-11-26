using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dream11;

public partial class output : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (GlobalVar.GlobalValue == 0)
        {
            Response.Redirect("login.aspx");
        }
    }
     

    protected void Button1_Click(object sender, EventArgs e)
    {
        GlobalVar.GlobalValue = 0;
        Response.Redirect("index.aspx");
    }
    protected void F_Click(object sender, EventArgs e)
    {
        //Response.Redirect("index.aspx");
    }
}