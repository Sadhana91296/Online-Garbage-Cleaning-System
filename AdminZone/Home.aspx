<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="AdminZone_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../GeneralMasterStyle/AdminStyle.css" rel="stylesheet" type="text/css" />
    <style>
        #box
        {
            height:580px;
            width:640px;
            margin:40px;
            background-color:#DCDCDC;
            box-shadow:3px 3px 3px green;
            border-radius:0px 10px 0px 10px;
            padding-left:20PX;
            float:left;
            margin-left:70px;
        }
        .box1
        {
            height:100px;
            width:150px;
            float:left;
            background-color:gray;
            margin:20px;
            box-shadow:3px 3px 3px black;
            border-radius:0px 20px 0px 20px;
            color:white;
            font-family:Georgia;
            font-size:21px;
            padding:10px;
            text-shadow:1px 1px 1px green;
            text-align:center;
        }
            .box1:hover
            {
                background-color:#CCFFFF;
                color:black;
                -moz-transition:background-color 2s;
                -webkit-transition:background-color 2s;

                
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="outer">
        <div id="header">
            <div id="logo">
                <img src="../images/logo.jpg" height="150px" width="150px" style="border-radius:20px 0px 0px 0px;"/>
            </div>
            <div id="sitetitle">GARBAGE CLEANING SERVICE</div>
        </div>
        <div id="main">
            <div id="LMain">
                <asp:Menu ID="menu1" runat="server">
                    <Items>
                        <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/AdminZone/Home.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Request Management" Value="Request Management" NavigateUrl="~/AdminZone/RequestMgmt.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Enquairy Management" Value="Enquairy Management" NavigateUrl="~/AdminZone/EnquairyMgmt.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Notification" Value="Notification" NavigateUrl="~/AdminZone/Notification.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Send SMS" Value="Send SMS" NavigateUrl="~/AdminZone/SendSMS.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Change Password" Value="Change Password" NavigateUrl="~/AdminZone/ChangePasswd.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/AdminZone/AdminLogout.aspx"></asp:MenuItem>
                    </Items>
                    <StaticMenuItemStyle BackColor="#CCFFFF" Font-Bold="False" Font-Size="20px" ForeColor="black" HorizontalPadding="5px" VerticalPadding="30px" />

                </asp:Menu>
            </div>
            <div id="RMain">
                <div id="box">
                    <h1 style="text-align:center; color:gray; text-shadow:1px 1px 1px black;">DASHBOARD</h1><hr />
                         <a href="Home.aspx" target="_blank"><div class="box1"><br />HOME</div></a>
                         <a href="RequestMgmt.aspx" target="_blank"><div class="box1"><br />REQUEST MANAGEMENT</div></a>
                         <a href="EnquairyMgmt.aspx" target="_blank"><div class="box1"><br />ENQUAIRY MANAGEMENT</div></a>
                         <a href="FeedbackMgmt.aspx" target="_blank"><div class="box1"><br />NOTIFICATION</div></a>
                         <a href="SendSMS.aspx" target="_blank"><div class="box1"><br />SEND SMS</div></a>
                         <a href="ChangePasswd.aspx" target="_blank"><div class="box1"><br />CHANGE PASSWORD</div></a>
                         <a href="AdminLogout.aspx" target="_blank"><div class="box1" style="margin-left:235px;"><br />LOGOUT</div></a>

                </div>
            </div>
        </div>
        <div id="footer">
            Copyright &copy; To :Goverment Girls Polytechnic Varanasi.
        </div>
    </div>
    </form>
</body>
</html>
