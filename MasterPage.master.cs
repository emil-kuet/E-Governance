using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Login"] == null)
                Response.Redirect("Default.aspx");
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
                //Label1.Text = Session["LoginId"].ToString();
            }
        }

    }
    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.Clear();

        HttpCookie myCookie = new HttpCookie("Preferences");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);

        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (iuplode.PostedFile != null)
        {
            string filename = iuplode.PostedFile.FileName.ToString();
            iuplode.SaveAs(Server.MapPath("~/uplode/"+filename));
        }

    }
}