using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*HttpCookie cookie = Request.Cookies["UserInfo"];
        if (cookie != null)
        {

            Session["user"] = TextBox1.Text;
            Response.Redirect("CR_Routine.aspx");
            //Response.Redirect("lecture.aspx");
        }*/
        
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
        // con.Open();
        try
        {
            con.Open();
            Response.Write("Connection is Successful" + "</br>");
            //Response.Write(con.Database + "</br>");
            //Response.Write(con.ServerVersion);

        }
        catch (Exception ex)
        {
            Response.Write("Connection Failed");
            con.Close();


        }
        finally
        {
            con.Close();
        }
        if (IsPostBack)
        {

            //SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
            
            con.Open();
            string checkuser = "select count(*) from dataTable where Year='" + TextBox1 + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already exist.Try Different User Name");

            }

            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         
        try
        {
            Guid newGuid = Guid.NewGuid();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
            con.Open();
            string insertQuery = "insert into dataTable (Year,Password) values (@year,@password)";
            SqlCommand com = new SqlCommand(insertQuery, con);

            
            com.Parameters.AddWithValue("@year", TextBox1.Text);
           
            com.Parameters.AddWithValue("@password", TextBox2.Text);
           
            Session["user"] =TextBox1.Text;

            com.ExecuteNonQuery();
           //Response.Redirect("CR_Routine.aspx");
          // Response.Redirect("lecture.aspx");
           


            //Label_submit.Text = "Registration Succssful! ";
            // Label_submit.ForeColor = System.Drawing.Color.Red;

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("UserInfo");
        cookie["UserInfo"] = TextBox1.Text;
        cookie.Expires = DateTime.Now.AddMinutes(1);
        Response.Cookies.Add(cookie);
    }
}