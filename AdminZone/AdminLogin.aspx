<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminZone_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GCS</title>
    <style>
        body
        {
            background-color:black;
        }
        #outer
        {
            height:300px;
            width:400px;
            margin-left:200px;
            margin-top:50px;
            color:skyblue;
        }
        .txt
        {
            height:35px;
            width:270px;
            border:2px solid skyblue;
            color:black;
        }
        .btn
        {
            height:35px;
            width:270px;
            background-color:skyblue;
            color:black;
            text-align:center;
            font-size:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="outer">
        <h1>Admin Login</h1><hr /><br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" Placeholder="Enter Your Email"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtPassword" Placeholder="Enter Your Password" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox><br /><br />
        <asp:button ID="btnLogin" Text="Login" runat="server" CssClass="btn" OnClick="btnLogin_Click"/>
    </>
    </form>
</body>
</html>
