using SözTabani.Contexts;
using SözTabani.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class SozEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadKisiListesi();
            }
        }
        private void LoadKisiListesi()
        {
            using (SozTabaniContext cont = new SozTabaniContext())
            {
                ddlKisi.DataSource = cont.Kisiler.ToList();
                ddlKisi.DataValueField = "kisi_id";
                ddlKisi.DataTextField = "kisi_adsoyad";
                ddlKisi.DataBind();
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string söz = txtsöz.Text.Trim();
            int id = int.Parse(ddlKisi.SelectedValue.ToString());
            MembershipUser a = Membership.GetUser();
            using (SozTabaniContext cont = new SozTabaniContext())
            {

                try
                {
                    Entities.Sozler nsn = new Entities.Sozler();
                    nsn.soz_eklenmetarih = DateTime.Now;
                    nsn.soz_icerik = söz;
                    nsn.soz_kisi_adi = ddlKisi.SelectedItem.ToString();
            nsn.soz_kisi_id = id;
                    nsn.soz_kullanici_kullaniciadi = a.UserName;
                    cont.Sözler.Add(nsn);
                    cont.SaveChanges();
                    Error.Text = "eklendi";


                }
                catch (Exception ex)
                {

                    Response.Write(ex);
                }
            }
        }
    }
}