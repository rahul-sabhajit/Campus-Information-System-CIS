using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;


public partial class forget_company : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit2_Click(object sender, EventArgs e)
    {

        try
        {
            DataSet ds2 = new DataSet();
            using (SqlConnection con = new SqlConnection("Data Source=AKKI-PC\\SATYAMMSSQL;Initial Catalog=CIS;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT [companyid],[companypass] FROM company Where [CompanyMail]= '" + txtEmail2.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds2);
                con.Close();
            }
            if (ds2.Tables[0].Rows.Count > 0)
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(txtEmail2.Text);
                // Recipient e-mail address.
                Msg.To.Add(txtEmail2.Text);
                Msg.Subject = "Your Password Details";
                Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your CompanyId: " + ds2.Tables[0].Rows[0]["companyid"] + "<br/><br/>Company Password: " + ds2.Tables[0].Rows[0]["companypass"] + "<br/><br/>";
                Msg.IsBodyHtml = true;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("er.satyam.don@gmail.com", "15061994");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg = null;
                lbltxt2.Text = "Your Password Details Sent to your mail";
                // Clear the textbox valuess
                txtEmail2.Text = "";
            }
            else
            {
                lbltxt2.Text = "The Email you entered not exists.";
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }
    }
   
}