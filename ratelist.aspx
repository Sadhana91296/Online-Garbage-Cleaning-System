<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ratelist.aspx.cs" Inherits="ratelist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" Runat="Server">
    <style>
         .auto-style1
        {
            width: 90%;
            border:1px solid gray;
            background-color:#DCDCDC;
            margin-left:40px;
            margin-top:50px;
            border-radius:10px 0px 10px 0px;
            box-shadow:2px 2px 2px 2px green;
        }          .auto-style2
        {
            background-color: rgba(75, 199, 33, 0.44);
            text-align:center;
            padding:10px;
            text-shadow:1px 1px 1px green;
        }
        .auto-style3
        {
            background-color:azure;
            text-align:center;
            padding:5px;
            font-family:Georgia;
            text-shadow:1px 1px 1px green;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <table class="auto-style1">
            <tr>
                <td colspan="4" class="auto-style2" style="text-align:center; font-size: medium; font-weight: 900">RATE LIST OF MATERIALS</td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: medium; font-weight: 700">CITY</td>
                 <td class="auto-style2" style="font-size: medium; font-weight: 700">MATERIAL</td>
                 <td class="auto-style2" style="font-size: medium; font-weight: 700">PRICE PER</td>
                 <td class="auto-style2" style="font-size: medium; font-weight: 700">MATERIAL RATE</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Newspaper</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">10/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Books</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">8/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Plastics</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">14/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Aluminium</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">80/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Bottles</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">0.80/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Iron</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">20/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Milk Cover</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">8/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Cardbox</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">8/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Magazines</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">8/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Tin</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">15/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Whitepapers</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">10/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Steel</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">28/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Brass</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">250/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Water/Oil Cover</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">15/-</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Wooden</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">NA*</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Batteries</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">NA*</td>
            </tr>
            <tr>
                <td class="auto-style3">Delhi</td>
                <td class="auto-style3">Copper</td>
                <td class="auto-style3">Kg</td>
                 <td class="auto-style3">350/-</td>
            </tr>
        </table>
    </div>
</asp:Content>

