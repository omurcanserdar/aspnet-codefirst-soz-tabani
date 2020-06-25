using SözTabani.Contexts;
using SözTabani.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.layout
{
    public partial class main : System.Web.UI.MasterPage
    {
        public string UserName { get; set; }
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {
                MembershipUser msu = LoadMSData();
                Kullanici k_ = LoaadUserData(msu.ProviderUserKey.ToString());
                UserName = k_.Kullanici_Ad;
            }
        }

        private Kullanici LoaadUserData(string v)
        {
            Guid kid = Guid.Parse(v);
            Kullanici veri = null;

            using (SozTabaniContext cn = new SozTabaniContext())
            {
                veri = (from i in cn.Kullanıcılar
                        where i.Kullanici_id == kid 
                        select i).FirstOrDefault<Kullanici>();
            }
            return veri;
        }

        private MembershipUser LoadMSData()
        {
            return Membership.GetUser();
        }
        private void LoadSoz()
        {
            using (SozTabaniContext db = new SozTabaniContext())
            {
                PostList.DataSource = (from i in db.Sözler
                                       orderby i.soz_id descending
                                        select i).ToList();
                PostList.DataBind();
                
            }

        }
        private void LoadAtasoz()
        {
            using (SozTabaniContext db = new SozTabaniContext())
            {
                AtasozList.DataSource = (from i in db.Atasözleri
                                       orderby i.atasoz_id descending
                                       select i).ToList();
                AtasozList.DataBind();
            }
        }

        private void LoadKisi()
        {
            List<Kisiler> SubjectList = new List<Kisiler>();

            if (Cache["Kisiler"] == null)
            {
                using (SozTabaniContext db = new SozTabaniContext())
                {
                    SubjectList = db.Kisiler.ToList();
                    Cache["Kisiler"] = SubjectList;
                }
            }
            else
            {
                SubjectList = (List<Kisiler>)Cache["Kisiler"];
            }


            CategoryList.DataSource = SubjectList;
            CategoryList.DataBind();
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadKisi();
                LoadSoz();
            LoadAtasoz();
        }
    }
}