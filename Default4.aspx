<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Enter The price per Gallon <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox></p>
    <p>Enter the Number of Gallons <asp:TextBox ID="txtGallons" runat="server"></asp:TextBox></p>
    <p>Enter the total miles <asp:TextBox ID="txtTotalMiles" runat="server"></asp:TextBox></p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Get Cost" OnClick="Button1_Click" />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    </p>
    
</asp:Content>

