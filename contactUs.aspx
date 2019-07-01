<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" Runat="Server">
    <style>
        #box1
        {
            height:250px;
            width:750px;
            padding:20px;
            margin-left:30px;
            margin-top:20px;
        }
        #box2
        {
            height:400px;
            width:350px;
            margin-left:50px;
            border-radius:3px 3px 3px 3px;
            box-shadow:1px 1px 1px green;
            background-color:#f7f7f7;
            border: 1px solid #008020; 
            float:left;
        }
        #box3
        {
            height:400px;
            width:375px;
            margin-left:25px;
            border-radius:3px 3px 3px 3px;
            box-shadow:1px 1px 1px green;
            background-color:#f7f7f7;  
            float:left;
        }  
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box1"><img src="images/contact_us4.jpg" height="250" width="750" />
    </div>
    <div id="box2"> <iframe src=" https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14234.67795370525!2d80.94821!3d26.88224!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x730fe46201abc68a!2sSoftpro+India!5e0!3m2!1sen!2sin!4v1411887056855" height="400px" width="350px" > </iframe></div>
    <div id="box3"><center style="margin-top:30px; font-size:20px; color:#7a7a7a;"><img src="images/contact-us-png.png" height="100" width="100"/><br />
                Shop No-1,1st Floor,Shiv Market,Ashok<br />
                Vihar,Back Side of Ashok Vihar Police<br />
                Station,Delhi-110052.<br /><br />
                Email : <a href="http://www.mwbservices2014@gmail.com" target="_blank" style="color:green"> mwbservices2014@gmail.com</a><br />
                Email : <a href="http://www.theonlineKabadiwala@gmail.com" target="_blank" style="color:green"> theonlineKabadiwala@gmail.com</a><br />
                011-47633441<br />
                011-47533441</center></div>
</asp:Content>


