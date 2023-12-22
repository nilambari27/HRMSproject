using Hrms_DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace Hrms_BusinessLogic
{
    public class EmployeeBL
    {
        public int setEmployeeInfo(string first_name, string last_name, string gender,DateTime DOB,DateTime DOJ,DateTime DOE,string office_email,string marital_status,
                    string office_mobile,string supervisor_name,string dept_name,string desi_name,string added_by,DateTime added_on,string modified_by,DateTime modified_on,
                    string aadhar_number, string pan_number,string uan_number,string about_me,string parent_name,string relationship_parent,string location,
                    string emp_role,string employment_type,string employee_status,string emp_function,string source_of_hier,int probation_period,
                    string present_address,string permanent_address,string personal_mobile,string personal_email,string alternate_mobile,string account_number,
                    string bank_name, string bank_br_add,string IFSC_code)
        {
                    EmployeeDL empdl = new EmployeeDL();
                    int empId=empdl.setEmployeeInfo(first_name, last_name, gender, DOB, DOJ, DOE, office_email, marital_status, office_mobile,
                    supervisor_name, dept_name, desi_name, added_by, added_on, modified_by, modified_on, aadhar_number, pan_number, uan_number,
                    about_me, parent_name, relationship_parent, location, emp_role, employment_type, employee_status, emp_function, source_of_hier,
                    probation_period, present_address, permanent_address, personal_mobile, personal_email, alternate_mobile, account_number,
                    bank_name, bank_br_add, IFSC_code);

                    return empId;

        }


        public DataSet getData()
        {
            DataSet ds_loc = new DataSet();
            EmployeeDL d = new EmployeeDL();
            ds_loc = d.getData();
            return ds_loc;
        }
        public DataSet getDeptData()
        {
            DataSet ds_dept = new DataSet();
            EmployeeDL d = new EmployeeDL();
            ds_dept = d.getDeptData();
            return ds_dept;
        }

        public DataSet getRole()
        {
            DataSet ds_Role = new DataSet();
            EmployeeDL d = new EmployeeDL();
            ds_Role = d.getRole();
            return ds_Role;
        }

        public DataSet getSupervisorData()
        {
            DataSet ds_super = new DataSet();
            EmployeeDL d = new EmployeeDL();
            ds_super = d.getSupervisorData();
            return ds_super;
        }

        public DataSet getDesigData()
        {
            DataSet ds_desig = new DataSet();
            EmployeeDL d = new EmployeeDL();
            ds_desig = d.getDesigData();
            return ds_desig;
        }

        public void setSkillsInfo(int Emp_id, string SkillName, string TypeOfSkill, int Experience, string Expertise)
        {
            EmployeeDL skillsDL = new EmployeeDL();
            skillsDL.setSkillsInfo(Emp_id, SkillName, TypeOfSkill, Experience, Expertise);
        }

        public void update_emp_skills(int U_Emp_id, string U_SkillName, string U_TypeOfSkill, int U_Experience, string U_Expertise)
        {
            EmployeeDL updateskillsDL = new EmployeeDL();
            updateskillsDL.update_emp_skills(U_Emp_id, U_SkillName, U_TypeOfSkill, U_Experience, U_Expertise);
        }
        public void delete_emp_skills(int empSkillId)
        {
            EmployeeDL delskills = new EmployeeDL();
            delskills.delete_emp_skills(empSkillId);
        }

        public DataSet show_skillgrid_Data(int empId)
        {
            DataSet ds_grid = new DataSet();
            EmployeeDL grid_data = new EmployeeDL();
            ds_grid = grid_data.show_skillgrid_data(empId);
            return ds_grid;
        }

        public void setExperienceInfo(int Emp_id, string CompanyName, string Desig_Nation, DateTime DateOfJoin, DateTime DateOfRsgn, string ProfileSummary)
        {


            EmployeeDL experienceDL = new EmployeeDL();

            experienceDL.setExperienceInfo(Emp_id,CompanyName, Desig_Nation, DateOfJoin, DateOfRsgn, ProfileSummary);

        }

        public void updateExperienceInfo(int Uex_emp_id, string Uex_company_name, string Uex_designation, DateTime Uex_DtJoin, DateTime Uex_DtResign, string Uex_profile_summary)
        {
            EmployeeDL upDL = new EmployeeDL();
            upDL.updateExperienceInfo(Uex_emp_id, Uex_company_name, Uex_designation, Uex_DtJoin, Uex_DtResign, Uex_profile_summary);
        }
        public void deleteExperienceInfo(int deptId)
        {
            EmployeeDL departmentDL = new EmployeeDL();
            departmentDL.deleteExperienceInfo(deptId);
        }
        public DataSet show_experiencegrid_data()
        {

            DataSet ds_grid = new DataSet();
            EmployeeDL grid_data = new EmployeeDL();
            ds_grid = grid_data.show_experiencegrid_data();
            return ds_grid;
        }

        public void setEducationInfo(int Emp_id, string Qualification, string InstitutionName, string BoardUniversity, string MajorSubjects, string PassingYear, decimal Percentage, string Grade, string EducationType)
        {


            EmployeeDL educationDL = new EmployeeDL();

            educationDL.setEducationInfo(Emp_id,Qualification, InstitutionName, BoardUniversity, MajorSubjects, PassingYear, Percentage, Grade, EducationType);

        }

        public void update_Education(int Ued_emp_id, string Ued_qualification, string Ued_institution_name, string Ued_board_university, string Ued_major_subjects, string ued_passing_year, decimal ued_percentage, string ued_grade, string ued_education_type)
        {
            EmployeeDL upDL = new EmployeeDL();
            upDL.update_Education(Ued_emp_id, Ued_qualification, Ued_institution_name, Ued_board_university, Ued_major_subjects, ued_passing_year, ued_percentage, ued_grade, ued_education_type);
        }

        public void delete_Education(int employeeEducationId)
        {
            EmployeeDL educationDL = new EmployeeDL();
            educationDL.delete_Education(employeeEducationId);
        }
        public DataSet show_educationgrid_data()
        {
            DataSet ds_grid = new DataSet();
            EmployeeDL grid_data = new EmployeeDL();
            ds_grid = grid_data.show_educationgrid_data();
            return ds_grid;
        }

        public DataSet show_Docgrid_data()
        {
            DataSet ds_grid = new DataSet();
            EmployeeDL grid_data = new EmployeeDL();
            ds_grid = grid_data.show_Docgrid_data();
            return ds_grid;
        }

        public DataSet view_empgrid_data()
        {
            DataSet ds_grid = new DataSet();
            EmployeeDL grid_data = new EmployeeDL();
            ds_grid = grid_data.view_empgrid_data();
            return ds_grid;
        }
        public DataSet view_empidgrid_data(int eid)
        {
            DataSet ds_grid = new DataSet();
            EmployeeDL grid_data = new EmployeeDL();
            ds_grid = grid_data.view_empidgrid_data(eid);
            return ds_grid;

        }
    }
}
