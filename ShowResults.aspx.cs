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

public partial class ShowResults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //Button1.Visible = false;
        string batch = null;
        string ID = Request.QueryString["id"];
        Session["Id"] = ID;
        int idc = Convert.ToInt32(ID);
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString.ToString()))
        {
            string sql = "SELECT * FROM ResultTable WHERE (Id ='" + Session["Id"] + "')";

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
            command.Parameters.AddWithValue("@Id", Convert.ToInt32(Session["Id"]));


            connection1.Open();
            SqlDataReader dr;
            dr = command.ExecuteReader();

            while (dr.Read())
            {

                string id = Convert.ToString(dr[0]);
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

        string strID = Request.QueryString["id"];
        int CT_ID = Convert.ToInt32(strID);

        if (!IsPostBack)
        {

            DataGridBind(CT_ID);
            DataGridBind1(CT_ID);

        }
        
    }

    protected void DataGridBind(int CT_ID)
    {
        /*SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
        con.Open();
         SqlCommand cmd = new SqlCommand();
         cmd.Connection = con;

         cmd.CommandText = "Select Date,Course_No,Course_Name,Teacher_Name,Title,Full_Marks from ResultTable where(Id='" + CT_ID + "')";



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

         con.Close(); */

    }

    protected void DataGridBind1(int CT_ID)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        cmd.CommandText = "Select Id,Roll,Mark from MarkTable where(Id='" + CT_ID + "')";



        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);

        con.Close();

        if (ds.Tables[0].Rows.Count > 0)
        {

            GridView2.DataSource = ds;

            GridView2.DataBind();

        }

        else
        {

            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());

            GridView2.DataSource = ds;

            GridView2.DataBind();

            int columncount = GridView2.Rows[0].Cells.Count;

            GridView2.Rows[0].Cells.Clear();

            GridView2.Rows[0].Cells.Add(new TableCell());

            GridView2.Rows[0].Cells[0].ColumnSpan = columncount;

            GridView2.Rows[0].Cells[0].Text = "No Records Found";

        }

        con.Close();

    }

}