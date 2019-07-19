<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher_Student.aspx.cs" Inherits="BootXtech.Teacher_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .GridView1{
            float:right;
        }
    </style>
    <asp:Panel ID="Panel1" runat="server">
        <br />
         Teacher ID:<br /> <!--teacher ID-->
        <asp:DropDownList ID="DropTeacherId" runat="server" DataSourceID="SqlDataSource1" DataTextField="TEACHERID" 
            DataValueField="TEACHERID" Height="40px" Width="400px"></asp:DropDownList>
        <!--using drop down for teacher id-->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bootxtech %>" ProviderName="<%$ ConnectionStrings:bootxtech.ProviderName %>" SelectCommand="SELECT TEACHERID FROM BOOTXTECH.TEACHER"></asp:SqlDataSource>
        <br />
         Teacher Name:<br />
        <asp:TextBox ID="TextBox1" runat="server" Width="387px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="submitBtn3" runat="server" Text="Submit" OnClick="submitBtn3_Click" Height="44px" Width="400px" />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <!--grid view-->
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

    </asp:Panel>
    </asp:Content>
