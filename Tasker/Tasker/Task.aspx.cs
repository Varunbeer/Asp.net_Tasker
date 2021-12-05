using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string strcon = null;
    int result = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        strcon = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        string gen;
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        SqlCommand sqlcmd = new SqlCommand("insert into tasks(name,company,task,details,duedate) values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", sqlcon);
        result = sqlcmd.ExecuteNonQuery();
        if (result > 0)
        {
            Response.Write("insertion");
            Response.Redirect("Task List.aspx");
        }
        else
        {
            Response.Write("error");
        }
        sqlcon.Close();
    }
}