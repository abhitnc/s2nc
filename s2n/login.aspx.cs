using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Web.Services;
using System.Net;

public partial class login :  System.Web.UI.Page
{
    protected static string ReCaptcha_Key = "6Ld2qUUUAAAAACOx8j2grerUEnjX47WpJMyAYlJO";
    protected static string ReCaptcha_Secret = "6Ld2qUUUAAAAAGxre8GeHNJRV-S-4Ff7pFFX-0z3";

    public static string VerifyCaptcha(string response)
    {
        string url = "https://www.google.com/recaptcha/api/siteverify?secret=" + ReCaptcha_Secret + "&response=" + response;
        return (new WebClient()).DownloadString(url);
    }

protected void Page_Load(object sender, EventArgs e)
    {
        Session["id"] = null;
    }
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string strpassword = Encryptdata(password.Text);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from register where Email_Address =@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", email.Text);
        cmd.Parameters.AddWithValue("@password",strpassword);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["id"]=email.Text;
                Response.Redirect("mainpage.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
    }
}