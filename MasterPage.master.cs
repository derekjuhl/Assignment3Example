using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    /// <summary>
    /// This class does nothing really except provide
    /// a redirect for each of the menu buttons on the master 
    /// page. The point is though that you could do
    /// quite complex things on the master page
    /// and have that functionality on every content
    /// page. Steve Conger 4/19/2013
    /// </summary>
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btnExample1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void btnExample2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");
    }
    protected void btnExample3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default4.aspx");
    }
}
