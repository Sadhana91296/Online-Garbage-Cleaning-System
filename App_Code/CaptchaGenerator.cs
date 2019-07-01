using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;

/// <summary>
/// Summary description for CaptchaGenerator
/// </summary>
public class CaptchaGenerator
{
	public CaptchaGenerator()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string GetCode()
    {
        Random r = new Random();
        string code;
        char ch1, ch2, ch3, ch4, ch5, ch6;
        ch1 = Convert.ToChar(r.Next(80, 120));
        ch2 = Convert.ToChar(r.Next(97,122));
        ch3 = Convert.ToChar(r.Next(65, 97));
        ch4 = Convert.ToChar(r.Next(97, 122));
        ch5 = Convert.ToChar(r.Next(65, 90));
        ch6 = Convert.ToChar(r.Next(65, 122));
        code = "" + ch1 + ch2 + ch3 + ch4 + ch5 + ch6;
        return code;
    }
    Bitmap CreateImage(string ImageText)
    {
        Bitmap bmp = new Bitmap(130, 35);
        Font f = new Font("Arial", 23, FontStyle.Strikeout, GraphicsUnit.Pixel);
        Graphics g = Graphics.FromImage(bmp);
        g.Clear(Color.Green);
        Pen p = new Pen(Color.White);
        g.DrawRectangle(p, 0, 0, 129, 34);
        g.DrawString(ImageText, f, new SolidBrush(Color.White), 22, 7, StringFormat.GenericDefault);
        g.Flush();
        return bmp;

    }

    public string[] GetRandomCodeAndImage()
    {
        string CaptchaCode = GetCode();
        Bitmap b = CreateImage(CaptchaCode);
        if (!Directory.Exists(HttpContext.Current.Server.MapPath("~/CaptchaImg")))
        {
            Directory.CreateDirectory(HttpContext.Current.Server.MapPath("~/CaptchaImg"));
        }
        string FileNameWithExt = Path.GetRandomFileName() + ".jpg";
        b.Save(HttpContext.Current.Server.MapPath("~/CaptchaImg/" + FileNameWithExt), ImageFormat.Jpeg);
        string[] Arr = new string[2];
        Arr[0] = CaptchaCode;
        Arr[1] = "~/CaptchaImg/" + FileNameWithExt;
        return Arr;
    }

}