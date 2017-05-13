using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = false; 
        GridView3.Visible = false;
        Label1.Text = "Student Summery";
        Label1.Visible = true;
        DetailsView2.Visible = false;
        DetailsView3.Visible = false;
        DetailsView1.Visible = true;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        GridView2.Visible = true;
        GridView1.Visible = false;
        GridView3.Visible = false;
        Label1.Text = "College Summery";
        Label1.Visible = true;
        DetailsView1.Visible = false;
        DetailsView3.Visible = false;
        DetailsView2.Visible = true;
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        GridView3.Visible = true;
        GridView1.Visible = false;
        GridView2.Visible = false;
        Label1.Text = "Company Summery";
        Label1.Visible = true;
        DetailsView1.Visible = false;
        DetailsView2.Visible = false;
        DetailsView3.Visible = true;
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("adminlogin.aspx");
    }
}