using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SözTabani.Hesap
{
    public partial class sifremiunuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                /* MembershipUser u = Membership.GetUser();
               Membership.GetUserNameByEmail();
                Label2.Text = u.UserName; */

                ResetPasswordBtn.Visible = false;    
            }
        }
        public void Search_OnClick(object sender, EventArgs args)
        {
            if (string.IsNullOrEmpty(txtEmail.Text.Trim()))
            {
                Response.Write("Selam,çalışıyorum");
                return;
            }
            else
            {
                string kullaniciadi = Membership.GetUserNameByEmail(txtEmail.Text.Trim());
                if (kullaniciadi == null)
                {
                    Msg.Text = "E-mail adresi: " + txtEmail.Text + " sistemde kayıtlı değil !";
                }
                else
                {
                    Msg.Text = "Şifresi Sıfırlanacak Kullanıcı : " + kullaniciadi + " (" + txtEmail.Text + ")" + ".";
                    ResetPasswordBtn.Visible = true;
                    Label2.Visible = false;
                    txtEmail.Visible = false;
                    SearchButton.Visible = false;
                }
            }
        }

        public void ResetPassword_OnClick(object sender, EventArgs args)
        {    
            string yenisifre;
            string kullaniciadi = Membership.GetUserNameByEmail(txtEmail.Text.Trim());
            MembershipUser u = Membership.GetUser(kullaniciadi);
            if (u == null)
            {
                Msg.Text = "User" + u + " not found. Tekrar dene krdş ";
                return;
            }
            try
            {
                yenisifre = u.ResetPassword();
            }
            catch (MembershipPasswordException e)
            {
                Msg.Text = e.ToString();
                return;
            }
            catch (Exception e)
            {
                Msg.Text = e.Message;
                return;
            }
            if (yenisifre != null)
            {
                try
                {
 MailMessage ePosta = new MailMessage();
                ePosta.From = new MailAddress("iletisim@omurserdar.com");//Gönderici mail adresi
                ePosta.To.Add(txtEmail.Text.Trim());//Alıcı mail adresi
                ePosta.Subject = "Söz Tabanı Şifre Sıfırlama";
                ePosta.Body = "Söz Tabanı Yeni Şifreniz :" + yenisifre;
                SmtpClient smtp = new SmtpClient();
                smtp.Credentials = new NetworkCredential("iletisim@omurserdar.com", "Serdar*1461");//Gönderici mail adresi ve şifre
                smtp.Port = 587;//Mail portu genelde 587 olur
                smtp.Host = "mail.omurserdar.com";//Gönderici mail serverı
                smtp.Send(ePosta);
                Msg.Text = "Şifreniz Sıfırlandı. Yeni şifren kayıtlı e-mail hesabına iletildi : " + yenisifre;
                }
                catch (Exception ex)
                {

                    Msg.Text = ex.ToString();
                }
               
            }
            else
            {
                Msg.Text = "Değişik bir hata meydana geldi,lütfen daha sonra tekrar deneyin.";
            }
        }
    }
}