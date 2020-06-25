using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.Hesap
{
    public partial class giris : System.Web.UI.Page
    {


  
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.IsAuthenticated && string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
            //{
                
            //    Response.Redirect("/error");
            //}
            if (Request.IsAuthenticated)
            {
                Response.Redirect("/anasayfa");
            }
        }

        protected void BtnLogin_Click1(object sender, EventArgs e)
        {
            string username = UserName.Text.Trim();
            string password = Password.Text.Trim();

            if (string.IsNullOrEmpty(username))
            {
                ErrorMessage.Text = "Kullanıcı Adı Gerekli ! ";
                return;
            }

            if (string.IsNullOrEmpty(password))
            {
                ErrorMessage.Text = "Şifre Gerekli !";
                return;
            }

            if (Membership.ValidateUser(username, password) == true)
            {
                if (cbxbenihatirla.Checked==true)
                {
                    // cookie oluşturduk
                    HttpCookie cer1 = new HttpCookie("cerez");
                    cer1.Values.Add("kullaniciadi", UserName.Text);
                    cer1.Values.Add("parola", Password.Text);
                    cer1.Expires = DateTime.Now.AddDays(30); //çerezimizin geçerli olacağı süreyi girdik- 30 gün
                    Response.Cookies.Add(cer1); //çerezi ekledik (client'e)
                }
                FormsAuthentication.RedirectFromLoginPage(username, true);
                Response.Redirect("~/anasayfa");
              
            }
            else
            {
                ErrorMessage.Text = "Kullanıcı adı veya şifre geçersiz !";
        
            }
        }
    }
}