using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{

    /// <summary>
    /// This class is an example of how to access the service
    /// through C#
    /// </summary>
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {   
        //declare variables
        double price;
        double gallons;
        int miles;
        double cost=0;

        //create an instance of the service
        Mileage m = new Mileage();

        //get the values from the text boxes
        //the try parse tests the values and returns a boolean
        //true if they are valid, false if not
        //if try it assigns the value to the outside
        //variable
        bool goodPrice= double.TryParse(txtPrice.Text, out price);
        bool goodGallons = double.TryParse(txtGallons.Text, out gallons);
        bool goodMiles = int.TryParse(txtTotalMiles.Text, out miles);

        if (goodPrice && goodGallons && goodMiles)
        {
            //if everything is ok pass the values to the service method
            //and get the response
            cost = m.CalculateCostPerMile(price, gallons, miles);
        }

        else
        {
            //otherwise create a javascript alert
            Response.Write("<script type='text/JavaScript'>alert('Make sure you only enter numbers')</script>");
            return;
        }

        lblResult.Text = "Your cost per mile was " + cost.ToString("c");
    }
}