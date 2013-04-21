<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- we have add an Ajax enabled web service called Mileage.srv, and we register it
        with the scriptmanager-->
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/Mileage.svc" />
        </Services>
    </asp:ScriptManager>

    <!--this is just HTML rather than asp controls-->
     <p>Enter Your Starting mileage <input id="txtStart" type="text" /></p>
    <p>Enter your Ending Mileage <input id="txtEnd" type="text" /></p>
     <p>Enter the number of gallons <input id="txtGallons" type="text" /></p>

    <input id="quote" type="button" value="Get Mileage" onclick="getMileage();"/>
    <p id="txtResult" class="results"> </p>

    <!--for this example we use JavaScript to access the service, pass the values and get
        a result back-->
    <script type="text/javascript">
        function getMileage() {
            //get the values from the text input controls
            var start = document.getElementById('txtStart').value;
            var end = document.getElementById('txtEnd').value;
            var gallons = document.getElementById('txtGallons').value;
            //pass them to the service function. The callbacks are functions called below
            Mileage.CalculateMilesPerGallon(start, end, gallons, TestServiceCallBack, TestServiceErrorCallBack);
        }

        function TestServiceCallBack(result) {
         //this function gets and displays the result
            document.getElementById('txtResult').innerText = "Your Mileage is " + result;
           document.getElementById('txtResult').style = 'results';
         
        }

        function TestServiceErrorCallBack(error) {
            //this function creates an alert if there is an error
            alert(error.get_message);
        }
    </script>
    
</asp:Content>

