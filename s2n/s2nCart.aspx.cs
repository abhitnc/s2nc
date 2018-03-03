using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class s2nCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("Id");
            dt.Columns.Add("Name");
            dt.Columns.Add("Price");
            dt.Columns.Add("Details");
            dt.Columns.Add("Category");
            dt.Columns.Add("fname");
            dt.Columns.Add("cost");
            dt.Columns.Add("totalcost");

            if (Request.QueryString["Id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from stock where Id=" + Request.QueryString["Id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    dr["Name"] = ds.Tables[0].Rows[0]["Name"].ToString();
                    dr["Details"] = ds.Tables[0].Rows[0]["Details"].ToString();
                    dr["Category"] = ds.Tables[0].Rows[0]["Category"].ToString();
                    dr["fname"] = ds.Tables[0].Rows[0]["fname"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    scon.Close();
                    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    var result = dt.AsEnumerable().Sum(x => Convert.ToInt32(x["Price"]));
                    GridView1.FooterRow.Cells[4].Text = result.ToString();


                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from stock where Id=" + Request.QueryString["Id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    dr["Name"] = ds.Tables[0].Rows[0]["Name"].ToString();
                    dr["Details"] = ds.Tables[0].Rows[0]["Details"].ToString();
                    dr["Category"] = ds.Tables[0].Rows[0]["Category"].ToString();
                    dr["fname"] = ds.Tables[0].Rows[0]["fname"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    scon.Close();
                    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    var result = dt.AsEnumerable().Sum(x => Convert.ToInt32(x["Price"]));
                    GridView1.FooterRow.Cells[4].Text = result.ToString();
                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
    }
}