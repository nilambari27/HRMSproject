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
        int empId;
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

                empId = objemp.setEmployeeInfo(first_name, last_name, gender,DOB,DOJ,DOE, office_email, marital_status, office_mobile,
                    supervisor_name, dept_name,desi_name,added_by,added_on,modified_by,modified_on, aadhar_number,pan_number,uan_number,
                    about_me, parent_name,relationship_parent, location,emp_role,employment_type,employee_status,emp_function,source_of_hier,
                    probation_period,present_address,permanent_address,personal_mobile,personal_email,alternate_mobile,account_number,
                    bank_name, bank_br_add,IFSC_code);

                txtEmployeeID.Text=empId.ToString();

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
            try
            {
                int Emp_id = Convert.ToInt32("txtEmployeeID.Text");
                string SkillName = txtskillname.Text;
                string TypeOfSkill = txtTypeSkill.Text;
                int Experience = Convert.ToInt32("txtExperience.txt");
                string Expertise = ddExpertiseLevel.Text;

                EmployeeBL objskills = new EmployeeBL();

                objskills.setSkillsInfo(Emp_id, SkillName, TypeOfSkill, Experience, Expertise);

                show_skillsgrid_data();
                Response.Write("<script>alert('Record added succsessfully !!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void btnSaveEducation_Click(object sender, EventArgs e)
        {
            try
            {
                int Emp_id = Convert.ToInt32("txtEmployeeID.Text");
                string Qualification = txtQualification.Text;
                string InstitutionName = txtInstitutionName.Text;
                string BoardUniversity = txtBoard.Text;
                string MajorSubjects = txtMajorSubjects.Text;
                string PassingYear = txtPassingYear.Text;
                decimal Percentage = decimal.Parse(txtPercentage.Text);
                string Grade = ddGrade.Text;
                string EducationType = txtEducationType.Text;

                EmployeeBL objeducation = new EmployeeBL();

                objeducation.setEducationInfo(Emp_id, Qualification, InstitutionName, BoardUniversity, MajorSubjects, PassingYear, Percentage, Grade, EducationType);

                show_educationgrid_data();
                Response.Write("<script>alert('Record added succsessfully !!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnCancelEdu_Click(object sender, EventArgs e)
        {
            txtQualification.Text = "";
            txtInstitutionName.Text = "";
            txtBoard.Text = "";
            txtMajorSubjects.Text = "";
            txtPassingYear.Text = "";
            txtPercentage.Text = "";
            ddGrade.Text = "";
            txtEducationType.Text = "";
        }

        protected void GridViewEducation_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int Ued_emp_id = Convert.ToInt32(GridViewEducation.DataKeys[rowIndex].Value);
            string Ued_qualification = ((TextBox)GridViewEducation.Rows[rowIndex].FindControl("TextBox1")).Text;
            string Ued_institution_name = ((TextBox)GridViewEducation.Rows[rowIndex].FindControl("TextBox2")).Text;
            string Ued_board_university = ((TextBox)GridViewEducation.Rows[rowIndex].FindControl("TextBox3")).Text;
            string Ued_major_subjects = ((TextBox)GridViewEducation.Rows[rowIndex].FindControl("TextBox4")).Text;
            string ued_passing_year = ((TextBox)GridViewEducation.Rows[rowIndex].FindControl("TextBox5")).Text;
            decimal ued_percentage = decimal.Parse(((TextBox)GridViewEducation.Rows[rowIndex].FindControl("TextBox6")).Text);
            string ued_grade = (((TextBox)GridViewEducation.Rows[rowIndex].FindControl("TextBox7")).Text);
            string ued_education_type = ((TextBox)GridViewEducation.Rows[rowIndex].FindControl("TextBox8")).Text;

            EmployeeBL employeeskillsBL = new EmployeeBL();
            //employeeskillsBL.updateemployeeeducationInfo(Ued_emp_id, Ued_qualification, Ued_institution_name, Ued_board_university, Ued_major_subjects, ued_passing_year, ued_percentage, ued_grade, ued_education_type);

            GridViewEducation.EditIndex = -1;
            show_educationgrid_data();
        }
        protected void GridViewEducation_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewEducation.EditIndex = e.NewEditIndex;
            show_educationgrid_data();
        }
        protected void GridViewEducation_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //int rowIndex = e.RowIndex;
            //int id = Convert.ToInt32(GridViewEducation.DataKeys[rowIndex].Value);
            //EmployeeBL deleducation = new EmployeeBL();
            //deleducation.deleteemployeeeducationInfo(id);
            //show_skillsgrid_data();
        }

        protected void btnSaveExperience_Click(object sender, EventArgs e)
        {
            try
            {
                int Emp_id = Convert.ToInt32(txtEmployeeID.Text);
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
