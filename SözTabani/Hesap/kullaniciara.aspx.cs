using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.Hesap
{
    public partial class kullaniciara : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string k_adi = UserName.Text.Trim();
            if (string.IsNullOrEmpty(k_adi))
            {
                return;
            }
            else

            {
                KullaniciListe.DataSource = Membership.FindUsersByName(k_adi);
                KullaniciListe.DataBind();
            }

        }
    }
}