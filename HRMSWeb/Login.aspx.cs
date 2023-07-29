using Hrms_BusinessLogic;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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

                LoginBL objLogin = new LoginBL();
                
                DataSet ds=objLogin.getMyLogin(useremail, password);
                if (ds.Tables[0].Rows.Count==0)
                {
                    Response.Write("<script>alert('Invalid Credentials !!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Welcome To Dashboard!!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ ex.Message + "');</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtEmailID.Text = "";
            txtPassword.Text = "";
        }
    }
}