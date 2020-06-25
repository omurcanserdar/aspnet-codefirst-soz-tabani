using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class atasoz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"].ToString());
                    LoadAtasozId(id);

                }
                else
                {

                    LoadAtasoz();

                }

            }
        }

        private void LoadAtasozId(int id)
        {
            using (SozTabaniContext db = new SozTabaniContext())
            {
                AtasozList.DataSource = (from i in db.Atasözleri
                                      where i.atasoz_id == id
                                      
                                      select i).ToList();
                AtasozList.DataBind();
            }
        }



        private void LoadAtasoz()
        {
            using (SozTabaniContext db = new SozTabaniContext())
            {
                AtasozList.DataSource = db.Atasözleri.ToList();
                AtasozList.DataBind();
            }
        }
    }
}