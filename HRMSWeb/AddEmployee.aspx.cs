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
                ddDesig_bind_data();
                ddDepartment_bind_data();
                ddRole_bind_data();
                ddLocation_bind_data();
                ddSupervisor_bind_data();
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
                string gender = ddGender.Text;
                DateTime DOBdt = Convert.ToDateTime(txtDateofBirth.Text);
                DateTime DOB = DOBdt.Date;
                DateTime DOJdt = Convert.ToDateTime(txtDateofJoining.Text);
                DateTime DOJ = DOJdt.Date;
                DateTime DOEdt = Convert.ToDateTime(txtDateOfExit.Text);
                DateTime DOE = DOEdt.Date;
                string office_email = txtMailID.Text;
                string marital_status = ddMaritalStatus.SelectedItem.ToString();
                string office_mobile = txtWorkPhoneNumber.Text;
                string supervisor_name = ddSuper.Text;
                string dept_name = ddDepartment.Text;
                string desi_name = ddDesig.Text;
                string added_by = txtAddedBy.Text;
                DateTime added_on = DateTime.Now;
                string modified_by = txtModifiedBy.Text;
                DateTime modified_on = DateTime.Now;

                string aadhar_number = txtAdharCardNumber.Text;
                string pan_number = txtPANCardNumber.Text;
                string uan_number = txtUANNumber.Text;
                string about_me = txtAboutMe.Text;
                string parent_name = txtParentName.Text;
                string relationship_parent = txtRelation.Text;
                string location = ddLocation.Text;
                string emp_role = ddRole.Text;
                string employment_type = ddEmploymentType.SelectedItem.ToString();
                string employee_status = ddEmployeeStatus.SelectedItem.ToString();
                string emp_function = txtFunction.Text;
                string source_of_hier = ddSource.SelectedItem.ToString();
                int probation_period = Convert.ToInt32(txtProbationPeriod.Text);
                string present_address = txtPresentAddress.Text;
                string permanent_address = txtPermanentAddress.Text;
                string personal_mobile = txtPersonalMobileNumber.Text;
                string personal_email = txtPersonalEmailAddress.Text;
                string alternate_mobile = txtAlternateMobileNumber.Text;
                string account_number = txtAccountNumber.Text;
                string bank_name = txtBankName.Text;
                string bank_br_add = txtBankBranch.Text;
                string IFSC_code = txtIFSCCode.Text;

                EmployeeBL objemp = new EmployeeBL();

                objemp.setEmployeeInfo(first_name, last_name, gender,DOB,DOJ,DOE, office_email, marital_status, office_mobile,
                    supervisor_name, dept_name,desi_name,added_by,added_on,modified_by,modified_on, aadhar_number,pan_number,uan_number,
                    about_me, parent_name,relationship_parent, location,emp_role,employment_type,employee_status,emp_function,source_of_hier,
                    probation_period,present_address,permanent_address,personal_mobile,personal_email,alternate_mobile,account_number,
                    bank_name, bank_br_add,IFSC_code);

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

                objexperience.setExperienceInfo(Emp_id, CompanyName, Desig_Nation, DateOfJoin, DateOfRsgn, ProfileSummary);

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

        public void ddDepartment_bind_data()
        {
            DataSet ds_dept = new DataSet();
            EmployeeBL dept = new EmployeeBL();
            ds_dept = dept.getDeptData();
            ddDepartment.DataSource = ds_dept;
            ddDepartment.DataTextField = "dept_Name";
            ddDepartment.DataValueField = "dept_Name";
            ddDepartment.DataBind();
            ddDepartment.Items.Insert(0, new ListItem("Select Department Name", ""));
        }

        public void ddRole_bind_data()
        {
            DataSet ds_Role = new DataSet();
            EmployeeBL Role = new EmployeeBL();
            ds_Role = Role.getRole();
            ddRole.DataSource = ds_Role;
            ddRole.DataTextField = "RoleName";
            ddRole.DataValueField = "RoleName";
            ddRole.DataBind();
            ddRole.Items.Insert(0, new ListItem("Select Roles", ""));
        }
        public void ddDesig_bind_data()
        {
            DataSet ds_dept = new DataSet();
            EmployeeBL dept = new EmployeeBL();
            ds_dept = dept.getDesigData();
            ddDesig.DataSource = ds_dept;
            ddDesig.DataTextField = "designation_Name";
            ddDesig.DataValueField = "designation_Name";
            ddDesig.DataBind();
            ddDesig.Items.Insert(0, new ListItem("Select Designation Name", ""));
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

        public void ddSupervisor_bind_data()
        {
            DataSet ds_super = new DataSet();
            EmployeeBL sup = new EmployeeBL();
            ds_super = sup.getSupervisorData();
            ddSuper.DataSource = ds_super;
            ddSuper.DataTextField = "name";
            ddSuper.DataValueField = "name";
            ddSuper.DataBind();
            ddSuper.Items.Insert(0, new ListItem("Select Supervisor Name", ""));

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

        protected void btnUpload_Click(object sender, EventArgs e)
        {

        }

    }

}
