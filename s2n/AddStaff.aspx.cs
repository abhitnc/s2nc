using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddStaff : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Abhishek\Documents\Visual Studio 2017\Projects\S2N\s2n\App_Data\Database.mdf;Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sa_submit_Click(object sender, EventArgs e)
    {
        stimestamp.Text = Convert.ToString(DateTime.Now);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into staffdetail(Name,Email_Address,Mobile_Number,Residential_Address,Date_of_Birth,Time_Of_Registration,Aadhar_Card) values('" + name.Text + "','" + email.Text + "','" + mobile.Text + "','" + address.Text + "','" + dob.Text + "','" + stimestamp.Text + "','" + aadhar.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("admin-panel.aspx");
    }
}