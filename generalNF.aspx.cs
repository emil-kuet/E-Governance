using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;


public partial class generalNF : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBoxFN_TextChanged(object sender, EventArgs e)
    {

    }
    protected void button_Click(object sender, EventArgs e)
    {
        XmlDocument xmlfile = new XmlDocument();
        xmlfile.Load(Server.MapPath("~/newsfeed.xml"));
        //create element
        XmlElement theNewsTag = xmlfile.CreateElement("news");
        XmlElement theTitleTag = xmlfile.CreateElement("title");
        XmlElement theContentsTag = xmlfile.CreateElement("contents");
        //create text node
        
        XmlText theTitleText = xmlfile.CreateTextNode(Session["Login"] + "(" + "At" + "&nbsp;" + DateTime.Now.ToString() + ")" + ":<br />" + "&nbsp;&nbsp;&nbsp;" + xmlTitle.Text);
        XmlText theContentsText = xmlfile.CreateTextNode(xmlContent.Text);
        //append
        theTitleTag.AppendChild(theTitleText);
        theContentsTag.AppendChild(theContentsText);

        theNewsTag.AppendChild(theTitleTag);
        theNewsTag.AppendChild(theContentsTag);
        //save
        xmlfile.DocumentElement.AppendChild(theNewsTag);
        xmlfile.Save(Server.MapPath("~/newsfeed.xml"));

        Response.Redirect("generalNF.aspx");


    }
}