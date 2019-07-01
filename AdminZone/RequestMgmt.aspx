<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="RequestMgmt.aspx.cs" Inherits="AdminZone_RequestMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box
        {
            height:500px;
            width:600px;
            padding-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <br />
    <center><h1 style="color:green;text-shadow:1px 1px 1px black;">Consumer's Request</h1></center> <hr /><br />
    <div id="box"><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" Width="562px" CellPadding="4" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
            <asp:BoundField DataField="VisitDateFrom" HeaderText="VisitDateFrom" SortExpression="VisitDateFrom" />
            <asp:BoundField DataField="VisitDateTo" HeaderText="VisitDateTo" SortExpression="VisitDateTo" />
            <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" SortExpression="ReqDate" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\GarbageServiceDatabase.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [Name], [Email], [Zip], [Location], [MobNo], [VisitDateFrom], [VisitDateTo], [ReqDate] FROM [TblKabadRequest]"></asp:SqlDataSource>
 
    </div>
</asp:Content>

