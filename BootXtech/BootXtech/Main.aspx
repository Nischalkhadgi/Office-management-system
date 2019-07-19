<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="BootXtech._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="w3-container w3-blue"> <!--background color blue-->
        <h2>BootXtech Institute, Pokhara, Kaski </h2> <!--Main heading--> 
        <p class="lead">BootXtech is an institute, which provides networking, computing and multimedia classes to students.</p> 
        <!--institute description -->
        <p class="lead">This institute provides best learning outcomes with better jobs priority.</p>
        <p class="lead">Web development, Cyber Security, App development, Robotics and many more.</p>

        <p><a href="https://infocode.org/" class="btn btn-primary btn-lg">Join now &raquo;</a></p> <!--an institute link with a join button-->
    </div>
    <div class="w3-row-padding">
        <div class="col-md-4">
            <h2>Computing</h2>
            <p>
                Computing classes will taken with lecture, tutorial and work-shop lasting one to two hours.
            </p>
            <p>
                For development purpose, we will be taking computer languages classes which includes Python, JavaScript, JAVA, C# and many more.</p>
            <p>
                Also we will be providing database classes on Oracle, MongoDB, MYSQL and Firebase.</p>
           
        </div>
        <div class="col-md-4">
            <h2>Networking</h2> <!--heading of courses-->
            <p>
                Networking part includes more of a hardware materials than software.
            </p>
            <p>
                INTERNET OF THINGS is a special priority classes given to all networking students.</p>
            <p>
                The course is considers several aspects of INTERNET OF THINGS like sensors networks, apps, computing, coding parts and 
                intelligent services.</p>
            <p>
                Course description: Data communication, network architectures, communication protocols, data link controls and many more.</p>
          
        </div>
        <div class="col-md-4">
            <h2>Multimedia</h2> <!--heading of another course-->
            <p>
                Multimedia classes will taken with lecture, tutorial and work-shop lasting one to two hours.
            </p>
            <p>
                Multimedia classes have interactive computer classes through text, graphs, video, sound and animation, to transfer a message.</p>
            <p>
                This course will help to develop a broad perspective of art, design and communication classes, processes and tools, apps 
                and better opportunity in multimedia design.
            </p>
           
        </div>
    </div>

</asp:Content>
