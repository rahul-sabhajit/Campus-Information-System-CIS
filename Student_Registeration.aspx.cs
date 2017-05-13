using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Student_Registeration : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=AKKI-PC\\SATYAMMSSQL;Initial Catalog=CIS;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void val(object source, ServerValidateEventArgs args)
    {

        if (Contactno.Text.Length < 10)
        {
            args.IsValid = false;
        }
    }


    protected void TextBox20_TextChanged(object sender, EventArgs e)
    {

    }




    protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList16.Text == "Percentage")
        {
            Label24.Visible = true;
            Label24.Text = "Enter Percentage";
            Hcp.Visible = true;
        }
        else
        {
            Label24.Visible = true;
            Label24.Text = "Enter Grade";
            Hcp.Visible = true;
        }
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();

        string str = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);

        string path = "~//student//" + str.ToString();
        SqlCommand cmd = new SqlCommand("Insert into student values('" + id.Text + "','" + Fname.Text + "','" + Mname.Text + "','" + LName.Text + "','" + Email.Text + "','" + Fathername.Text + "','" + Mothername.Text + "','" + Contactno.Text + "','" + Address.Text + "','" + Gender.SelectedItem + "','" + DateOfBirth.Text + "','" + Pass.Text + "','" + collegeid.Text + "','" + DdlMd.SelectedItem + "','" + DdlMdc.SelectedItem + "','" + DdlMdy.SelectedItem + "','" + Mdp.Text + "','" + DdlGd.SelectedItem + "','" + DdlGdc.SelectedItem + "','" + DdlGdy.SelectedItem + "','" + Gdp.Text + "','" + Icn.Text + "','" + DdlIb.SelectedItem + "','" + Ip.Text + "','" + DdlIy.SelectedItem + "','" + Hcn.Text + "','" + DdlHb.SelectedItem + "','" + Hcp.Text + "','" + DdlHy.SelectedItem + "','" + path + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Page.RegisterStartupScript("UserMsg", "<script>alert('Thank you for Registration...')</script>");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void TextBox25_TextChanged(object sender, EventArgs e)
    {

    }


    protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (DropDownList3.Text == "Percentage")
        {
            Label26.Visible = true;
            Label26.Text = "Enter Percentage";
            Ip.Visible = true;
        }
        else
        {
            Label26.Visible = true;
            Label26.Text = "Enetr Grade";
            Ip.Visible = true;
        }
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "Percentage")
        {
            Label12.Visible = true;
            Label12.Text = "Enter Percentage";
            Mdp.Visible = true;
        }
        else
        {
            Label12.Visible = true;
            Label12.Text = "Enter Grade";
            Mdp.Visible = true;
        }
    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (DropDownList2.Text == "Percentage")
        {
            Label32.Visible = true;
            Label32.Text = "Enter Percentage";
            Gdp.Visible = true;
        }
        else
        {
            Label32.Visible = true;
            Label32.Text = "Enetr Grade";
            Gdp.Visible = true;
        }
    }
   
    protected void id_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(id.Text))
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from student where studentid=@studentid", con);
            cmd2.Parameters.AddWithValue("@studentid", id.Text);
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                userid.Text = "StudentId already exist";
                userid.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                userid.Text = "New Student";
                userid.ForeColor = System.Drawing.Color.Green;
            }
            con.Close();
        }
    }
    protected void collegeid_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(collegeid.Text))
        {
            con.Open();
            SqlCommand cmd3 = new SqlCommand("select * from college where collegeid=@collegeid", con);
            cmd3.Parameters.AddWithValue("@collegeid", collegeid.Text);
            SqlDataReader dr = cmd3.ExecuteReader();
            if (dr.HasRows)
            {
                collegename.Text = " Registered College ";
                collegename.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                collegename.Text = "Unregistered College";
                collegename.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
    }
}
   

