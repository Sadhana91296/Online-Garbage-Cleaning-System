using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    CaptchaGenerator cg = new CaptchaGenerator();
    DBManager dm = new DBManager();

    static string[] CaptchaCodeAndImage = new string[2];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            CaptchaCodeAndImage = cg.GetRandomCodeAndImage();
            ImgCaptcha.ImageUrl = CaptchaCodeAndImage[1];
        }
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        if (txtCaptcha.Text == CaptchaCodeAndImage[0])
        {
            // code for registration...
            string MyCommand1;
            MyCommand1 = "insert into TblKabadRequest values('" + txtName.Text + "','"+txtEmail.Text+"','"+txtAddress.Text+"','"+txtCity.Text+"','"+txtState.Text+"','"+txtZip.Text+"','" + txtMobNo.Text + "','"+txtLocation.Text+"','"+date1.Text+"','"+date2.Text+"','"+VisitTime.Text+"','" + DateTime.Now.ToString() + "')";
            bool x = dm.ExecuteInsertUpdateOrDelete(MyCommand1);
            if (x == true)
            {
                Response.Write("<script>alert('Your Request is completed successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Your Request is not completed');</script>");
            }
            txtName.Text = "";
            txtEmail.Text="";
            txtAddress.Text="";
            txtCity.Text="";
            txtState.Text="";
            txtZip.Text="";
            txtMobNo.Text = "";
          }
        else
        {
            Response.Write("<script>alert('Invalid Captcha Code...');</script>");
        }
    }
       
    protected void imgbtn_Click(object sender, ImageClickEventArgs e)
{
        CaptchaCodeAndImage = cg.GetRandomCodeAndImage();
        ImgCaptcha.ImageUrl = CaptchaCodeAndImage[1];
}
  
}