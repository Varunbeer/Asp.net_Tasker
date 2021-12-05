using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string strcon = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
    string name;
    string nameid;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = Session["username"].ToString();
        Label3.Text = Session["username"].ToString();
        if (!Page.IsPostBack)
        {
            SqlConnection sqlcon = new SqlConnection(strcon);
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("select * from tasks where name='" + name + "'", sqlcon);
            sqlcmd.ExecuteNonQuery();
            DataTable table = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(sqlcmd);
            adt.Fill(table);
            foreach (DataRow ROW in table.Rows)
            {
               
                    Label2.Text = ROW["task"].ToString();
                    Label1.Text = ROW["details"].ToString();
                    Label4.Text = ROW["duedate"].ToString();
                
                
            }
            sqlcon.Close();
        }

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int result = 0;
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        SqlCommand sqlcmd = new SqlCommand("update tasks set comment ='" + TextBox1.Text + "' where name='" + name + "'", sqlcon);
        result = sqlcmd.ExecuteNonQuery();
        if (result > 0)
        {
            Response.Write("updated");
        }
        else
        {
            Response.Write("not update");
        }
        sqlcon.Close();
    }
}