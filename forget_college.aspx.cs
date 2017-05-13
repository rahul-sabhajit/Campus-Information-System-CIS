using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Data;

public partial class forget_college : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit1_Click(object sender, EventArgs e)
    {

        try
        {
            DataSet ds1 = new DataSet();
            using (SqlConnection con = new SqlConnection("Data Source=AKKI-PC\\SATYAMMSSQL;Initial Catalog=CIS;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT [collegeid],[collegepass] FROM college Where [CollegeMail]= '" + txtEmail1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds1);
                con.Close();
            }
            if (ds1.Tables[0].Rows.Count > 0)
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(txtEmail1.Text);
                // Recipient e-mail address.
                Msg.To.Add(txtEmail1.Text);
                Msg.Subject = "Your Password Details";
                Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your CollegeId: " + ds1.Tables[0].Rows[0]["collegeid"] + "<br/><br/>College Password: " + ds1.Tables[0].Rows[0]["collegepass"] + "<br/><br/>";
                Msg.IsBodyHtml = true;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("er.satyam.don@gmail.com", "15061994");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg = null;
                lbltxt1.Text = "Your Password Details Sent to your mail";
                // Clear the textbox valuess
                txtEmail1.Text = "";
            }
            else
            {
                lbltxt1.Text = "The Email you entered not exists.";
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }
    }
}