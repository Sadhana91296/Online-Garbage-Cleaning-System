<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="imagegallery.aspx.cs" Inherits="imagegallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" Runat="Server">
    <style>
        #box1
        {
            height:650px;
            width:720px;
            float:left;
            background-color:#f0f2ee;
            margin:45px;
            margin-top:15px;
            border-radius:15px 0px 15px 0px;
            box-shadow:4px 4px 4px green;
            border:1px solid gray;
            padding:15px;
        }
        #box2
        {
            height:650px;
            width:720px;
            float:left;
            background-color:#f0f2ee;
            margin:45px;
            margin-top:15px;
            border-radius:15px 0px 15px 0px;
            box-shadow:4px 4px 4px green;
            border:1px solid gray;
            padding:15px;
            display:none;
        }
        .row
        {
            height:180px;
            width:750px;
            float:left;
            margin:10px;
        }
            .col:hover
            {
                border-radius:0px 10px 0px 10px ;
                border:4px solid green;
  
                -moz-transition:border-radius 2s;
                -webkit-transition:border-radius 2s;
            }
        .col
        {
            height:180px;
            width:200px;
            float:left;
            margin:10px;
            border:4px solid black;
            border-radius:10px 0px 10px 0px;
        }
        .img
        {
            height:180px;
            width:200px;
            border-radius:10px 0px 10px 0px;
        }
        .btn
        {
            height:30px;
            width:120px;
            background-color:green;
            color:white;
            margin-top:20px;
           margin-left:500px;
        }
    </style>
    <script>
        function NextPrev() {
            var dv1 = document.getElementById("box2");
            var dv2 = document.getElementById("box1");
            var lnk = document.getElementById("lnkNP");
            var a = dv1.style.display;
            var b = dv2.style.display;
            if (a == "block" && b == "none") {
                dv1.style.display = "none";
                dv2.style.display = "block";
            }
            else {
                dv1.style.display = "block";
                dv2.style.display = "none";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <h2 style="font-family:Monotype Corsiva; text-align:center; color:black; font-size:30px; text-shadow:1px 1px 1px green;">Image Gallery</h2><hr />
    <div id="box1">
            <div class="row">
                 <a href="images/img1.gif" target="_blank"><div class="col"><img src="images/img1.gif" class="img" /></div></a>
                 <a href="images/img2.jpg" target="_blank"><div class="col"><img src="images/img2.jpg" class="img" /></div></a>
                 <a href="images/img3.jpg" target="_blank"><div class="col"><img src="images/img3.jpg" class="img" /></div></a>
           </div>
        <div class="row">
                 <a href="images/img4.jpg" target="_blank"><div class="col"><img src="images/img4.jpg" class="img" /></div></a>
                 <a href="images/img5.jpg" target="_blank"><div class="col"><img src="images/img5.jpg" class="img" /></div></a>
                 <a href="images/img6.jpg" target="_blank"><div class="col"><img src="images/img6.jpg" class="img" /></div></a>      
           </div>
        <div class="row">
                 <a href="images/img7.jpg" target="_blank"><div class="col"><img src="images/img7.jpg" class="img" /></div></a>
                 <a href="images/img8.jpg" target="_blank"><div class="col"><img src="images/img8.jpg" class="img" /></div></a>
                 <a href="images/img9.jpg" target="_blank"><div class="col"><img src="images/img9.jpg" class="img" /></div></a>      
           </div>
            <input type="button" id="lnkNP" value="Next" onclick="NextPrev()" class="btn"/>
    </div>
  
    <div id="box2">
            <div class="row">
                 <a href="images/img10.jpg" target="_blank"><div class="col"><img src="images/img10.jpg" class="img" /></div></a>
                 <a href="images/img11.jpg" target="_blank"><div class="col"><img src="images/img11.jpg" class="img" /></div></a>
                 <a href="images/img12.jpg" target="_blank"><div class="col"><img src="images/img12.jpg" class="img" /></div></a>  
            </div>
        <div class="row">
                 <a href="images/img13.jpg" target="_blank"><div class="col"><img src="images/img13.jpg" class="img" /></div></a>
                 <a href="images/img14.jpg" target="_blank"><div class="col"><img src="images/img14.jpg" class="img" /></div></a>
                 <a href="images/img15.jpg" target="_blank"><div class="col"><img src="images/img15.jpg" class="img" /></div></a>    
           </div>
        <div class="row">
                 <a href="images/img16.jpg" target="_blank"><div class="col"><img src="images/img16.jpg" class="img" /></div></a>
                 <a href="images/img17.jpg" target="_blank"><div class="col"><img src="images/img17.jpg" class="img" /></div></a>
                 <a href="images/img18.jpeg" target="_blank"><div class="col"><img src="images/img18.jpeg" class="img" /></div></a>     
           </div>
              <input type="button" id="Button1" value="Previous" onclick="NextPrev()" class="btn"/>
        </div>

</asp:Content>

