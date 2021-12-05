using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    string strcon = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int result = 0;
        string gen;
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        if (RadioButton1.Checked)
        {
            gen = RadioButton1.Text;

        }
        else
        {
            gen = RadioButton2.Text;
        }
        SqlCommand sqlcmd = new SqlCommand("insert into adminsignup(email,username,password,gender) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + gen + "')", sqlcon);
        result = sqlcmd.ExecuteNonQuery();
        if (result > 0)
        {
            Response.Write("inserted");
            Response.Redirect("AdminLogin.aspx");
        }

        else
        {
            Response.Write("not inserted");
        }
        sqlcon.Close();

    }
}