using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMSWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string script = "alert(\"Hello!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtEmailID.Text="";
            txtPassword.Text = "";
            
        }
    }
}