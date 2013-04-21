﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

[ServiceContract(Namespace = "")]
[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
public class Mileage
{
	// To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
	// To create an operation that returns XML,
	//     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
	//     and include the following line in the operation body:
	//         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";
	[OperationContract]
	public double CalculateMilesPerGallon(int startMiles, int endMiles, double gallons)
	{
        double mpg = 0;
        int totalMiles = endMiles - startMiles;
        mpg = totalMiles / gallons;
		return mpg;
	}

    [OperationContract]
    public double CalculateCostPerMile(double pricePerGallon, double gallons, int totalMiles)
    {
        double cost = 0;
        cost = (pricePerGallon * gallons)/ totalMiles;
        return cost;
    }
}
