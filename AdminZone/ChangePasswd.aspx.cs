using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_ChangePasswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChangePassword_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        EncryptionManager em = new EncryptionManager();
        string CurPasswd = em.EncrptedCode(TxtCurPassword.Text);
        string NewPasswd = em.EncrptedCode(TxtNewPassword.Text);
        string cmd = "update TblAdminLogin set Passwd='" + NewPasswd + "' where AdminID='" + Session["adminid"]+ "' and Passwd='" + CurPasswd + "'";
        if (dm.ExecuteInsertUpdateOrDelete(cmd) == true)
        {
            Response.Write("<script>alert('Your Password has been Changed Successfully.')</script>");
        }
        else
        {
            Response.Write("<script>alert('Your Password is not change.')</script>");
        }
    }
}