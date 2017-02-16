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

public partial class lecture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           // DataGridBind();
           // DataGridBind1();

        }

    }

   

    protected void DownloadFile(object sender, EventArgs e)
    {
        int id = int.Parse((sender as LinkButton).CommandArgument);

        byte[] bytes;
        string fileName, contentType;
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["aney"].ConnectionString.ToString()))
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.CommandText = "select Title, Data, ContentType from lectureTable where Id=@Id";
            cmd.Parameters.AddWithValue("@Id", id);
            cmd.Connection = connection;
            connection.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                bytes = (byte[])sdr["Data"];
                contentType = sdr["ContentType"].ToString();
                fileName = sdr["Title"].ToString();
            }
            connection.Close();
        }
        Response.Clear();
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = contentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();

    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string contentType = FileUpload1.PostedFile.ContentType;
        string Batch = (string)DropDownList2.Text;
        string Course_No = (string)TextBox1.Text;
        string Course_Name = (string)TextBox2.Text;
        string Teacher_Name = (string)TextBox3.Text;
        string Title = (string)TextBox4.Text;
        using (Stream fs = FileUpload1.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {
                byte[] bytes = br.ReadBytes((Int32)fs.Length);

                try
                {

                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
                    con.Open();


                    string checkuser = "select count(*) from [lectureTable] where Batch='" + DropDownList2.Text + "'";

                    SqlCommand cmd = new SqlCommand(checkuser, con);

                    if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" )
                    {
                        string insertQuery = "Insert into [lectureTable]  Values(@Course_No, @Course_Name,  @Teacher_Name, @Batch, @Title, @Data, @ContentType)";

                        SqlCommand com = new SqlCommand(insertQuery, con);
                        com.Parameters.AddWithValue("@Course_No", TextBox1.Text);
                        com.Parameters.AddWithValue("@Course_Name", TextBox2.Text);
                        com.Parameters.AddWithValue("@Teacher_Name", TextBox3.Text);
                        com.Parameters.AddWithValue("@Title", TextBox4.Text);
                        com.Parameters.AddWithValue("@Batch", DropDownList2.Text);
                        com.Parameters.AddWithValue("@Data", bytes);
                        com.Parameters.AddWithValue("@ContentType", contentType);

                        com.ExecuteNonQuery();

                        
                    }

                    con.Close();
                    Response.Redirect("lecture.aspx");

                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }


              
            }
        }
    }
}