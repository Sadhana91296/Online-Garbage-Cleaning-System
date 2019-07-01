using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string command = "insert into TblEnquairy(EName,Email,MobNo,Msg,EDate) values('" + TxtName.Text + "','" + TxtEmail.Text + "','" + TxtMobNo.Text + "','" + TxtMsg.Text + "','"+DateTime.Now.ToString()+"') ";
        bool result = dm.ExecuteInsertUpdateOrDelete(command);
        if (result == true)
        {
            Response.Write("<script>alert('Your Enquiry is Completed as soon as we contact you.')</script>");
        }
        else
        {
            Response.Write("<Script>alert('Your Enquiry is Completed due to some technical problem')</script>");
        }
        TxtEmail.Text = "";
        TxtMobNo.Text = "";
        TxtMsg.Text = "";
        TxtName.Text = "";
    }
}