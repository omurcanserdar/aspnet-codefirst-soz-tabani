using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class s : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSözVeri();
            }

            if (User.IsInRole("User"))
            {
                Error.Text = "USER rolundesin ";

            }
        }
        

        private void LoadSözVeri()
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                using (SozTabaniContext context = new SozTabaniContext())
                {
                    var entity = (from i in context.Sözler
                                  where i.soz_id == id
                                  select i).FirstOrDefault();

                    if (entity != null)
                    {

                        lblicerik.Text = entity.soz_icerik;
                        lblkisi.Text = entity.soz_kisi_adi;
                        lbleklenmetarih.Text = entity.soz_eklenmetarih.ToShortDateString();
                        lblekleyenkullanici.Text = entity.soz_kullanici_kullaniciadi;
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