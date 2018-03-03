using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUser.Text = Convert.ToString(Session["id"]);
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
