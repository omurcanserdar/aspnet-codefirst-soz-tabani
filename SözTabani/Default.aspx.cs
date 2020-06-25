using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                //if (!Request.IsAuthenticated)
                //{
                //    //Response.Redirect("/giris");
                //}
                if (!IsPostBack)
                {
                    if (Request.QueryString["id"] != null)
                    {
                        int id = int.Parse(Request.QueryString["id"].ToString());
                        LoadSözlerId(id);
                    }
                    else
                    {
                        LoadSözler();
                    }
                    if (Request.IsAuthenticated)
                    {
                        if (User.IsInRole("User"))
                        {
                      //    $('#silbtn').removeAttr('enabled');
                        }
                    }
                }
            }
        }

        private void LoadSözlerId(int id)
        {
            using (SozTabaniContext db = new SozTabaniContext())
            {
                SözList.DataSource = (from i in db.Sözler
                                      where i.soz_id == id
                                      select i).ToList();
                SözList.DataBind();
            }
        }

        

        private void LoadSözler()
        {
            using (SozTabaniContext db = new SozTabaniContext())
            {
                SözList.DataSource = db.Sözler.ToList();
                SözList.DataBind();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(),true);
        
        }
    }
}
