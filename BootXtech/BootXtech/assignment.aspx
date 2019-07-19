<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="assignment.aspx.cs" Inherits="BootXtech.assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="margin-right: 0px" Width="1276px">
        <br />
        <br />
        Course ID:<br />
        <asp:DropDownList ID="DropCourseId" runat="server" DataSourceID="SqlDataSource1" DataTextField="COURSEID" DataValueField="COURSEID" Height="40px" Width="400px"></asp:DropDownList>
        <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bootxtech %>" ProviderName="<%$ ConnectionStrings:bootxtech.ProviderName %>" SelectCommand="SELECT COURSEID, COURSENAME FROM BOOTXTECH.COURSE"></asp:SqlDataSource>
        <br />
        <br />
        Course Name<br />
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="388px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="submitBtn1" runat="server" Text="Submit" OnClick="submitBtn1_Click" Height="44px" Width="400px" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </asp:Panel>

</asp:Content>
