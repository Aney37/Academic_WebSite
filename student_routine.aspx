<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_routine.aspx.cs" Inherits="student_routine" %>

<%@ Import Namespace="System"%>
<%@ Import Namespace="System.Collections.Generic"%>
<%@ Import Namespace="System.Linq"%>
<%@ Import Namespace="System.Web"%>
<%@ Import Namespace="System.Web.UI"%>
<%@ Import Namespace="System.Web.UI.WebControls"%>
<%@ Import Namespace="System.Data.SqlClient"%>
<%@ Import Namespace="System.Configuration"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="padding-left:50px">
               <%
                   SqlConnection con = new SqlConnection();
                   con.ConnectionString = ConfigurationManager.ConnectionStrings["aney"].ConnectionString;
                   con.Open();
                   string un = (string)Session["user"];
                  
                   string q = "select * from RoutineTable where Year='" + un + "'";
                   SqlCommand cmd = new SqlCommand(q,con);
                   SqlDataReader reader = cmd.ExecuteReader();
                 
                   while(reader.Read())
                   {
                       
                       string Date = (string)reader.GetValue(1);
                       string Time = (string)reader.GetValue(2);
                       string Teacher_Name = (string)reader.GetValue(3);
                       string Course_No = (string)reader.GetValue(4);
                       string Course_Name = (string)reader.GetValue(5);
                       string Year = (string)reader.GetValue(6);
                       
                   %>
               <fieldset style="width:1200px">
                   Date: <% Response.Write(Date); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Time: <% Response.Write(Time); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Teacher_Name: <% Response.Write(Teacher_Name); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Course_No: <% Response.Write(Course_No); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Course_Name: <% Response.Write(Course_Name); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Year: <% Response.Write(Year); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </fieldset>
                
               <%
                       
               }
                   reader.Close();   
               %>
           </div>     
         
    
    </form>
</body>
</html>
