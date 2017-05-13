using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Company_registeration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=AKKI-PC\\SATYAMMSSQL;Initial Catalog=CIS;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into company values('" + id.Text + "','" + CompanyName.Text + "','" + RegNo.Text + "','" + Fuctionality.Text + "','" + Estable.Text + "','" + Special.Text + "','" + Noe.Text + "','" + CompAdd.Text + "','" + DdlCountry.SelectedItem + "','" + Pc.Text + "','" + DdlState.SelectedItem + "','" + Compid.Text + "','" + CompPass.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Page.RegisterStartupScript("UserMsg", "<script>alert('Thank you for Registration...')</script>");

    }
    protected void id_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(id.Text))
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from company where companyid=@companyid", con);
            cmd2.Parameters.AddWithValue("@companyid", id.Text);
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                userid.Text = "CompanyId already exist";
                userid.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                userid.Text = "New Company";
                userid.ForeColor = System.Drawing.Color.Green;
            }
            con.Close();
        }
    }
}