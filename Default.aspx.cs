using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];
        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = Login1.UserName.ToString();
                Response.Redirect("home.aspx");
            }
        }
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;


        select.CommandText = "select username from loginDBT where username = '" + Login1.UserName.ToString() + "' and password = '" + Login1.Password.ToString() + "' ";
        SqlDataReader reader = select.ExecuteReader();

        if (reader.Read())
        //if (Login1.UserName.ToString.equals(s1) && Login1.Password.ToString().Equals(s2))
        {
            Session["Login"] = Login1.UserName.ToString();

            if (Login1.RememberMeSet == true)
            {
                HttpCookie userCookie;
                userCookie = Request.Cookies["Preferences"];
                if (userCookie == null)
                {
                    userCookie = new HttpCookie("Preferences");
                    userCookie.Expires = DateTime.Now.AddMinutes(3);
                    Response.Cookies.Add(userCookie);
                }
            }

            Response.Redirect("home.aspx");
        }
        reader.Close();
    }
    protected void SignUp_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);

        

        try
        {


            con.Open();
            string sqlcmd = "insert into loginDBT (username, fname, lname, emil, password, sex, location, idcard, passport) values (@username, @fname, @lname, @emil, @password, @sex, @location, @idcard, @passport)";
            SqlCommand cmd = new SqlCommand(sqlcmd, con);

            cmd.Parameters.AddWithValue("@username", TextBoxUN.Text);
            cmd.Parameters.AddWithValue("@fname", TextBoxFN.Text);
            cmd.Parameters.AddWithValue("@lname", TextBoxLN.Text);
            cmd.Parameters.AddWithValue("@emil", TextBoxEmil.Text);
            cmd.Parameters.AddWithValue("@password", TextBoxConPass.Text);
            cmd.Parameters.AddWithValue("@sex", radioSex.Text);
            cmd.Parameters.AddWithValue("@location", TextBoxLocation.Text);
            cmd.Parameters.AddWithValue("@idcard", TextBoxID.Text);
            cmd.Parameters.AddWithValue("@passport", TextBoxPassportN.Text);
            


            cmd.ExecuteNonQuery();
            stslbl.Text = "Signed-Up Successfully";


        }

        catch (Exception ex)
        {
    
          //  stslbl.Text = ex.ToString();
            stslbl.Text = "Unique User Name Required";
            
        }
        finally
        {
            con.Close();
        }
    }
}