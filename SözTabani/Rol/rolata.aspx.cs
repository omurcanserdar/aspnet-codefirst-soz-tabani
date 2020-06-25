using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.Rol
{
    //MembershipUser m = Membership.GetUser(ddlrolkisi.SelectedItem.ToString());
    //ErrorMessage.Text = m.ToString();

    public partial class rolata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlrol.DataSource = Roles.GetAllRoles();
                ddlrol.DataBind();
                ddlrolkisi.DataSource = Membership.GetAllUsers();
                ddlrolkisi.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            // string[] roller = Roles.GetRolesForUser(ddlrolkisi.SelectedItem.ToString());  
          //  Roles.RemoveUserFromRoles(ddlrolkisi.SelectedItem.ToString(), Roles.GetAllRoles());
            //Roles.RemoveUserFromRole(ddlrolkisi.SelectedItem.ToString(), "User");
            Roles.AddUserToRole(ddlrolkisi.SelectedItem.ToString(),ddlrol.SelectedItem.ToString());
            ErrorMessage.Text = ddlrolkisi.SelectedItem.ToString() +" "+ ddlrol.SelectedItem.ToString() +" "+ "rolune atandı";
        }
    }
}