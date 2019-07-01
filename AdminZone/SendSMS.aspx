<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="SendSMS.aspx.cs" Inherits="AdminZone_SendSMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box
        {
            height:380px;
            width:450px;
            float:left;
            background-color:#DCDCDC;
            margin-left:80px;
            margin-top:100px;
            border-radius:0px 10px 0px 10px;
            box-shadow:3px 3px 3px green;
            padding:20px;
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
            width:250px;
            border:2px solid gray;
            border-radius:0px 5px 0px 5px;
            margin-left:100px;

        }
        .btn
        {
            height:40px;
            width:90px;
            background-color:green;
            color:white;
            text-align:center;
            margin-left:180px;
                  border-radius:0px 5px 0px 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <h2 style="color:green; text-shadow:1px 1px 1px black; margin-left:150px;">SEND SMS</h2><hr /><br />
        <asp:TextBox ID="txtMobNo" runat="server" placeholder="Enter Your Mobile Number" CssClass="txt"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtMsg" runat="server" placeholder="Enter Your Message" TextMode="MultiLine" CssClass="txt"></asp:TextBox><br /><br />
        <asp:Button ID="Sendbtn" runat="server" Text="SEND SMS" CssClass="btn" OnClick="Sendbtn_Click" />
    </div>
</asp:Content>

