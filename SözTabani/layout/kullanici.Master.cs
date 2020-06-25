using SözTabani.Contexts;
using SözTabani.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.layout
{
    public partial class kullanici : System.Web.UI.MasterPage
    {
        public string UserName { get; set; }
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {
                MembershipUser msu = LoadMSData();
                Kullanici k_ = LoaadUserData(msu.ProviderUserKey.ToString());
                UserName = k_.Kullanici_Ad;

            }
        }

        private Kullanici LoaadUserData(string v)
        {
            Guid kid = Guid.Parse(v);
            Kullanici veri = null;

            using (SozTabaniContext cn = new SozTabaniContext())
            {
                veri = (from i in cn.Kullanıcılar
                        where i.Kullanici_id == kid
                        select i).FirstOrDefault<Kullanici>();
            }
            return veri;
        }

        private MembershipUser LoadMSData()
        {
            return Membership.GetUser();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
    
        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        { 
            string username = txtUserName.Text.Trim();
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
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            else
            {
                ErrorMessage.Text = "Kullanıcı adı veya şifre geçersiz !";

            }  
        }   
    }
}