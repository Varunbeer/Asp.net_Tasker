using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string strcon = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int result = 0;
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        SqlCommand sqlcmd = new SqlCommand("update signup set password='"+TextBox2.Text+"' where email='"+TextBox1.Text+"'",sqlcon);
        result = sqlcmd.ExecuteNonQuery();
        if (result > 0)
{
            Response.Write("Password is Updated");
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            Response.Write("Password is not Updated.");
        }
        sqlcon.Close();
    }
}