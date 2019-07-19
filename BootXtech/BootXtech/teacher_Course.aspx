<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="teacher_Course.aspx.cs" 
    Inherits="BootXtech.teacher_Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server"> <!--creating panel-->
         <br />
         Course ID:<br />
        <asp:DropDownList ID="DropCourseId" runat="server" Height="40px" Width="400px" DataSourceID="SqlDataSource3" 
            DataTextField="COURSEID" DataValueField="COURSEID"></asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bootxtech %>" 
             ProviderName="<%$ ConnectionStrings:bootxtech.ProviderName %>" SelectCommand="SELECT COURSEID FROM BOOTXTECH.COURSE">

         </asp:SqlDataSource>
         <br />
         Course Name:<br />
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="391px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="submitBtn2" runat="server" Text="Submit" OnClick="submitBtn2_Click" Height="44px" Width="400px" />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </asp:Panel>
    </asp:Content>
