using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        EncryptionManager em = new EncryptionManager();
        DBManager dm = new DBManager();
        string epass = em.EncrptedCode(txtPassword.Text);
        string command = "select * from TblAdminLogin where AdminID='"+txtEmail.Text+"' and Passwd='"+epass+"'";
        DataTable dt = dm.ExecuteSelect(command);
        if (dt.Rows.Count > 0)
        {
            string cm = "update TblAdminLogin set LCount=(LCount+1), LoginTime='" + DateTime.Now.ToString() + "' where AdminID='" + txtEmail.Text + "' and Passwd='" + epass + "' and Status=true";
            bool x = dm.ExecuteInsertUpdateOrDelete(cm);
            Session["adminid"] = txtEmail.Text;
            Response.Redirect("~/AdminZone/Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Your ID or Password is invalid');</script>");
       
        }

    }
}