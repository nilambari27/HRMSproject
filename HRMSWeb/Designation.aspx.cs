using Hrms_BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Xml.Linq;
namespace HRMSWeb
{
    public partial class Designation : System.Web.UI.Page
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

                string Designation_Name = txtDesigName.Text;
                string Mail_Alias = txtMailAlias.Text;
                string Created_By = " ";
                if (Session != null && Session["Useremail"] != null)
                {
                    Created_By = Session["useremail"].ToString();
                }
                DateTime Created_On = DateTime.Now;

                DesignationBL designationDL = new DesignationBL();

                designationDL.SetDesignationInfo(Designation_Name, Mail_Alias, Created_By, Created_On);

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
            txtDesigName.Text = "";
            txtMailAlias.Text = "";

        }

        public void show_grid_data()
        {

            DataSet ds_grid = new DataSet();
            DesignationBL grid = new DesignationBL();
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
            int d_id = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            string d_designame = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox1")).Text;
            string d_mailalias = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox2")).Text;
            string d_created_by = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox3")).Text;
            DateTime d_created_on = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox4")).Text);

            DesignationBL designationBL = new DesignationBL();
            designationBL.updateDesigignationInfo(d_id, d_designame, d_mailalias, d_created_by, d_created_on);

            GridView1.EditIndex = -1;
            show_grid_data();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            DesignationBL del = new DesignationBL();
            del.deleteInfo(id);
            show_grid_data();
        }


    }
}