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
    string emailid;

    protected void Page_Load(object sender, EventArgs e)
    {
        emailid = Session["email"].ToString();
        Literal1.Text = Session["username"].ToString();
        if (!Page.IsPostBack)
        {
            SqlConnection sqlcon = new SqlConnection(strcon);
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("select * from signup where email='" + emailid + "'", sqlcon);
            sqlcmd.ExecuteNonQuery();
            DataTable table = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(sqlcmd);
            adt.Fill(table);
            foreach(DataRow ROW in table.Rows)
            {
                TextBox1.Text = ROW["email"].ToString();
                TextBox2.Text = ROW["username"].ToString();
                TextBox3.Text = ROW["gender"].ToString();

            }
            sqlcon.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int result = 0;
        SqlConnection sqlcon = new SqlConnection(strcon);
        sqlcon.Open();
        SqlCommand sqlcmd = new SqlCommand("update signin set username ='" + TextBox1.Text + "',email='" + TextBox2.Text + "',gender='" + TextBox3.Text + "' where email='"+emailid+"'", sqlcon);
        result = sqlcmd.ExecuteNonQuery();
        if(result>0)
        {
            Response.Write("updated");
        }
        else
        {
            Response.Write("not update");
        }
        sqlcon.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("login.aspx");
    }
}