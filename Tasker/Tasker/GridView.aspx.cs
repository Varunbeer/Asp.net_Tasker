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
        if (!Page.IsPostBack)
        {
            refreshdata();
        }

    }
    public void refreshdata()
    {

        SqlConnection sqlcon = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("select * from signup", sqlcon);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(strcon);
        foreach (GridViewRow gvrow in GridView1.Rows)
        {

            CheckBox chck = gvrow.FindControl("CheckBox1") as CheckBox;
            if (chck.Checked)
            {
                var Label = gvrow.FindControl("Label1") as Label;

                SqlCommand cmd = new SqlCommand("delete from signup where email=@email", sqlcon);
                cmd.Parameters.AddWithValue("email", Label.Text);
                sqlcon.Open();
                int id = cmd.ExecuteNonQuery();
                sqlcon.Close();



            }

        }
    }
}