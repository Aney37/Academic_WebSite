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


public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
           

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
             con.Open();

            string checkuser = "select count(*) from [Table] where Year='" + DropDownList2.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, con);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {

                Response.Write("User Already Exists.Try Different User Name");
            }

            con.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
            con.Open();


            string checkuser = "select count(*) from [Table] where Year='" + DropDownList2.Text + "'";

            SqlCommand cmd = new SqlCommand(checkuser, con);

            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 0)
            {
                string insertQuery = "insert into [Table] (Username,Password,Confirm_Password,Category,Year,Roll) values (@un ,@pswrd ,@cnpass,@categry,@year,@roll)";

                SqlCommand com = new SqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@un", TextBox_User.Text);
           
                com.Parameters.AddWithValue("@pswrd", TextBox_Pass.Text);
                com.Parameters.AddWithValue("@cnpass", TextBox_Pass1.Text);
                com.Parameters.AddWithValue("@categry", DropDownList1.SelectedItem.ToString());
                com.Parameters.AddWithValue("@year", DropDownList2.SelectedItem.ToString());
                com.Parameters.AddWithValue("@roll", TextBox7.Text);
           
                com.ExecuteNonQuery();

                Session["new"] = TextBox_User.Text;
                Response.Redirect("registration.aspx");
            }

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    
    }
}