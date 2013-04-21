using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //this sets the inial time as the page loads
        //the if(!IsPostBack) tells the page to only load it
        //on the first page load, not on later requests
        if(!IsPostBack)
        Label1.Text = DateTime.Now.ToLongTimeString();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //tell the timer what to do
        Label1.Text = DateTime.Now.ToLongTimeString();
    }
}