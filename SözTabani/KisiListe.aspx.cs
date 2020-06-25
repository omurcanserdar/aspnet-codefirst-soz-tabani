using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class KisiListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                KisiVeri();
            }
        //    if (Roles.IsUserInRole("User"))
        //    {
        //        Txt.Enabled = false;
        //    }
        }

        private void KisiVeri()
        {
            using (SozTabaniContext context = new SozTabaniContext())
            {
                KisiListesi.DataSource = context.Kisiler.ToList();
                KisiListesi.DataBind();
            }
        }
    }
}