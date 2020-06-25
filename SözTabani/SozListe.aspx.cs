using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class SozListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            using (SozTabaniContext sc = new SozTabaniContext())
            {
                SözList.DataSource = (from i in sc.Sözler
                                      select new
                                      {
                                          i.soz_id,
                                          i.soz_icerik,
                                          //Kisi = i.soz_kisi_id.k_name,
                                          i.soz_eklenmetarih
                                      }).ToList();
                SözList.DataBind();
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (SozTabaniContext cn = new SozTabaniContext())
            {
        //        var katsil = cn.Sözler.Where(i => i.soz_id).FirstOrDefault();
             //   cn.Sözler.Remove(katsil);
                cn.SaveChanges();
                         }
        }

//                         AspNetOrnekEntities entity = new AspNetOrnekEntities();
//IsIlani ilan = entity.IsIlani.Where(i => i.IsIlaniId == 20).FirstOrDefault();
//entity.IsIlani.Remove(ilan);
//entity.SaveChanges();
    }
}