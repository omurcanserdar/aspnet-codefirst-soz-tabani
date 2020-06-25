using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani.Rol
{
    public partial class rolliste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            DataTable RoleList = new DataTable();
            RoleList.Columns.Add("RolAdı");
            RoleList.Columns.Add("UserCount");
            string[] roles = Roles.GetAllRoles();

            foreach (string roleName in roles)
            {
                int rolkul_say = Roles.GetUsersInRole(roleName).Length;
                string[] roleRow = { roleName, rolkul_say.ToString() };
                RoleList.Rows.Add(roleRow);
            }
            KullaniciRolleri.DataSource = RoleList;
            KullaniciRolleri.DataBind();

        }
    }
}