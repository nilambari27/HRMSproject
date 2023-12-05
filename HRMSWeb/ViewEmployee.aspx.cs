using Hrms_BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMSWeb
{
    public partial class ViewEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_empgrid_data();
            }

        }
        public void view_empgrid_data()
        {
            DataSet ds_grid = new DataSet();
            EmployeeBL grid = new EmployeeBL();
            ds_grid = grid.view_empgrid_data();
            GridView1.DataSource = ds_grid;
            GridView1.DataBind();
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            view_empgrid_data();
        }

        protected void search_Click(object sender, ImageClickEventArgs e)
        {
            if (txtEmployeeID.Text == "")
            {
                Response.Write("<script>alert('Please Enter employee Id !!');</script>");
            }
            else 
            {
                int eid = Convert.ToInt32(txtEmployeeID.Text);
                view_empidgrid_data(eid);
            }
            
        }

        public void view_empidgrid_data(int eid)
        {
            DataSet ds_grid = new DataSet();
            EmployeeBL grid = new EmployeeBL();
            ds_grid = grid.view_empidgrid_data(eid);
            GridView1.DataSource = ds_grid;
            GridView1.DataBind();
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}