using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hrms_BusinessLogic;
using MySql.Data.MySqlClient;
using static System.Net.Mime.MediaTypeNames;


namespace HRMSWeb
{
    public partial class Departments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                show_grid_data();
                DDhead_bind_data();
                DDParent_bind_data();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string created_by =" ";
                string deptname = txtDeptName.Text;
                string email = txtEmail.Text;
                int depthead = Convert.ToInt32(ddDeptHead.Text);
                string parentdept = ddParentDept.SelectedItem.ToString();
                if (Session != null && Session["Useremail"] != null)
                {
                   created_by = Session["useremail"].ToString();
                }
                DateTime created_on = DateTime.Now;
               
                DepartmentBL objdept = new DepartmentBL();

                objdept.setDeptInfo(deptname, email, depthead, parentdept, created_by, created_on);
                
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
            txtDeptName.Text = "";
            txtEmail.Text = "";
            ddDeptHead.Text =null;
            ddParentDept.SelectedIndex = -1;
        }

        public void show_grid_data() 
        {
            DataSet ds_grid = new DataSet();
            DepartmentBL grid = new DepartmentBL();
            ds_grid = grid.show_grid_Data();
            GridView1.DataSource = ds_grid;
            GridView1.DataBind();
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        public void DDhead_bind_data() 
        {
            DataSet ds_head = new DataSet();
            DepartmentBL head= new DepartmentBL();
            ds_head = head.getData();
            ddDeptHead.DataSource = ds_head;
            ddDeptHead.DataTextField = "dept_head_empid";
            ddDeptHead.DataValueField = "dept_head_empid";
            ddDeptHead.DataBind();
            ddDeptHead.Items.Insert(0,new ListItem("Select Dept Head EmpID",""));
        }

        public void DDParent_bind_data() 
        {
            DataSet ds_parent = new DataSet();
            DepartmentBL p_name = new DepartmentBL();
            ds_parent = p_name.getParentName();
            ddParentDept.DataSource = ds_parent;
            ddParentDept.DataTextField = "parent_dept_name";
            ddParentDept.DataValueField = "parent_dept_name";
            ddParentDept.DataBind();
            ddParentDept.Items.Insert(0, new ListItem("Select Parent Dept", ""));

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Check if the row index is odd (alternating row)
                if (e.Row.RowIndex % 2 != 0)
                {
                    e.Row.CssClass = "alternate-row";
                }
            }

        }
    }

}