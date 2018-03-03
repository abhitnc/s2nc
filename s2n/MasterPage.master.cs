﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Response.Redirect("AdminLogin.Aspx");
    }
}
