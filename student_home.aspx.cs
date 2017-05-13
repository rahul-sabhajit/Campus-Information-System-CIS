using System.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;


public partial class student_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        student_name.Text = Session["id"].ToString();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();

        Response.Redirect("student_login.aspx");
    }
}