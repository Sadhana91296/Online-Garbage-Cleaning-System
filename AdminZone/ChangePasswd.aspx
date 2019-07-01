<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePasswd.aspx.cs" Inherits="AdminZone_ChangePasswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    #box
    {
    height:400px;
    width:440px;
    background-color:#DCDCDC;
    box-shadow:3px 3px 3px black;
    margin-left:100px;
    margin-top:70px;
    padding-left:60px;
    padding-top:10px;
    border-radius:0px 10px 0px 10px;
    }
        #box:hover
        {
            background-color:#CCFFFF;
            -moz-transition:background-color 2s;
                 -webkit-transition:background-color 2s;
        }
        .txt
        {
            height:40px;
            width:300px;
            border:1px solid gray;
            padding-left:8px;
        }
        .btn
        {
            height:40px;
            width:150px;
            background-color:green;
            box-shadow:3px 3px 3px black;
            border-radius:8px;
            color:white;;
            text-shadow:2px 2px 2px black;
            margin-left:80px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
          <h2 style="color:green; text-shadow:1px 1px 1px black;">Change Password</h2><hr /><br />
        <asp:TextBox ID="TxtCurPassword" runat="server" CssClass="txt" TextMode="Password" placeholder="Enter Current Password"></asp:TextBox >
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCurPassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="TxtNewPassword" runat="server" CssClass="txt" TextMode="Password" placeholder="Enter New Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNewPassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="TxtConfPassword" runat="server" CssClass="txt" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TxtNewPassword" ControlToValidate="TxtConfPassword" ErrorMessage="Password is not match" ForeColor="#CC0000"></asp:CompareValidator>
        <br />
        <br /><br />
        <asp:Button ID="BtnChangePassword" runat="server" CssClass="btn" Text="CHANGE PASSWORD" OnClick="BtnChangePassword_Click"/>
    </div>
</asp:Content>

