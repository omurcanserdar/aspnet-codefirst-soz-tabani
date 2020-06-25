using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.Rol
{
    public partial class rolekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RolEkle(object sender, EventArgs e)
        {
            string roladi = Rol.Text.Trim();
            if (string.IsNullOrEmpty(roladi))
            {
                ErrorMessage.Text = "Rol Adı Boş Bırakılamaz !";
                return;
            }
            if (Roles.RoleExists(roladi) == false)
            {
                Roles.CreateRole(roladi);
                ErrorMessage.Text = "Rol Oluşturuldu";
            }

            else
            {
                ErrorMessage.Text = "Bu rol zaten sistemde kayıtlı durumda !";
            }
          
        }
    }
}