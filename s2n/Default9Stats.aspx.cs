using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;

public partial class Default9Stats : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void k_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into register(Date,Name,TID) values('" + name.Text + "','" + dob.Text + "','" + email.Text + "','" + mobile.Text + "','" + strpassword + "','" + Label1.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("mainpage.aspx");
    }
}