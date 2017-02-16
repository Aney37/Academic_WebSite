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

public partial class marksheet_generate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Button2.Visible = true;
        string batch = null;
        string id = null;
        string[] name_array = new string[100];
        string[] roll_array = new string[100];

        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString.ToString()))
        {

            /* string sql = "SELECT * FROM Result WHERE Teacher_Name = @Teacher_Name";
             SqlCommand command = new SqlCommand(sql, connection);
             command.Parameters.AddWithValue("@Teacher_Name", Session["uname"].ToString());*/
            string sql = "SELECT * FROM  ResultTable WHERE   Id = (SELECT MAX(Id)  FROM ResultTable)";
            SqlCommand command = new SqlCommand(sql, connection);

            connection.Open();
            SqlDataReader dr;
            dr = command.ExecuteReader();

            while (dr.Read())
            {
                Session["Id"] = dr["Id"];
            }


            connection.Close();
        }

        using (SqlConnection connection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString.ToString()))
        {

            string sql = "SELECT * FROM ResultTable WHERE Id = @Id";
            SqlCommand command = new SqlCommand(sql, connection1);
            command.Parameters.AddWithValue("@Id", Session["Id"].ToString());


            connection1.Open();
            SqlDataReader dr;
            dr = command.ExecuteReader();

            while (dr.Read())
            {

                id = Convert.ToString(dr[0]);
                Label_id.Text = id;
                batch = Convert.ToString(dr[1]);
                Label_batch.Text = batch;
                string date = Convert.ToString(dr[2]);
                Label_date.Text = date;
                string course_no = Convert.ToString(dr[3]);
                Label_course_no.Text = course_no;
                string course_name = Convert.ToString(dr[4]);
                Label_course_name.Text = course_name;
                string teacher_name = Convert.ToString(dr[5]);
                Label_teacher_name.Text = teacher_name;
                string full = Convert.ToString(dr[6]);
                Label_full.Text = full;
            }

            connection1.Close();
        }

    }


    protected void Page_PreRender(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try
       {

           SqlConnection con = new SqlConnection();
           con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
           con.Open();


           
           string checkuser = "select count(*) from [MarkTable] where Roll='" + TextBox1.Text + "'";

           SqlCommand cmd = new SqlCommand(checkuser, con);

           if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" )
           {
               string insertQuery = "Insert into [MarkTable]  Values(@Roll, @Mark,  @Name,@CT_ID )";

               SqlCommand com = new SqlCommand(insertQuery, con);
               com.Parameters.AddWithValue("@Roll", TextBox1.Text);
               com.Parameters.AddWithValue("@Name", TextBox2.Text);
               com.Parameters.AddWithValue("@Mark", TextBox3.Text);
               com.Parameters.AddWithValue("@CT_ID", TextBox4.Text);

               com.ExecuteNonQuery();


           }

           con.Close();
           Response.Redirect("marksheet_generate.aspx");

       }
       catch (Exception ex)
       {
           Response.Write("Error: " + ex.ToString());
       }
    }
    
}