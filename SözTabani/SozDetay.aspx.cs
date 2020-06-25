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
    public partial class SozDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadKisi();
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
                      
                        txtText.Text = entity.soz_icerik;
                        ddlkisi.SelectedValue = entity.soz_kisi_id.ToString();
                    }
                }
            }
            else
            {
                Response.Redirect("/sozliste");
            }
        }

        private void LoadKisi()
        {
            using (SozTabaniContext context = new SozTabaniContext())
            {
                ddlkisi.DataSource = context.Kisiler.ToList();
                ddlkisi.DataValueField = "kisi_id";
                ddlkisi.DataTextField = "kisi_adsoyad";
                ddlkisi.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
       
            string text = txtText.Text.Trim();
            int id = int.Parse(ddlkisi.SelectedValue.ToString());

            using (SozTabaniContext context = new SozTabaniContext())
            {
                int Sözid = int.Parse(Request.QueryString["id"].ToString());

                Entities.Sozler entity = (from i in context.Sözler
                                       where i.soz_id == Sözid
                                       select i).FirstOrDefault();

        
                entity.soz_icerik = text;
                entity.soz_eklenmetarih = DateTime.Now;
                entity.soz_kisi_id = id;

                context.SaveChanges();

                Error.Text = "Değiştirildi..";
            }
        }
    }
}