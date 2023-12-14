using Hrms_BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace HRMSWeb
{
    public partial class Edit_Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                show_Employeeprofile_data();
                show_ESkillsGrid_data();
                show_EditEducationGrid_data();
                show_EditExperienceGrid_data();


            }

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Your logic or processing goes here

            // Redirect to another page
            Response.Redirect("AddEmployee.aspx");
        }

        public void show_Employeeprofile_data()
        {
            DataSet ds_data = new DataSet();
            myprofileBL data = new myprofileBL();
            ds_data = data.show_Employeeprofile_data();

            if (ds_data.Tables.Count > 0 && ds_data.Tables[0].Rows.Count > 0)
            {
                DataRow row = ds_data.Tables[0].Rows[0];
                Empid.Text = row["emp_id"].ToString(); 
                firstname.Text = row["first_name"].ToString();
                lastname.Text = row["last_name"].ToString();
                emailid.Text = row["office_email"].ToString();
                adharcard.Text = row["aadhar_number"].ToString();
                pancard.Text = row["pan_number"].ToString();
                desigNation.Text = row["desi_id"].ToString(); ;
                UanNumber.Text = row["uan_number"].ToString();
                SupervisorId.Text = row["supervisor_id"].ToString();
                Supervisorname.Text = row["supervisor_id"].ToString();
                DateOfBirth.Text = row["DOB"].ToString();
                GenDer.Text = row["gender"].ToString();
                Maritalstatus.Text = row["marital_status"].ToString();
                aboutme.Text = row["about_me"].ToString();
                parentname.Text = row["parent_name"].ToString();

                relatioshipwithparent.Text = row["relationship_parent"].ToString();
                DePaRtMeNt.Text = row["dept_id"].ToString();
                RoLe.Text = row["emp_role"].ToString();
                Employementtype.Text = row["employment_type"].ToString();
                Employestatus.Text = row["employee_status"].ToString();
                FuNcTiOn.Text = row["emp_function"].ToString();
                dateofjoining.Text = row["DOJ"].ToString();
                probationperiod.Text = row["probation_period"].ToString();
                sourceofhire.Text = row["source_of_hier"].ToString();
                presentaddress.Text = row["present_address"].ToString();
                permanentaddress.Text = row["permanent_address"].ToString();
                personalmobilenumber.Text = row["personal_mobile"].ToString();

                personalemailaddress.Text = row["personal_email"].ToString();
                workphonenumber.Text = row["office_mobile"].ToString(); 
                alternatemobilenumber.Text = row["alternate_mobile"].ToString();
                accountnumber.Text = row["account_number"].ToString();
                bankname.Text = row["bank_name"].ToString();
                bankbranchaddress.Text = row["bank_br_add"].ToString();
                ifsccode.Text = row["IFSC_code"].ToString();
                addedby.Text = row["added_by"].ToString();
                adddedtimestamp.Text = row["added_on"].ToString();
                modifiedby.Text = row["modified_by"].ToString();
                modifiedtimestamp.Text = row["modified_on"].ToString();
                datofexist.Text = row["DOE"].ToString();

            }
        }
     

        public void show_ESkillsGrid_data()

        {
            DataSet ds_grid = new DataSet();
            myprofileBL grid = new myprofileBL();
            ds_grid = grid.show_ESkillsGrid_data();
            ESkillsGrid.DataSource = ds_grid;
            ESkillsGrid.DataBind();
            ESkillsGrid.UseAccessibleHeader = true;
            ESkillsGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        public void show_EditEducationGrid_data()
        {
            DataSet ds_grid = new DataSet();
            myprofileBL grid = new myprofileBL();
            ds_grid = grid.show_EditEducationGrid_data();
            EditEducationGrid.DataSource = ds_grid;
            EditEducationGrid.DataBind();
            EditEducationGrid.UseAccessibleHeader = true;
            EditEducationGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        public void show_EditExperienceGrid_data()
        {
            DataSet ds_grid = new DataSet();
            myprofileBL grid = new myprofileBL();
            ds_grid = grid.show_EditExperienceGrid_data();
            EditExperienceGrid.DataSource = ds_grid;
            EditExperienceGrid.DataBind();
            EditExperienceGrid.UseAccessibleHeader = true;
            EditExperienceGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

    }
}