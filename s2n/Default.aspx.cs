using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public void SendMail()
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(txtTo.Text);

        mail.From = new MailAddress("abhitnc@gmail.com");
        mail.Subject = "Email using Gmail";
        string Body = txtmessage.Text;
        mail.Body = Body;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential
        ("abhitnc@gmail.com", "MAURYA1a@");

        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);
    }
    protected void Bttn_Send_Click(object sender, EventArgs e)
    {
        SendMail();
    }
}
