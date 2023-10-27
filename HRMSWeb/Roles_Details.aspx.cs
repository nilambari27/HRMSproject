using Hrms_BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace HRMSWeb
{
    public partial class Roles_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                show_grid_data();

            }

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Write("Save button clicked!");
            try
            {
                int Role_ID = Convert.ToInt32(ddEmployeeId.Text);
                string Role_Name = txtRolesName.Text;
                string created_by = " ";
                if (Session != null && Session["Useremail"] != null)
                {
                    created_by = Session["useremail"].ToString();
                }
                DateTime created_on = DateTime.Now;
                Roles_DetailsBL objroles = new  Roles_DetailsBL();

                objroles.setRolesInfo(Role_ID, Role_Name, created_by, created_on);

                show_grid_data();
                Response.Write("<script>alert('Record added succsessfully !!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtRolesName.Text = "";
            ddEmployeeId.Text = "";

        }

        public void show_grid_data()
        {

            DataSet ds_grid = new DataSet();
            Roles_DetailsBL grid = new Roles_DetailsBL();
            ds_grid = grid.show_grid_Data();
            GridView1.DataSource = ds_grid;
            GridView1.DataBind();
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;


        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            show_grid_data();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            show_grid_data();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int r_id= Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            string r_roleName = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox1")).Text;
            int r_EmployeeID = Convert.ToInt32(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox2")).Text);
            string r_createdby = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox3")).Text;
            DateTime r_createdon = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox4")).Text);

            Roles_DetailsBL rolesdetailsBL = new Roles_DetailsBL();
            rolesdetailsBL.updateRolesDetailsInfo(r_id, r_roleName, r_EmployeeID, r_createdby, r_createdon);

            GridView1.EditIndex = -1;
            show_grid_data();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            Roles_DetailsBL del = new Roles_DetailsBL();
            del.deleteInfo(id);
            show_grid_data();
        }
    }
}





    