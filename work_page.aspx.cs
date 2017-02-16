using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class work_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Session["user"] = "Aney";
            Response.Redirect("home_page.aspx");
        }
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