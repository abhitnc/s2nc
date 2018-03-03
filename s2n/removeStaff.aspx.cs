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

public partial class removeStaff : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.SearchCustomers();
        }
    }
    private void SearchCustomers()
    {

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                string sql = "SELECT * FROM staffdetail";
                if (!string.IsNullOrEmpty(searchfield.Text.Trim()))
                {
                    sql += " WHERE Name LIKE @Name + '%'";
                    cmd.Parameters.AddWithValue("@Name", searchfield.Text.Trim());
                }
                cmd.CommandText = sql;
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
    protected void Search(object sender, EventArgs e)
    {
        this.SearchCustomers();
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.SearchCustomers();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Sname.Text == null || Sname.Text == "")
        {
            valid.Visible = true;
        }
        else
        {
            valid.Visible = false;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd1 = new SqlCommand("select * from staffdetail where NAME=@NAME", con);
            cmd1.Parameters.AddWithValue("@NAME", Sname.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                con.Open();
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Uid.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label4.Visible = true;
                Uname.Visible = true;
                uphone_no.Visible = true;
                Uemail_id.Visible = true;
                Udob.Visible = true;
                Uaadhar_card.Visible = true;
                Button2.Visible = true;
                Button3.Visible = true;
                string sql = "select * from staffdetail where NAME='" + Sname.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader rdr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                rdr.Read();
                Uid.Text = rdr[0].ToString();
                Uname.Text = rdr[1].ToString();
                Udob.Text = rdr[2].ToString();
                uphone_no.Text = rdr[4].ToString();
                Uemail_id.Text = rdr[3].ToString();
                Uaadhar_card.Text = rdr[5].ToString();
                rdr.Close();
                con.Close();

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('The Name is not Present or u have entered Incomplete name')</script>");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Uid.Text);
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string sql1 = "Update staffdetail set Name='" + Uname.Text.TrimEnd() + "',Date_of_Birth='" + Udob.Text.TrimEnd() + "',Mobile_Number='" + uphone_no.Text.TrimEnd() + "',Email_Address='" + Uemail_id.Text.TrimEnd() + "',Aadhar_Card='" + Uaadhar_card.Text.TrimEnd() + "' where NAME='" + Sname.Text + "'";
        SqlCommand cmd = new SqlCommand(sql1, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Uname.Text = null;
        uphone_no.Text = null;
        Uemail_id.Text = null;
        Udob.Text = null;
        Uid.Text = null;
        Uaadhar_card.Text = null;
        this.SearchCustomers();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Uid.Text);
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string sql1 = "Delete From staffdetail Where Name='" + Sname.Text + "'";
        SqlCommand cmd = new SqlCommand(sql1, con);
        cmd.ExecuteNonQuery();
        con.Close();
        this.SearchCustomers();
    }
}