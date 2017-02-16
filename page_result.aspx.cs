using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class page_result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["ct"] = TextBox6.Text;
        //Response.Redirect("marksheet_generate.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
       /* try
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
            con.Open();


            string checkuser = "select count(*) from [ResultTable] where Batch='" + DropDownList2.Text + "'";

            SqlCommand cmd = new SqlCommand(checkuser, con);

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                string insertQuery = "Insert into [ResultTable]  Values(@Batch, @Date,  @Course_No, @Course_Name, @Teacher_Name, @Full_Marks)";

                SqlCommand com = new SqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@Course_No", TextBox1.Text);
                com.Parameters.AddWithValue("@Course_Name", TextBox2.Text);
                com.Parameters.AddWithValue("@Teacher_Name", TextBox3.Text);
                com.Parameters.AddWithValue("@Batch", DropDownList2.Text);
                com.Parameters.AddWithValue("@Full_Marks", TextBox4.Text);
                com.Parameters.AddWithValue("@Date", TextBox5.Text);

                com.ExecuteNonQuery();


            }

            con.Close();
            

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }*/


        string Date = (string)TextBox5.Text;
        string Batch = (string)DropDownList2.Text;
        string Course_Name = (string)TextBox2.Text;
        string Full_Marks = (string)TextBox4.Text;
        string Course_No = (string)TextBox1.Text;
        string Teacher_Name = (string)TextBox3.Text;
        string CT_ID = (string)TextBox6.Text;
        //string Course_No = Session["Course_No"].ToString();
        //string Teacher_Name = Session["Teacher_Name"].ToString();

        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString.ToString()))
        {
            connection.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into [ResultTable] (Batch,Date,Course_No,Course_Name,Teacher_Name,Full_Marks,CT_ID) Values(@Batch,@Date,@Course_No,@Course_Name,@Teacher_Name,@Full_Marks,@CT_ID)", connection);


            insertCommand.Parameters.Add("@Batch", SqlDbType.VarChar).Value = Batch;
            insertCommand.Parameters.Add("@Date", SqlDbType.VarChar).Value = Date;
            insertCommand.Parameters.Add("@Course_No", SqlDbType.VarChar).Value = Course_No;
            insertCommand.Parameters.Add("@Course_Name", SqlDbType.VarChar).Value = Course_Name;
            insertCommand.Parameters.Add("@Teacher_Name", SqlDbType.VarChar).Value = Teacher_Name;
            insertCommand.Parameters.Add("@Full_Marks", SqlDbType.Int).Value = Full_Marks;
            insertCommand.Parameters.Add("@CT_ID", SqlDbType.VarChar).Value = CT_ID;
            //Convert.ToInt32
            try
            {
                if (insertCommand.ExecuteNonQuery() != 0)
                {
                    Response.Write( "Successful!");

                }
                else
                {
                    Response.Write("Something went WRONG!");
                }
                connection.Close();

            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
        Response.Redirect("marksheet_generate.aspx");
    }
}