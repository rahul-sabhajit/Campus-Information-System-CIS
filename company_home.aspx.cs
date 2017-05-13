using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class company_home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=AKKI-PC\\SATYAMMSSQL;Initial Catalog=CIS;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        companyid.Text = Session["id3"].ToString();
       compid.Text = Session["id3"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into jobpost values('" + compid.Text + "','" + compname.Text + "','" + jobpost.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully job posted...')</script>");

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("companylogin.aspx");
      
    }
}