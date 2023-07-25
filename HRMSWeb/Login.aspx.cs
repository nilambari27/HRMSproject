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
            var connectionString = ConfigurationManager.ConnectionStrings["HRMSconn"].ConnectionString;

            MySqlConnection mySqlConnection = new MySqlConnection(connectionString);
            try
            {
                mySqlConnection.Open();

                string script = "alert(\"connection open\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                               
            }
            catch (Exception ex)
            {
                string script = "alert(\"connection can not open\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            finally 
            { 
                mySqlConnection.Close(); 
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtEmailID.Text="";
            txtPassword.Text = "";
            
        }
    }
}