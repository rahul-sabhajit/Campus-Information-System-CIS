using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class College_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        collegeid.Text = Session["id2"].ToString();
    }



    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("collegelogin.aspx");
        
    }
}