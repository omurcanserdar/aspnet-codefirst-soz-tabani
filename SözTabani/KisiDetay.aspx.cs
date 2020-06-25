using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class KisiDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadKisiDetay();
            }


        }

        private void LoadKisiDetay()
        {
            if (Request.QueryString["kid"] != null)
            {
                int id = int.Parse(Request.QueryString["kid"].ToString());
                using (SozTabaniContext context = new SozTabaniContext())
                {
                    var entity = (from i in context.Kisiler
                                  where i.kisi_id == id
                                  select i).FirstOrDefault();

                    if (entity != null)
                    {
                        txtkisi.Text = entity.kisi_adsoyad;
                        txtkisibilgi.Text = entity.kisi_bilgi;
                    }
                }
            }
            else
            {
                Response.Redirect("/kisiliste");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string kname = txtkisi.Text.Trim();
            string kbilgi = txtkisibilgi.Text.Trim();
            using (SozTabaniContext context = new SozTabaniContext())
            {
                int k_id = int.Parse(Request.QueryString["kid"].ToString());
                var entity = (from i in context.Kisiler
                              where i.kisi_id == k_id
                            
                              select i).FirstOrDefault();
                if (string.IsNullOrEmpty(kname))
                {
                    Error.Text = "Boş Bırakılamaz !";
                    return;
                }
                if (string.IsNullOrEmpty(kbilgi))
                {
                    Error.Text = "Boş Bırakılamaz !";
                    return;
                }
                if (entity != null)
                {
                    entity.kisi_adsoyad = kname;
                    entity.kisi_bilgi = kbilgi;
                    context.SaveChanges();

                    Error.Text = "Kişi Güncellendi..";
                    //Response.Redirect("KisiListe.aspx");
                }
                

            }
        }
    }
}