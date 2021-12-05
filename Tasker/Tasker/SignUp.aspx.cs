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
        if(RadioButton1.Checked)
        {
            gen = RadioButton1.Text;
            
        }
        else
        {
            gen = RadioButton2.Text;
        }
        SqlCommand sqlcmd = new SqlCommand("insert into signup(username,email,password,gender,securityquestion,securityanswer,contactno) values('"+TextBox1.Text+"','"+TextBox3.Text+"','"+TextBox2.Text+"','" + gen + "','"+DropDownList1.Text+ "','" + TextBox6.Text + "','"+TextBox5.Text+"')", sqlcon);
        result = sqlcmd.ExecuteNonQuery();
        if(result > 0)
        {
            Response.Write("insertion");
            Response.Redirect("login.aspx");
        }
            else
        {
            Response.Write("error");
        }
        sqlcon.Close();
    }
}
