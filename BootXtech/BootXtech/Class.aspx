﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="BootXtech.Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server"> <!--starting pannel-->
        <form id="form1" > <!--form starting-->
        <fieldset style="height: 361px; width: 427px;">
            <legend>Class details</legend>Class Id:<br />
&nbsp;<asp:TextBox ID="TextClassId" runat="server" Width="400px" Height="40px"></asp:TextBox>
            <br />
            Class Name:<br />
&nbsp;<asp:TextBox ID="TextClassName" runat="server" Width="400px" Height="40px"></asp:TextBox>
            <br />
            Class Type:<br />
&nbsp;<asp:TextBox ID="TextClassType" runat="server" Width="400px" Height="40px"></asp:TextBox>
            <br />
            Time:<br />
&nbsp;<asp:TextBox ID="TextClassTime" runat="server" Width="400px" Height="40px"></asp:TextBox>
            <br />
            Day:<br />
&nbsp;<asp:TextBox ID="TextClassDay" runat="server" Width="400px" Height="40px"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="submitBtn" runat="server" Text="Submit" Height="44px" Width="400px" OnClick="submitBtn_Click" /> <!--submit button-->

            <br />
            <!--below datagrid view with CRUDE method-->
            </fieldset><asp:GridView ID="dataGridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames=
                "CLASSID" DataSourceID="SqlDataSource5" Height="16px" Width="691px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                AutoGenerateSelectButton="True">
                <Columns>
                    <asp:BoundField DataField="CLASSID" HeaderText="CLASSID" ReadOnly="True" SortExpression="CLASSID" />
                    <asp:BoundField DataField="CLASSNAME" HeaderText="CLASSNAME" SortExpression="CLASSNAME" />
                    <asp:BoundField DataField="CLASSTYPE" HeaderText="CLASSTYPE" SortExpression="CLASSTYPE" />
                    <asp:BoundField DataField="TIME" HeaderText="TIME" SortExpression="TIME" />
                    <asp:BoundField DataField="DAY" HeaderText="DAY" SortExpression="DAY" />
                </Columns>
            </asp:GridView> 
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString21 %>" 
                DeleteCommand="DELETE FROM &quot;CLASS&quot; WHERE &quot;CLASSID&quot; = :CLASSID" InsertCommand="INSERT INTO &quot;CLASS&quot; 
                (&quot;CLASSID&quot;, &quot;CLASSNAME&quot;, &quot;CLASSTYPE&quot;, &quot;TIME&quot;, &quot;DAY&quot;) VALUES 
                (:CLASSID, :CLASSNAME, :CLASSTYPE, :TIME, :DAY)" ProviderName="<%$ ConnectionStrings:ConnectionString21.ProviderName %>"
                SelectCommand="SELECT * FROM &quot;CLASS&quot;" UpdateCommand="UPDATE &quot;CLASS&quot; SET &quot;CLASSNAME&quot; = :CLASSNAME,
                &quot;CLASSTYPE&quot; = :CLASSTYPE, &quot;TIME&quot; = :TIME, &quot;DAY&quot; = :DAY WHERE &quot;CLASSID&quot; = :CLASSID">
                <DeleteParameters> 
                    <asp:Parameter Name="CLASSID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CLASSID" Type="Decimal" />
                    <asp:Parameter Name="CLASSNAME" Type="String" />
                    <asp:Parameter Name="CLASSTYPE" Type="String" />
                    <asp:Parameter Name="TIME" Type="String" />
                    <asp:Parameter Name="DAY" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CLASSNAME" Type="String" />
                    <asp:Parameter Name="CLASSTYPE" Type="String" />
                    <asp:Parameter Name="TIME" Type="String" />
                    <asp:Parameter Name="DAY" Type="String" />
                    <asp:Parameter Name="CLASSID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </form>
    </asp:Panel>
  
</asp:Content>
