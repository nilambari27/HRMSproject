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
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string deptname = txtDeptName.Text;
                string email = txtEmail.Text;
                int depthead = Convert.ToInt32(ddDeptHead.Text);
                string parentdept = ddParentDept.SelectedItem.ToString();
                string created_by = Session["useremail"].ToString();
                DateTime created_on = DateTime.Now;
               
                DepartmentBL objdept = new DepartmentBL();

                DataSet ds = objdept.setDeptInfo(deptname, email, depthead, parentdept, created_by, created_on);

                if (ds.Tables[0].Rows.Count == 0)
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
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtDeptName.Text = "";
            txtEmail.Text = "";
            ddDeptHead.Text = "";
            ddParentDept.Text = "";
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
        }
    }

}