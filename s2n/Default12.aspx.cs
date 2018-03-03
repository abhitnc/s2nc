using System;
using System.Data;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Default12 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        //  String Name = Convert.ToString(Session["id"]);
        String Name = "Abhishek Maurya";
        con.Open();
        string sql = "select * from register where NAME='" + Name + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader rdr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        rdr.Read();
        id.Text = rdr[0].ToString();
        name.Text = rdr[1].ToString();
        dob.Text = rdr[2].ToString();
        Subject.Text = rdr[3].ToString();
        email.Text = rdr[4].ToString();
        rdr.Close();
        con.Close();
    }
}