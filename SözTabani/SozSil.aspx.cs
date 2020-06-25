using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class SozSil : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadKisi();
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
        protected void btnSil_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ddlkisi.SelectedValue.ToString());
            using (SozTabaniContext cn = new SozTabaniContext())
            {
                int Sözid = int.Parse(Request.QueryString["id"].ToString());
                var katsil = cn.Sözler.Where(i =>i.soz_id==Sözid).FirstOrDefault();
                cn.Sözler.Remove(katsil);
                cn.SaveChanges();
            }
            Error.Text = "Kayıt Silindi..";
            Response.Write("beni neden sildin :(");
            Response.Redirect("/sozliste");
        }
    }
}