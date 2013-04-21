<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--the script manager is what handles the javascript and xml for you. It
        has no display element on the page, but it is necessary if you are going to use
        the Ajax controls-->
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <p>This page uses an UpdatePanel and a Timer control. For it to work you must also
        drag the scriptmanager control onto the page.
    </p>
    <!--the update panel creates the updateable div for the ajax-->
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!--the contentTemplate is necessary. Inside it you tell the panel what to display-->
            <p>
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="clock"></asp:Label></p>
            <!-- the timer control also has no direct display, but you can use it to set how often a panel
                should update. It counts in milleseconds, so we are updating every second
                the C# code for this is in the code behind--> 
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
    

</asp:Content>

