﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class userFeedback : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Submit(object sender, EventArgs e)
    {
        lblContents.Text = feedback.Text;
    }
    protected void Fb_submit_Click(object sender, EventArgs e)
    {
        lblContents.Text = feedback.Text;
        timestamp.Text = Convert.ToString(DateTime.Now);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into feedback(Feedback,Time_Of_Feedback_Submission) values('" + feedback.Text + "','" + timestamp.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("mainpage.aspx");
    }
}