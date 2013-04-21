<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--this page is really the equivalent of a splash page just to give a sense
    of the overall example-->
    <h2>Web Services and Ajax</h2>
    <p>Ajax is short for "Asynchronis JavaScript and XML." What it does is allow you to update a portion of a web page, rather than the whole thing. As you should recall, everytime you press a button or run a control which changes the web page, the entire web page is redrawn from the server. This can result in a flicker or even a painful delay as the page reloads. Ajax tools and techniques allow you to update just a piece of the page--a selected div. </p>
    <p>Ajax isn't entirely without problems. It can break the back button, and the Ajax sections can hang or fail to load, but used correctly it can improve performance and the user experience.</p>
    <p>This example does far more than the assignment requires.</p>
    <p>Sample one shows using the ajax control "Update Panel" and has a simple counter with a timer control.</p>
    <p>Sample two is the one closest to the assignment. It uses the script manager and javascript to call a web service. It also uses Ajax</p>
    <p>The third example shows how to call the web service using C#. Here I don't think it is technically using AJax</p>
    </p>
</asp:Content>

