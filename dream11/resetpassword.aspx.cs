using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("passreset", con);
        cmd.CommandType = CommandType.StoredProcedure;
        // cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtEmail.ToString();
        SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        
        email.Value = txtEmail.Text.Trim().ToString();
        
        cmd.Parameters.Add(email);
        DataSet ds = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
       // con.Close();
        if (ds.Tables[0].Rows.Count > 0)

        {

            MailMessage loginInfo = new MailMessage();
            loginInfo.To.Add(txtEmail.Text.ToString());

            loginInfo.From = new MailAddress("cse1785@gmail.com");

            loginInfo.Subject = "Forgot Password Information";
            loginInfo.Body = "Username: " + ds.Tables[0].Rows[0]["username"] + "<br><br>Password: " + ds.Tables[0].Rows[0]["pass"] + "<br><br>";
            loginInfo.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";

            smtp.Port = 587;
            
            smtp.EnableSsl = true;

            smtp.Credentials = new System.Net.NetworkCredential("cse1785@gmail.com", "Tilak99+");

            smtp.Send(loginInfo);

            Label1.Text = "Password is sent to you email id,you can now Login";

        }

        else

        {

            Label1.Text = "Email Address Not Registered";

        }




        //}
        //protected void SendPasswordlink(string toemail, string username, string UniqueId)
        //{

        //    MailMessage message = new MailMessage("cse1785@gmail.com", toemail);
        //    StringBuilder str = new StringBuilder();
        //    str.Append("Dear" + username + ",<br/><br/>");
        //    str.Append("please click to the following link to reset the password<br/>");
        //    str.Append("http://localhost/changepassword.aspx?uid=" + UniqueId + "<br/><br/>");
        //    message.IsBodyHtml = true;
        //    message.Body = str.ToString();
        //    message.Subject = "reset your password";
        //    SmtpClient s = new SmtpClient();
        //    s.Host = s.gmail.com;
        //    s.Credentials n= new System.Net.NetworkCredential();
        //    s.Port = 587;
        //       n.UserName = "cse1785@gmail.com";
        //    n.Password = "tilak99+";
        //    s.UseDefaultCredentials = true;
        //    s.Credentials = n;

        //}
        con.Close();
    }       

}