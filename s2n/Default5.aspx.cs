using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net;
using System.IO;
using ASPSnippets.SmsAPI;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        SMS.APIType = SMSGateway.Site2SMS;
        SMS.MashapeKey = "NXRbCZebqQmshbUdrS07iXOXjJ8Mp19InpFjsnsLuAxYc47ofj";
        SMS.Username = txtNumber.Text.Trim();
        SMS.Password = txtPassword.Text.Trim();
        if (txtRecipientNumber.Text.Trim().IndexOf(",") == -1)
        {
         SMS.SendSms(txtRecipientNumber.Text.Trim(), txtMessage.Text.Trim());
        }
        else
        {
            List<string> numbers = txtRecipientNumber.Text.Trim().Split(',').ToList();
            SMS.SendSms(numbers, txtMessage.Text.Trim());
        }
    }

}