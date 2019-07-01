using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_SendSMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Sendbtn_Click(object sender, EventArgs e)
    {
        SMSSender ms = new SMSSender();
        bool x = ms.SendSMS(txtMobNo.Text, txtMsg.Text);
        if (x == true)
        {

            txtMobNo.Text = "";
            txtMsg.Text = "";
            Response.Write("<script>alert('SMS Sent Successfully.')</script>");
        }
        else
        {
            Response.Write("<script>alert('Unable To Send SMS.')</script>");
        }
    }
}