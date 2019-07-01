<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="Notification.aspx.cs" Inherits="AdminZone_Notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
          #box
    {
    height:250px;
    width:440px;
    background-color:#DCDCDC;
    margin-left:120px;
    margin-top:70px;
    padding-left:60px;
    padding-top:20px;
    box-shadow:3px 3px 3px black;
    }
        #box:hover
        {
            background-color:#CCFFFF;
            -moz-transition:background-color 2s;
               -webkit-transition:background-color 2s;
        }
        .txt
        {
            height:50px;
            width:300px;
            border:1px solid gray;
            padding-left:8px;
            resize:none;
        }
        .btn
        {
            height: 40px;
            width: 150px;
            background-color:green;
            box-shadow: 3px 3px 15px black inset;
            color: #CCFFFF;
            text-shadow: 2px 2px 2px black;
            border-radius: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <h2 style="color:green; text-shadow:1px 1px 1px black;">Notification</h2><hr /><br />
        <asp:TextBox ID="TxtNotification" runat="server" CssClass="txt" placeholder="Enter Events Message"></asp:TextBox ><br /><br />
        <asp:Button ID="BtnChangePassword" runat="server" CssClass="btn" Text="ADD NOTIFICATION" OnClick="BtnChangePassword_Click"/></div>
    <center><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="NID" HeaderText="NID" InsertVisible="False" ReadOnly="True" SortExpression="NID" />
                <asp:BoundField DataField="NotificationMsg" HeaderText="NotificationMsg" SortExpression="NotificationMsg" />
                <asp:BoundField DataField="NDT" HeaderText="NDT" SortExpression="NDT" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\GarbageServiceDatabase.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [TblNotification]"></asp:SqlDataSource>

</asp:Content>

