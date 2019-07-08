<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OnlineGCS</title>  
    <link href="GeneralMasterStyle/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script>
        var allimages = ["images/slide1.png", "images/slide2.png", "images/slide3.png", "images/slide4.png ", "images/slide4.png", "images/slide5.png"];
        var imagenumber = 0;
        function moveMySlider()
        {
            var myimgtag = document.getElementById("img1");
            myimgtag.src = allimages[imagenumber];
            imagenumber++;
            if (imagenumber == allimages.length) {
                imagenumber = 0;
            }
            window.setTimeout("moveMySlider()", 1000);
        }
        function popUp() {
            var a = document.getElementById("div");
            var btn = document.getElementById("btnEnquiry");
            var status = a.style.display;
            if (status != "block") {
                a.style.display = "block";
                btn.style.color ="skyblue";
            }
            else {
                a.style.display = "none";
                btn.style.color = "white";
            }

        }
    </script>
    <style>
          #div
        {
            width:300px;
            /*height:0px auto;*/
            background:-moz-repeating-linear-gradient(gray,#DCDCDC,skyblue);
             background:-webkit-repeating-linear-gradient(gray,#DCDCDC,skyblue);
            font-size:x-large;
            z-index:2;
            min-height:400px;
            display:none;
            padding:10px;
            position:absolute;
            top:200px;
            right:50px;
            z-index:2;
            padding-bottom:20px;
            border-radius:10px 0px 10px 0px;
            color:white;
            text-shadow:1px 1px 1px #99CC00;
        }
        .txt
        {
            width:250px;
            height:40px;
            border-radius:5px 0px 5px 0px;
            margin:5px;
            padding:5px;
        }
        .btn
        {
            height:50px;
            width:150px;
            background-color:black;
            color:white;
            border-radius:10px;
        }
         #sld
        {
            height:300px;
            width:1000px;
            float:left;
        }
        #Lmain
        {
            height:423px;
            width:193px;
            float:left;
            border:1px solid #DCDCDC;
            box-shadow:2px 2px 2px 2px #DCDCDC ;
            margin-top:5px;
            margin-left:10px;
        }
        #Rmain
        {
            height:430px;
            width:780px;
            float:left;
            padding-left:5px;
         
         }
         #Rmain1
         {
                height:420px;
                width:476px;
                float:left;
                margin:6px;
                border:1px solid #DCDCDC;
                box-shadow:2px 2px 2px 2px #DCDCDC;
            }
            #Rmain11
            {
                height:195px;
                width:460px;
                float:left;
                margin:5px;
                box-shadow:2px 2px 2px 2px #DCDCDC;
                border:1px solid #DCDCDC;
            }
            #Rmain12
            {
                height:195px;
                width:460px;
                float:left;
                margin:5px;
                box-shadow:2px 2px 2px 2px #DCDCDC;
                border:1px solid #DCDCDC;
            }
            #Rmain2
            {
                height:416px;
                width:276px;
                float:left;
                margin:6px;
                border:1px solid #DCDCDC;
                box-shadow:2px 2px 2px 2px #DCDCDC;
            }
                #Rmain11:hover
                {
                    background-color:#cffbbd;
                    -moz-transition:background-color 2s;
                    -webkit-transition:background-color 2s;
                }
                
                #Rmain12:hover
                {
                    background-color:#cffbbd;
                    -moz-transition:background-color 2s;
                    -webkit-transition:background-color 2s;
                }
                
                #Rmain2:hover
                {
                    background-color:#cffbbd;
                    -moz-transition:background-color 2s;
                    -webkit-transition:background-color 2s;
                }

    </style>
</head >
<body onload="moveMySlider()">
    <form id="form1" runat="server">
    <div id="outer">
        <div id="header">
            <div id="logo">
<img src="images/logo.jpg" height="130" width="150" style="border-radius:20px 0px 0px 0px;" />
            </div>
            <div id="sitetitle">GARBAGE CLEANING SERVICE</div>
        </div>
        <div id="menu">
            <asp:Menu ID="menu1" runat="server" Height="10px" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="HOME" Value="HOME" NavigateUrl="~/index.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="ABOUT US" Value="ABOUT US" NavigateUrl="~/aboutus.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="KABAD REQUEST" Value="KABAD REQUEST" NavigateUrl="~/KabadRequest.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="IMAGE GALLERY" Value="IMAGE GALLERY" NavigateUrl="~/imagegallery.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="RATE LIST" Value="RATE LIST" NavigateUrl="~/ratelist.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="CONTACT US" Value="CONTACT US" NavigateUrl="~/contactUs.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle Font-Underline="True" ForeColor="green" />
                <StaticMenuItemStyle BorderColor="Silver" BorderStyle="None" Font-Bold="False" Font-Names="Arial" Font-Underline="False" ForeColor="gray" HorizontalPadding="30px" VerticalPadding="15px" />
            </asp:Menu>
        </div>
        <div id="main">
            <div id="sld">
<img id="img1" height="300" width="1000" />
    </div>
            <div id="Lmain">
                <marquee direction="up" onmouseover="stop();" onmouseout="start();" style="height: 400px; width: 171px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                       <asp:TemplateField>
                          <ItemTemplate>
                              <asp:Label ID="lblNotification" runat="server" Text='<%#Eval("NotificationMsg")  %>' ForeColor="Red"></asp:Label><br />
                              <asp:Label ID="lbldate" runat="server" Text='<%#Eval("NDT") %>' ForeColor="Red"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                    </Columns>
                </asp:GridView></marquee>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\GarbageServiceDatabase.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [NotificationMsg], [NDT] FROM [TblNotification] ORDER BY [NID] DESC" EnableViewState="False"></asp:SqlDataSource>
&nbsp;</div>
            <div id="Rmain">
                <div id="Rmain1">
                    <div id="Rmain11" style=" padding:5px; ">
                        <h2 style="color:green; ">Reuse</h2><hr /><br />
                        <p style="text-align:justify;font-size:20px; color:gray; ">
                            Many items found around the home can be
                             used for different purposes.So, before
                             you throw those items away,think about how
                            they can be reused.And than we peforme recyling 
                            process for use them.
                        </p>
                    </div>
                    <div id="Rmain12" style=" padding:5px; ">
                        <h2 style="color:green; ">Recycle</h2><hr /><br />
                        <p style="text-align:justify;font-size:20px; color:gray; ">
                            Recycling helps protect the
                            environment.Reclying reduces the need for extracting,
                            refining and processing raw materials.
                            As recycling saves energy it also reduces
                            greenhouse gas emission, which helps to 
                            tackle climate change.
                        </p>
                    </div>
                </div>
                <div id="Rmain2">
                    <div id="Rmain21" style="padding:5px">
                        <img src="images/home.jpg" width="265px" height="200px" /><br />
             <h2 style="color:green; ">Reduce</h2><hr /><br />
                        <p style="text-align:justify;font-size:20px; color:gray; ">
                           Bring reusable bags and containers when shopping, traveling or packing lunches or leftovers. Choose products that are
                            returnable,reusable or refillable over single use items.
                        </p>
                </div>
            </div>
        </div>
        <div id="footer">
            <div id="f1">
                <h2 style="color:black;">Commercial/Roll Off</h2>
                Delivery and pickup of your <br />roll-off and dumpster.
                <img src="images/tank.png" height="100" width="200" /><br />
                &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;   
                <a href="KabadRequest.aspx" target="_blank"><input type="button" value="ORDER" style="height:30px; width:80px; color:white; background-color:green; font-family:Arial; border-radius:5px;" /></a>
                   </div>
            <div id="f2">
              <h2 style="color:black;">Contact Us</h2>
                Shop No-1,1st Floor,Shiv Market,Ashok<br />
                Vihar,Back Side of Ashok Vihar Police<br />
                Station,Delhi-110052.<br /><br />
                Email : <a href="http://www.mwbservices2014@gmail.com" target="_blank" style="color:green"> mwbservices2014@gmail.com</a><br />
                Email : <a href="http://www.theonlineKabadiwala@gmail.com" target="_blank" style="color:green"> theonlineKabadiwala@gmail.com</a><br />
                011-47633441<br />
                011-47533441
                   </div>
            <div id="f3">
                <h2 style="color:black;">Social Media</h2><br />
                <a href="http://www.facebook.com" target="_blank"><img src="images/1.png" style="border-radius:50px;" /></a>
                <a href="http://www.twitter.com" target="_blank"><img src="images/2.png" style="border-radius:50px;" /></a>
                <a href="http://www.linkedin.com" target="_blank"><img src="images/3.png" style="border-radius:50px;" /></a>
                <a href="http://www.youtube.com" target="_blank"><img src="images/4.png" style="border-radius:50px;" /></a>
            </div>
        </div>
        <div id="Mainfooter">
       
        </div>
    </div>
         <!---Enuiry is started--->
        <div id="div">
   <h1>Enquiry Form</h1><br />
            <asp:TextBox ID="TxtName" runat="server" CssClass="txt" placeholder="Enter Your Name "></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TxtEmail" runat="server" CssClass="txt" placeholder="Enter Your Email ID"></asp:TextBox>                 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="TxtMobNo" runat="server" CssClass="txt" placeholder="Enter Your Mobile Number"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMobNo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             <br />
            <asp:TextBox ID="TxtMsg" runat ="server" CssClass="txt" placeholder="Enter Your Message"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtMsg" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br /><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server"  Text="Click Here" CssClass="btn" Height="25" Width="90" OnClick="Button1_Click" />
            </div>
        <a onclick="popUp()" id="btnEnquiry" href="#" style="font-size:17px; width:30px; height:230px; position:absolute; top:200px; z-index:3; border-radius:10px 0px 0px 10px; right:0px; text-decoration:none; padding:10px; background:black; color:skyblue; position:fixed;">E<br />N<br />Q<br />U<br />I<br />R<br />Y<br /><br />N<br />O<br />W</a>
        <!---End of Enquiry form--->  
    </form>
</body>
</html>
