using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class profile : System.Web.UI.Page
{
    private string connectionString = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString;


    string op;
    string oop;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillAuthorList();
        }
    }

    private void FillAuthorList()
    {
        string selectSQL;
        selectSQL = "SELECT * FROM [loginDBT] ";


        if (Session["Login"] != null)
            selectSQL += "WHERE username='" + Session["Login"].ToString() + "'";
        else if (Request.Cookies["Preferences"] != null)
        {
            HttpCookie cookie = Request.Cookies["Preferences"];
            selectSQL += "WHERE username='" + cookie["name"] + "'";
        }
        else
            Response.Redirect("home.aspx");









        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        SqlDataReader reader;

        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            reader.Read();

            username.Text = reader["username"].ToString();
            fname.Text = reader["fname"].ToString();
            lname.Text = reader["lname"].ToString();
            emil.Text = reader["emil"].ToString();
            oldpassword.Text = reader["password"].ToString();

           

         
            


            password.Text = reader["password"].ToString();
            sex.Text = reader["sex"].ToString();
            location.Text = reader["location"].ToString();
            idcard.Text = reader["idcard"].ToString();
            passport.Text = reader["passport"].ToString();


            reader.Close();
            lblResults.Text = "";
        }
        catch (Exception err)
        {
            Response.Redirect("home.aspx");
            lblResults.Text = "Error getting data. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }

    }


    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
 


        string updateSQL;
        updateSQL = "Update loginDBT set ";
        updateSQL += "fname=@fname, lname=@lname, ";
        
        updateSQL += "emil=@emil, password=@password,";
        updateSQL += "sex=@sex, location=@location, ";
        updateSQL += "idcard=@idcard, passport=@passport ";

        updateSQL += "where username=@username";

        

       

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(updateSQL, con);

        cmd.Parameters.AddWithValue("@fname", fname.Text);
        cmd.Parameters.AddWithValue("@lname", lname.Text);
        cmd.Parameters.AddWithValue("@emil", emil.Text);



        op = "SELECT password FROM [loginDBT] ";


         if (Session["Login"] != null)
            op += "WHERE username='" + Session["Login"].ToString() + "'";
         else if (Request.Cookies["Preferences"] != null)
          {
              HttpCookie cookie = Request.Cookies["Preferences"];
              op += "WHERE username='" + cookie["name"] + "'";
          }
          else
              Response.Redirect("home.aspx");
         SqlConnection conn = new SqlConnection(connectionString);
         SqlCommand cmdd = new SqlCommand(op, conn);
         SqlDataReader reader;
         try
         {
             conn.Open();
             reader = cmdd.ExecuteReader();
             reader.Read();

             oop = reader["password"].ToString();
            


             reader.Close();
             lblResults.Text = "";
         }
         catch (Exception err)
         {
             Response.Redirect("home.aspx");
             lblResults.Text = "Error getting data. ";
             lblResults.Text += err.Message;
         }
         finally
         {
             conn.Close();
         }





        if (oop.ToString() == oldpassword.Text.ToString())
        {
            cmd.Parameters.AddWithValue("@password", password.Text);
        }
        else
        {
            opl.Text = "Old password is not matched";
        }
        cmd.Parameters.AddWithValue("@sex", sex.Text);
        cmd.Parameters.AddWithValue("@location", location.Text);
        cmd.Parameters.AddWithValue("@idcard", idcard.Text);
        cmd.Parameters.AddWithValue("@passport", passport.Text);


        cmd.Parameters.AddWithValue("@username", Session["Login"].ToString());

        int updated = 0;
        try
        {
            con.Open();

            updated = cmd.ExecuteNonQuery();
           
            lblResults.Text = updated.ToString() + " record updated.";
        }
        catch (Exception err)
        {
            lblResults.Text = "Error updating data. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();

        }

        if (updated > 0)
        {
            FillAuthorList();
        }

    }

    protected void TabLink3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
}