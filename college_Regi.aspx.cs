using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class college_Regi : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=AKKI-PC\\SATYAMMSSQL;Initial Catalog=CIS;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into college values('" + id.Text + "','" + CollegeName.Text + "','" + CollegeAdd.Text + "','" + Country2.Text + "','" + State2.Text + "','" + Pc2.Text + "','" + CollegeRegNo.Text + "','" + Opening.Text + "','" + CollegeEid.Text + "','" + CollegePass.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Page.RegisterStartupScript("UserMsg", "<script>alert('Thank you for Registration...')</script>");

    }
    protected void id_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(id.Text))
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from college where collegeid=@collegeid", con);
            cmd2.Parameters.AddWithValue("@collegeid", id.Text);
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                userid.Text = "CollegeId already exist";
                userid.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                userid.Text = "New College";
                userid.ForeColor = System.Drawing.Color.Green;
            }
            con.Close();
        }
    }
}