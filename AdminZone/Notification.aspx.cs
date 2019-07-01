using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_Notification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChangePassword_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "insert into TblNotification(NotificationMsg,NDT) values('"+TxtNotification.Text+"','"+DateTime.Now.ToString()+"')";
        if (dm.ExecuteInsertUpdateOrDelete(cmd) == true)
        {
            GridView1.DataBind();
            Response.Write("<script>alert('Your New Notification is updated successfully')</script>");

        }
        else
        {
            Response.Write("<script>alert('Your Notification is not updated successfully')</script>");
        }
        TxtNotification.Text = "";
    }
}