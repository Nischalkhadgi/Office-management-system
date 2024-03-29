﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="BootXtech.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div id="main"></div>
         <form id="form1" > <!--form-->
        <fieldset style="height: 455px; width: 126px;">
            Course Details<br />
            <br />
            Course ID:&nbsp;<asp:TextBox ID="TextCourseId" runat="server" Width="800px" Height="40px"></asp:TextBox>
            <br />
            <br /> 
            Course Name:&nbsp;<asp:TextBox ID="TextCourseName" runat="server" Width="800px" Height="40px"></asp:TextBox> <!--text box-->
            <br />
            CourseLeader:&nbsp;<asp:TextBox ID="TextCourseLeader" runat="server" Width="800px" Height="40px"></asp:TextBox>
            <br />
            <br />
            creditHour:&nbsp;<asp:TextBox ID="TextCreditHour" runat="server" Width="800px" Height="40px"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="submitBtn" runat="server" Text="Submit" Height="44px" Width="400px" OnClick="submitBtn_Click" />
            <!--submit button-->
            <br />
            <!--below datagrid view with CRUDE method-->
          </fieldset><asp:GridView ID="dataGridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="COURSEID" 
              DataSourceID="SqlDataSource4" Height="16px" Width="765px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
              AutoGenerateSelectButton="True">
                <Columns>
                    <asp:BoundField DataField="COURSEID" HeaderText="COURSEID" ReadOnly="True" SortExpression="COURSEID" />
                    <asp:BoundField DataField="COURSENAME" HeaderText="COURSENAME" SortExpression="COURSENAME" />
                    <asp:BoundField DataField="COURSELEADER" HeaderText="COURSELEADER" SortExpression="COURSELEADER" />
                    <asp:BoundField DataField="CREDITHOUR" HeaderText="CREDITHOUR" SortExpression="CREDITHOUR" />
                </Columns>
            </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString20 %>" 
                 DeleteCommand="DELETE FROM &quot;COURSE&quot; WHERE &quot;COURSEID&quot; = :COURSEID" InsertCommand="INSERT INTO &quot;COURSE&quot; 
                 (&quot;COURSEID&quot;, &quot;COURSENAME&quot;, &quot;COURSELEADER&quot;, &quot;CREDITHOUR&quot;) VALUES (:COURSEID, :COURSENAME,
                 :COURSELEADER, :CREDITHOUR)" ProviderName="<%$ ConnectionStrings:ConnectionString20.ProviderName %>" SelectCommand=
                 "SELECT &quot;COURSEID&quot;, &quot;COURSENAME&quot;, &quot;COURSELEADER&quot;, &quot;CREDITHOUR&quot; FROM &quot;COURSE&quot;" 
                 UpdateCommand="UPDATE &quot;COURSE&quot; SET &quot;COURSENAME&quot; = :COURSENAME, &quot;COURSELEADER&quot; = :COURSELEADER, 
                 &quot;CREDITHOUR&quot; = :CREDITHOUR WHERE &quot;COURSEID&quot; = :COURSEID">
                 <DeleteParameters> 
                     <asp:Parameter Name="COURSEID" Type="Decimal" />
                 </DeleteParameters>
                 <InsertParameters> 
                     <asp:Parameter Name="COURSEID" Type="Decimal" />
                     <asp:Parameter Name="COURSENAME" Type="String" />
                     <asp:Parameter Name="COURSELEADER" Type="String" />
                     <asp:Parameter Name="CREDITHOUR" Type="String" />
                 </InsertParameters>
                 <UpdateParameters> 
                     <asp:Parameter Name="COURSENAME" Type="String" />
                     <asp:Parameter Name="COURSELEADER" Type="String" />
                     <asp:Parameter Name="CREDITHOUR" Type="String" />
                     <asp:Parameter Name="COURSEID" Type="Decimal" />
                 </UpdateParameters>
             </asp:SqlDataSource>
            </form>
    </asp:Panel>
</asp:Content>
