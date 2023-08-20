using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HRMSWeb
{
    public partial class Departments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["HRMSconn"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                   using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM department"))
                   {
                       using (MySqlDataAdapter sda = new MySqlDataAdapter())
                       { 
                          cmd.Connection = con;
                          sda.SelectCommand = cmd;
                          using (DataTable dt = new DataTable())
                          {
                               sda.Fill(dt);
                               GridView1.DataSource = dt;
                               GridView1.DataBind();
                          }
                       }
                   }
                }
            }
            

        }
    }

}