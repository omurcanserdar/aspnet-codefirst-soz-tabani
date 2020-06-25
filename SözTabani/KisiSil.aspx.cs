using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class KisiSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSözVeri();
            }
        }

        private void LoadSözVeri()
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                using (SozTabaniContext context = new SozTabaniContext())
                {
                    var entity = (from i in context.Kisiler
                                  where i.kisi_id == id
                                  select i).FirstOrDefault();

                    if (entity != null)
                    {

                        txtTextkisi.Text = entity.kisi_adsoyad;
                    }
                }
            }
            else
            {
                Response.Redirect("/kisiliste");
            }
        }
        protected void btnSil_Click(object sender, EventArgs e)
        {
            using (SozTabaniContext cn = new SozTabaniContext())
            {
                int kisi__id = int.Parse(Request.QueryString["id"].ToString());

                var kisi_sil = cn.Kisiler.Where(i => i.kisi_id == kisi__id).FirstOrDefault();
                cn.Kisiler.Remove(kisi_sil);
                cn.SaveChanges();

                Errora.Text = "Kayıt Silindi..";

                Response.Redirect("/kisiliste");
            }
        }
    }
}