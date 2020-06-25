using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.Hesap
{
    public partial class sifredegistir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.IsAuthenticated)
            {
                Response.Redirect("/giris");
            }
        }

        protected void Change(object sender, EventArgs e)
        {
            string mevcut_sifre = Password.Text.Trim();
            string yeni_sifre = yenisifre.Text.Trim();
            string yeni_sifre_tekrar = yenisifre_tekrar.Text.Trim();


            if (string.IsNullOrEmpty(mevcut_sifre))
            {
                ErrorMessage.Text = "Mevcut Şifrenizi girmelisiniz";
                return;
            }
            if (string.IsNullOrEmpty(yeni_sifre))
            {
                ErrorMessage.Text = "Yeni Şifrenizi girmelisiniz";
                return;
            }
            if (yeni_sifre.Length < 8)
            {
                ErrorMessage.Text = "Şifre En Az 8 Karakter Uzunluğunda ve 1 Alpha Numeric (*,. gibi) karakter içermelidir";
                return;
            }

            if (string.IsNullOrEmpty(yeni_sifre_tekrar))
            {
                ErrorMessage.Text = "Yeni Şifrenizi(tekrar) girmelisiniz";
                return;
            }
            if (yeni_sifre != yeni_sifre_tekrar)
            {
                ErrorMessage.Text = "Şifreler Eşleşmiyor !";
                return;
            }

            MembershipUser user = Membership.GetUser();
            if (user != null)
            {
                user.ChangePassword(mevcut_sifre, yeni_sifre);
                ErrorMessage.Text = "Şifreniz Değiştirildi";
            }

        }
    }
}