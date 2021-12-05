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
    string strcon = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        SqlCommand sqlcmd = new SqlCommand("select * from adminsignup where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", sqlcon);
        sqlcmd.ExecuteNonQuery();
        DataTable table = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(sqlcmd);
        adt.Fill(table);
        foreach (DataRow ROW in table.Rows)
        {
            Session["email"] = ROW["email"];//add this line to login page
            Response.Redirect("GridView.aspx");
        }
        Response.Write("wrong details");
        sqlcon.Close();

    }
}