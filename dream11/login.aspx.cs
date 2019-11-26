using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Text;
using dream11;

public partial class _Default : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection();

    dream11.mainregister obj = new dream11.mainregister();
    dream11.prpregister objx = new dream11.prpregister();
    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        GlobalVar.GlobalValue = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Char usertype;
        Int32 cod;
        string encryp=Encryptdata(TextBox2.Text);
        cod = obj.logincheck(TextBox1.Text, encryp, out usertype);
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        //Check(TextBox1.Text, TextBox2.Text,out usertyp); 
        if (cod == -1)
        {
            Response.Write("<h3>Wrong Username</h3>");
        }
        else if (cod == -2)
        {
            Response.Write("<h3>Wrong Password</h3>");
        }
        else
        {
            Session["ucod"] = cod;
            if (usertype == 'A')
            {
                
                Response.Redirect("ADMIN/index.aspx");
            }
            else
            {
                GlobalVar.GlobalValue += 1;
                    
                Response.Redirect("output.aspx");
            }

            
        }
    }
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
    //private string Decryptdata(string encryptpwd)
    //{
    //    string decryptpwd = string.Empty;
    //    UTF8Encoding encodepwd = new UTF8Encoding();
    //    Decoder Decode = encodepwd.GetDecoder();
    //    byte[] todecode_byte = Convert.FromBase64String(encryptpwd);
    //    int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
    //    char[] decoded_char = new char[charCount];
    //    Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
    //    decryptpwd = new String(decoded_char);
    //    return decryptpwd;
    //}

    protected void Ch_CheckedChanged(object sender, EventArgs e)
    {

    }

}