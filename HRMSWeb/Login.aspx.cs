using Hrms_BusinessLogic;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
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
            try
            {
                string useremail = txtEmailID.Text;
                string password = txtPassword.Text;

                Response.Write(useremail);
                LoginBL objLogin = new LoginBL();
                objLogin.getMyLogin(useremail, password);

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtEmailID.Text = "";
            txtPassword.Text = "";
        }
    }
}