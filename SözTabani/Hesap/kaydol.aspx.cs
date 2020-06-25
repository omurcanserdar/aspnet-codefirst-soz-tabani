using SözTabani.Contexts;
using SözTabani.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.Hesap
{
    public partial class kaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnkaydol_Click(object sender, EventArgs e)
        {


            string Fullname = Ad.Text.Trim();
            string soyadi = Soyad.Text.Trim();
            string kul_adi = K_adi.Text.Trim();
            string mail = Email.Text.Trim();
            string parola = Password.Text.Trim();
            string parolaonay = ConfirmPassword.Text.Trim();

            MembershipCreateStatus status;

            MembershipUser newUser = Membership.CreateUser(kul_adi, parola, mail, null, null, true, out status);

            switch (status)
            {
                case MembershipCreateStatus.DuplicateEmail:
                    ErrorMessage.Text = "Bu e-mail ile kayıtlı bir hesap zaten var";
                    break;
                case MembershipCreateStatus.DuplicateProviderUserKey:
                    break;
                case MembershipCreateStatus.DuplicateUserName:
                    ErrorMessage.Text = "Bu kullanıcı adı ile kayıtlı bir hesap zaten var";
                    break;
                case MembershipCreateStatus.InvalidAnswer:
                    break;
                case MembershipCreateStatus.InvalidEmail:
                    ErrorMessage.Text = "Geçersiz e-mail";
                    break;
                case MembershipCreateStatus.InvalidPassword:
                    ErrorMessage.Text = "Geçersiz şifre";
                    break;
                case MembershipCreateStatus.InvalidProviderUserKey:
                    break;
                case MembershipCreateStatus.InvalidQuestion:
                    break;
                case MembershipCreateStatus.InvalidUserName:
                    ErrorMessage.Text = "Geçersiz Kullanıcı Adı";
                    break;
                case MembershipCreateStatus.ProviderError:
                    break;
                case MembershipCreateStatus.Success:
                    SaveCustomUserData(newUser.ProviderUserKey.ToString(), Fullname, soyadi, kul_adi);

                    SetRole(newUser.UserName);
                    Response.Redirect("/giris");

                    break;
                case MembershipCreateStatus.UserRejected:
                    break;
                default:
                    break;
            }
        }
        private void SetRole(string userName)
        {
            if (Roles.IsUserInRole(userName, "User") == false)
            {
                Roles.AddUserToRole(userName, "User");
            }
        }

        private void SaveCustomUserData(string p, string fullname, string soyad, string kadi)
        {
            Kullanici userData = new Kullanici();
            userData.Kullanici_kullaniciadi = kadi;
            userData.Kullanici_Ad = fullname;
            userData.Kullanici_Soyad = soyad;
            userData.Kullanici_id = Guid.Parse(p);

            using (SozTabaniContext context = new SozTabaniContext())
            {
                context.Kullanıcılar.Add(userData);
                context.SaveChanges();
                ErrorMessage.Text = "Üyelik Oluşturuldu";
            }
        }
    }
}