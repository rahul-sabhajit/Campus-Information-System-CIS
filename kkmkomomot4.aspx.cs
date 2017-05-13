using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class kkmkomomot4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=AKKI-PC\\SATYAMMSSQL;Initial Catalog=CIS;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void id_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(id.Text))
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from college where collegeid=@collegeid", con);
            cmd1.Parameters.AddWithValue("@collegeid", id.Text);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.HasRows)
            {
                userid.Text = "Email already exist";
                userid.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                userid.Text = "New EmailId";
                userid.ForeColor = System.Drawing.Color.Green;
            }
          

        }
    }
}