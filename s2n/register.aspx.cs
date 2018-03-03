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

public partial class register : System.Web.UI.Page
{
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void r_submit_Click(object sender, EventArgs e)
    {
            string strpassword = Encryptdata(password.Text);
            Label1.Text = Convert.ToString(DateTime.Now);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into register(Name,Date_of_Birth,Email_Address,Mobile_Number,password,Time_Of_Registration) values('" + name.Text + "','" + dob.Text + "','" + email.Text + "','" + mobile.Text + "','" + strpassword+ "','" + Label1.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("mainpage.aspx");
    
    }
}