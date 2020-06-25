using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class k : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadKisiVeri();
            }
        }
        private void LoadKisiVeri()
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
                        Image1.ImageUrl = entity.kisi_resim;
                        lbladsoyad.Text=entity.kisi_adsoyad;
                        lblbilgi.Text = entity.kisi_bilgi;
                        lbleklenmetarih.Text = entity.kisi_eklenmetarih.ToLongDateString()+ " tarihinde";
                        lblekleyenkkullanici.Text = entity.kisi_kullanici_kullaniciadi+ " tarafından eklendi";
                    }
                }
            }
            else
            {
                Response.Redirect("/anasayfa");
            }
        }
    }
}