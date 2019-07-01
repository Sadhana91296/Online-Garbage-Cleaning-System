<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" Runat="Server">
<style>
        #box1
        {
            height:675px;
            width:770px;
            background-color:#f2f2f2;
            margin-bottom:25px;
            margin-top:25px;
            margin-left:25px;
            box-shadow:3px 3px 3px 3px green;
            border:2px solid gray;
            border-radius:10px 0px 10px 0px;
            padding:10px;
        }
        #box2
        {
            height:300px;
            width:300px;
            background-color:#e2e2e2;
            margin-left:15px;
            margin-top:20px;
            box-shadow:2px 2px 2px 2px gray;
            border-radius:5px 5px 5px 5px;
            float:left;
        }
        #box3
        {
            height:290px;
            width:420px;
            margin-top:20px;
            padding-left:25px;
            float:left;
            font-size:22px;
            text-align:justify;
        }
        #box4
        {
            height:300px;
            width:730px;
            padding:5px;
            margin-left:15px;
            float:left;
            font-size:22px;
            text-align:justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box1">
        <center>
       <h1 style="text-shadow:1px 1px 1px green;">About Us</h1></center><hr />
        <div id="box2"><img src="images/about.jpg" height="300" width="300" /></div>
        <div id="box3"><br />The innovation is fueled by employees.First,a unique management approach that unshackles the creative energies of our
            91,691 plus employees,and puts this collective force to work in the service of customers business problems by engaging HCL employees in
            a way that allows them to deliver business value-whether.It involves enterprise application services,IT infrastructure
             management,custom applicationservices,engineering and R & D
            </div>
        <div id="box4"> services,business service or enterprise transformation services.We turn technology into a distinct competative
            advantage for our customer.we call it the Employees First effect!The success of our and our customer's business,however,is part of a bigger
            picture. Sustainability has been and will remain remain a corner stone of our global operations.We believe business growth can only be 
            sustained when pursuits of profit are balanced with social and environment imperatives.For example,HCL's impact on the communities 
            where it operators in the form of local creation job in central to our definition of success.For example,HCL's impact on the communities 
            where it operators in the form of local creation job in central to our definition of success.
        </div>
    </div>

</asp:Content>

