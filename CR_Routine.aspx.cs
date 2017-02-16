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


public partial class CR_Routine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user"] == null)
        //{
          //  Session["user"] = DropDownList1.Text;
            //Response.Redirect("Default.aspx");
       // }
        
        
     //   if (!IsPostBack)
       // {

         //   DataGridBind();

        //}
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
      
        
        if (GridView1.SelectedRow == null)
        {
            DetailsView1.Visible = false;
        }
        else
        {
            DetailsView1.Visible = true;

        }
    }

    /*protected void DataGridBind()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        cmd.CommandText = "Select * from RoutineTable where(Year='" + Session["Year"] + "')";



        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);

        con.Close();

        if (ds.Tables[0].Rows.Count > 0)
        {

            GridView1.DataSource = ds;

            GridView1.DataBind();

        }

        else
        {

            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());

            GridView1.DataSource = ds;

            GridView1.DataBind();

            int columncount = GridView1.Rows[0].Cells.Count;

            GridView1.Rows[0].Cells.Clear();

            GridView1.Rows[0].Cells.Add(new TableCell());

            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;

            GridView1.Rows[0].Cells[0].Text = "No Records Found";

        }

        con.Close();


    }*/

    protected void Add_Click(object sender, EventArgs e)
    {
         /*using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString.ToString()))
        {
            connection.Open();

            Response.Write("Successful");

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                string Date = TextBox1.Text.ToString();
                string Year = DropDownList1.Text.ToString();
                string Course_No = TextBox2.Text.ToString();
                string Course_Name = TextBox3.Text.ToString();
                string Teacher_Name = TextBox4.Text.ToString();
                string Time = TextBox5.Text.ToString();
                System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into [RoutineTable] (Year,Date,Course_No,Course_Name,Teacher_Name,Time) Values(@Year,@Date,@Course_No,@Course_Name,@Teacher_Name,@Time)", connection);

                insertCommand.Parameters.Add("@Year", SqlDbType.VarChar).Value = Year;
                insertCommand.Parameters.Add("@Date", SqlDbType.VarChar).Value = Date;
                insertCommand.Parameters.Add("@Course_No", SqlDbType.VarChar).Value = Course_No;
                insertCommand.Parameters.Add("@Course_Name", SqlDbType.VarChar).Value = Course_Name;
                insertCommand.Parameters.Add("@Teacher_Name", SqlDbType.VarChar).Value = Teacher_Name;
                insertCommand.Parameters.Add("@Time", SqlDbType.VarChar).Value = Time;

                try
                {
                    if (insertCommand.ExecuteNonQuery() != 0)
                    {
                        Message.Text = "Data inserted successfully!";
                        // Response.Redirect("ShowClassRoutine.aspx");
                    }
                    else
                    {
                        Message.Text = "Failed!";
                    }
                    connection.Close();

                }
                catch (Exception ex)
                {
                    Message.Text = "error" + ex;
                }

            }

        }
        Response.Redirect(Request.Url.AbsoluteUri);*/


        try
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
            con.Open();

            Response.Write("Aney");

            string checkuser = "select count(*) from RoutineTable  where batch='" + DropDownList1.Text + "'";

            SqlCommand cmd = new SqlCommand(checkuser, con);
            

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                string insertQuery = "insert into [RoutineTable] (batch,Date,Course_No,Course_Name,Teacher_Name,Time) values (@Year ,@Date,@Course_No,@Course_Name,@Teacher_Name,@Time)";

                SqlCommand com = new SqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@Year", DropDownList1.Text);
                com.Parameters.AddWithValue("@Date", TextBox1.Text);
                com.Parameters.AddWithValue("@Course_No", TextBox2.Text);
                com.Parameters.AddWithValue("@Course_Name", TextBox3.Text);
                com.Parameters.AddWithValue("@Teacher_Name", TextBox4.Text);
                com.Parameters.AddWithValue("@Time", TextBox5.Text);


                com.ExecuteNonQuery();

                //Session["new"] = TextBox1.Text;
                //Response.Redirect("page.aspx");
            }
            Response.Redirect("CR_Routine.aspx");

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }

    }



   /* protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
        con.Open();
        SqlCommand com1 = new SqlCommand();
        com1.Connection = con;

        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

        com1 = new SqlCommand("delete FROM RoutineTable where id='" + (GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);

        com1.ExecuteNonQuery();

        con.Close();

        //DataGridBind();
        Response.Redirect(Request.Url.AbsoluteUri);

    }*/
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectRow(-1);
    }
    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectRow(-1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("UserInfo");
        cookie.Expires = DateTime.Now.AddMinutes(-1);
        Session["user"] = "Aaaaaaaaaaa";
        Response.Cookies.Add(cookie);
        Response.Redirect("home_page.aspx");
    }

    
}