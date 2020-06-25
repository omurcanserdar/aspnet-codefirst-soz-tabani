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
    public partial class hesabim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.IsAuthenticated)
            {
                Response.Redirect("/error");
            }
            else
            {
                MembershipUser user = Membership.GetUser();
                LblKullAdi.Text = Membership.GetUser().ToString();
                string[] roller = Roles.GetRolesForUser(user.UserName);
                for(int i = 0; i < roller.Length; i++)
                {
                    LstRol.Items.Add(roller[i]);
                }
                using (SozTabaniContext context = new SozTabaniContext())
                {
                    var entity = (from i in context.Kullanıcılar
                                  where i.Kullanici_kullaniciadi == LblKullAdi.Text
                                  select i).FirstOrDefault();
                    if (entity != null)
                    {
                        LblAd.Text = entity.Kullanici_Ad;
                        LblSad.Text = entity.Kullanici_Soyad;
                    }
                }
                using (SozTabaniContext context = new SozTabaniContext())
                {
                    var entity = (from i in context.Sözler
                                  where i.soz_kullanici_kullaniciadi == LblKullAdi.Text
                                  select i).FirstOrDefault();
                    if (entity != null)
                    {
                        LblSozSayi.Text = entity.soz_kullanici_kullaniciadi.Count().ToString();
                        
                    }
                }
                LblMail.Text = user.Email;
                LblKytTarih.Text = user.CreationDate.ToString();
                LblEnSnSifre.Text = user.LastPasswordChangedDate.ToString();
                if (user.LastPasswordChangedDate == user.CreationDate)
                {
                    LblEnSnSifre.Text = "Henüz Şifre Değişikliği Yapılmamış !";
                }
                LblBrOnckGrs.Text = user.LastActivityDate.ToString();

                /*   LblOnline.Text = Membership.UserIsOnlineTimeWindow.ToString();
                    LblEnSonGiris.Text = user.LastLoginDate.ToString();
                    LblSimdiOnline.Text = Membership.GetNumberOfUsersOnline().ToString(); */
            }
        }
    }
}