<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KabadRequest.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" Runat="Server">
    <style>
        #tbl
        {
            height:700px;
            width:780px;
            margin:20px;
            border:2px solid gray;
            background-color:#f0f2ee;
            box-shadow:3px 3px 3px green;
            text-align:center;
            position:absolute;
        }
        .txt
        {
            height:27px;
            width:150px;
            border:1px solid gray;
            border-radius:5px 0px 5px 0px;
        }
        .style-font
        {
            font-size:20px;
            font-family:Georgia;
            color:gray;
        }
        .btn
        {
            height:33px;
            width:130px;
            background-color:green;
            border:1px solid black;
            text-shadow:1px 1px 1px green;
            color:white;
            box-shadow:2px 2px 2px inset black;
            border-radius:10px;
            font-family:Georgia;
            font-size:18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <table align="center" id="tbl">
        <tr>
            <td colspan="4"  style="color:black; font-family:Century;font-size:25px; text-shadow:1px 1px 1px green;">Request Form</td>
        </tr>
        <tr>
            <td class="style-font">Full Name</td>
            <td><asp:TextBox ID="txtName" class="txt" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="style-font">Email</td>
            <td><asp:TextBox ID="txtEmail" class="txt" runat="server" TextMode="Email"></asp:TextBox> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style-font">Address</td>
            <td><asp:TextBox ID="txtAddress"  class="txt" maxlength="100" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="style-font">City</td>
            <td><asp:TextBox ID="txtCity"  class="txt" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCity" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style-font">State</td>
            <td><asp:TextBox ID="txtState"  class="txt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtState" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="style-font">ZIP</td>
            <td><asp:TextBox ID="txtZip"  class="txt" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtZip" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style-font">Mobile No.</td>
            <td><asp:TextBox ID="txtMobNo"  class="txt" maxlength="10" runat="server" TextMode="Number"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMobNo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="style-font">Location</td>
            <td>
              <asp:DropDownList ID="txtLocation" runat="server"  class="txt">
                  <asp:ListItem>Delhi</asp:ListItem>
                  <asp:ListItem>Noida</asp:ListItem>
                  <asp:ListItem>Ghaziabad</asp:ListItem>
              </asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td class="style-font">Captcha</td>
          <td>  
                     
                  &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="ImgCaptcha" runat="server" BackColor="#99FF99" Height="30px" style="margin-top: 0px;" Width="130px" />
                         <asp:ImageButton src="images/43-128.png" runat="server" ID="imgbtn" style="border-radius:50px; margin-top: 18px;" OnClick="imgbtn_Click" Height="41px"/>
                    
             </td>
            <td class="style-font">Enter Captcha </td>
            <td><asp:TextBox ID="txtCaptcha" runat="server"  class="txt"></asp:TextBox></td>
        </tr>
        
          <tr>
            <td colspan="2" class="style-font">Expected date of visit </td>
            <td colspan="2">
                <asp:TextBox ID="date1"  class="txt" runat="server" TextMode="Date"></asp:TextBox>&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="date1" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp; To&nbsp;
                <asp:TextBox ID="date2"  class="txt" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="date2" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style-font">Expected Time of visit </td>
            <td colspan="2">
               <asp:DropDownList ID="VisitTime" runat="server"  class="txt">
                   <asp:ListItem>Morning</asp:ListItem>
                   <asp:ListItem>Noon</asp:ListItem>
                   <asp:ListItem>Evening</asp:ListItem>
               </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Button ID="btnReg" runat="server" text="Request Now" OnClick="btnReg_Click" class="btn"/>
            </td>
        </tr>
    </table>
</asp:Content>

