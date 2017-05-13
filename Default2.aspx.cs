using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Net.Mail;
using System.Net.Security;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void send_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=AKKI-PC\\SATYAMMSSQL;Initial Catalog=CIS;Integrated Security=True");
        con.Open();
        string str = "select * from student";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader reader;
        reader = cmd.ExecuteReader();
        ArrayList emailArray = new ArrayList();
        try
        {
            while (reader.Read())
            {
                emailArray.Add(reader["Email"]);
            }
            foreach (string email in emailArray)
            {
                const string username = "er.satyam.don@gmail.com";
                const string password = "15061994";
                SmtpClient smtpclient = new SmtpClient();
                MailMessage mail = new MailMessage();
                MailAddress fromaddress = new MailAddress("er.satyam.don@gmail.com");
                smtpclient.Host = "smtp.gmail.com";
                smtpclient.Port = 587;
                mail.From = fromaddress;
                mail.To.Add(email);
                mail.Subject = (txtsub.Text);
                mail.IsBodyHtml = true;
                mail.Body = "<html><head><title>" + HttpUtility.HtmlEncode(txtsub.Text) + "</title></head><body  style='height:600px'>" +
                "<p>Message: " + HttpUtility.HtmlEncode(txtmsg.Text) + "</p>" +
                "</body></html>";
                smtpclient.EnableSsl = true;
                smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpclient.Credentials = new System.Net.NetworkCredential(username, password);
                smtpclient.Send(mail);
                lblMessage.Visible = true;
                lblMessage.Text = "Your email was sent";

            }
            reader.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }
    }
}