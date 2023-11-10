using Hrms_BusinessLogic;
using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMSWeb
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddLocation_bind_data();
                show_skillsgrid_data();
                show_educationgrid_data();
                show_experiencegrid_data();
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string first_name = txtFirstName.Text;
                string last_name = txtLastName.Text;
                string AdharCardNumber=txtAdharCardNumber.Text;
                string PANCardNumber = txtPANCardNumber.Text;
                string Designation = txtDesignation.Text;
                string UANNumber = txtUANNumber.Text;
                
                
                Response.Write("<script>alert('Record added succsessfully !!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }


        protected void btnSaveSkills_Click(object sender, EventArgs e)
        {

        }

        protected void btnSaveExperience_Click(object sender, EventArgs e)
        {
            try
            {
                int Emp_id = Convert.ToInt32("");
                string CompanyName = txtCompanyName.Text;
                string Desig_Nation = txtdesign.Text;
                DateTime DateOfJoin = Convert.ToDateTime(txtDOJ.Text);
                DateTime DateOfRsgn = Convert.ToDateTime(txtDOR.Text);
                string ProfileSummary = txtProfileSummary.Text;

                EmployeeBL objexperience = new EmployeeBL();

                objexperience.setExperienceInfo(Emp_id,CompanyName, Desig_Nation, DateOfJoin, DateOfRsgn, ProfileSummary);

                show_experiencegrid_data();
                Response.Write("<script>alert('Record added succsessfully !!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void btnCancelExperience_Click(object sender, EventArgs e)
        {
            txtCompanyName.Text = "";
            txtdesign.Text = "";
            txtDOJ.Text = "";
            txtDOR.Text = "";
            txtProfileSummary.Text = "";

        }

        public void ddLocation_bind_data()
        {
            DataSet ds_loc = new DataSet();
            EmployeeBL loc = new EmployeeBL();
            ds_loc = loc.getData();
            ddLocation.DataSource = ds_loc;
            ddLocation.DataTextField = "Location_Name";
            ddLocation.DataValueField = "Location_Name";
            ddLocation.DataBind();
            ddLocation.Items.Insert(0, new ListItem("Select Location Name", ""));
        }

        public void show_skillsgrid_data()
        {
            DataSet ds_grid = new DataSet();
            EmployeeBL grid = new EmployeeBL();
            ds_grid = grid.show_skillgrid_Data();
            SkillsGrid.DataSource = ds_grid;
            SkillsGrid.DataBind();
            SkillsGrid.UseAccessibleHeader = true;
            SkillsGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        public void show_experiencegrid_data()
        {
            DataSet ds_grid = new DataSet();
            EmployeeBL grid = new EmployeeBL();
            ds_grid = grid.show_experiencegrid_data();
            GridViewExperience.DataSource = ds_grid;
            GridViewExperience.DataBind();
            GridViewExperience.UseAccessibleHeader = true;
            GridViewExperience.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        public void show_educationgrid_data()
        {
            DataSet ds_grid = new DataSet();
            EmployeeBL grid = new EmployeeBL();
            ds_grid = grid.show_educationgrid_data();
            GridViewEducation.DataSource = ds_grid;
            GridViewEducation.DataBind();
            GridViewEducation.UseAccessibleHeader = true;
            GridViewEducation.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        public void ddMaritalStatus_data()
        {
            ddLocation.Items.Insert(0, new ListItem("Select Marital Status", ""));
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

        }

    }
        
 }
