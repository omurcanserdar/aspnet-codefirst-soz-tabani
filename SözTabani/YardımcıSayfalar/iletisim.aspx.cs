using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Recaptcha.Web;
namespace SözTabani.YardımcıSayfalar
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(Recaptcha1.Response))
            {
                ErrorMessage.Text= "Captcha hatası";
                return;
            }
            else
            {
                RecaptchaVerificationResult result = Recaptcha1.Verify();

                if (result == RecaptchaVerificationResult.Success)
                {
                    ErrorMessage.Text = "Captcha  başarılı";

                    MailMessage ePosta = new MailMessage();
                    ePosta.From = new MailAddress("iletisim@omurserdar.com");//Gönderici mail adresi
                    ePosta.To.Add("omurserdarr@gmail.com");//Alıcı mail adresi
                    ePosta.Subject = TextBox1.Text;
                    ePosta.Body = "Gönderen e-mail : " + Email.Text + " \n \n Konu : "+TextBox1.Text + "\n \n Gönderen Mesaj : " + TextBox2.Text;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Credentials = new NetworkCredential("iletisim@omurserdar.com", "Serdar*1461");//Gönderici mail adresi ve şifre
                    smtp.Port = 587;//Mail portu genelde 587 olur
                    smtp.Host = "mail.omurserdar.com";//Gönderici mail serverı
                    smtp.Send(ePosta);
                    ErrorMessage.Text = "E-Posta Başarıyla Gönderildi";
                }
                if (result == RecaptchaVerificationResult.IncorrectCaptchaSolution)
                {
                    Response.Write("Captchalar eşleşmiyor");
                    return;
                }
            }
        }
    }
}