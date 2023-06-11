<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KnjigaUtisakaaA._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <asp:Label ID="Label1" runat="server" Text="Ime:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Komentar:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Height="148px" Width="158px"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Dodaj komentar" OnClick="Button1_Click" Width="132px" />
    <br />


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KnjigaUtisakaSKConnectionString %>" SelectCommand="SELECT * FROM [Utisak]"></asp:SqlDataSource>


</asp:Content>
