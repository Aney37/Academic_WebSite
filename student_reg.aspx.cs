using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class student_reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString);
            conn.Open();

            string checkuser = "select count(*) from [Table] where UserName='" + TextBox_User.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, conn);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

           /* if (temp == 1)
            {

                Response.Write("User Already Exists.Try Different User Name");
            }*/

            conn.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString);
            conn.Open();


            string checkuser = "select count(*) from [Table] where UserName='" + TextBox_User.Text + "'";

            SqlCommand cmd = new SqlCommand(checkuser, conn);

            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 0)
            {
                string insertQuery = "insert into [Table] (Username,Password,Confirm_Password,cat,batch,Roll) values (@un ,@pswrd ,@cnpass,@categry,@year,@roll)";

                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@un", TextBox_User.Text);

                com.Parameters.AddWithValue("@pswrd", TextBox_Pass.Text);
                com.Parameters.AddWithValue("@cnpass", TextBox_Pass1.Text);
                com.Parameters.AddWithValue("@categry", DropDownList1.SelectedItem.ToString());
                com.Parameters.AddWithValue("@year", DropDownList2.SelectedItem.ToString());
                com.Parameters.AddWithValue("@roll", TextBox7.Text);

                com.ExecuteNonQuery();

                Session["new"] = TextBox_User.Text;
                Response.Redirect("student_reg.aspx");
            }

            conn.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}