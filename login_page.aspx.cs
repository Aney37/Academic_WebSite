using System.Data.Sql;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["UserInfo"];
        if (cookie != null)
        {

            Session["user"] = TextBox_User.Text;
            Response.Redirect("teacher_work.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString);

        connection.Open();

        string checkuser = "select count(*) from [Table] where UserName='" + TextBox_User.Text + "'";

        SqlCommand cmd = new SqlCommand(checkuser, connection);

        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

        if (temp == 1)
        {
            string passwordQuery = "select Password from [Table] where UserName='" + TextBox_User.Text + "'";
            SqlCommand checkPassword = new SqlCommand(passwordQuery, connection);

            string password = checkPassword.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBox_Pass.Text)
            {
                Session["user"] = TextBox_User.Text;
                

                Response.Redirect("teacher_work.aspx");
            }
            else Response.Write("Incorrect Password");

        }
        else
        {
            Response.Write("Incorrect Username");
        }

        connection.Close();
        
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("UserInfo");
        cookie["UserInfo"] = "Aney";
        cookie.Expires = DateTime.Now.AddMinutes(1);
        Response.Cookies.Add(cookie);
    }
}