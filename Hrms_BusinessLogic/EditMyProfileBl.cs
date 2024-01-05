using Hrms_DataLayer;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
namespace Hrms_BusinessLogic
{
    // Assuming you have a method to get employee data by ID
    public class EditMyProfileBL
    {
        public int setEmployeeInfo(string first_name, string last_name, string gender, DateTime DOB, DateTime DOJ, DateTime DOE, string office_email, string marital_status,
                    string office_mobile, string supervisor_name, string dept_name, string desi_name, string added_by, DateTime added_on, string modified_by, DateTime modified_on,
                    string aadhar_number, string pan_number, string uan_number, string about_me, string parent_name, string relationship_parent, string location,
                    string emp_role, string employment_type, string employee_status, string emp_function, string source_of_hier, int probation_period,
                    string present_address, string permanent_address, string personal_mobile, string personal_email, string alternate_mobile, string account_number,
                    string bank_name, string bank_br_add, string IFSC_code)
        {
            EditMyProfileDL empdl = new EditMyProfileDL();
            int empId = empdl.setEmployeeInfo(first_name, last_name, gender, DOB, DOJ, DOE, office_email, marital_status, office_mobile,
            supervisor_name, dept_name, desi_name, added_by, added_on, modified_by, modified_on, aadhar_number, pan_number, uan_number,
            about_me, parent_name, relationship_parent, location, emp_role, employment_type, employee_status, emp_function, source_of_hier,
            probation_period, present_address, permanent_address, personal_mobile, personal_email, alternate_mobile, account_number,
            bank_name, bank_br_add, IFSC_code);

            return empId;

        }
        public DataSet getData()
        {
            DataSet ds_loc = new DataSet();
            EditMyProfileDL d = new EditMyProfileDL();
            ds_loc = d.getData();
            return ds_loc;
        }
        public DataSet getDeptData()
        {
            DataSet ds_dept = new DataSet();
            EditMyProfileDL d = new EditMyProfileDL();
            ds_dept = d.getDeptData();
            return ds_dept;
        }

        public DataSet getRole()
        {
            DataSet ds_Role = new DataSet();
            EditMyProfileDL d = new EditMyProfileDL();
            ds_Role = d.getRole();
            return ds_Role;
        }

        public DataSet getSupervisorData()
        {
            DataSet ds_super = new DataSet();
            EditMyProfileDL d = new EditMyProfileDL();
            ds_super = d.getSupervisorData();
            return ds_super;
        }

        public DataSet getDesigData()
        {
            DataSet ds_desig = new DataSet();
            EditMyProfileDL d = new EditMyProfileDL();
            ds_desig = d.getDesigData();
            return ds_desig;
        }
        public DataSet view_empgrid_data()
        {
            DataSet ds_grid = new DataSet();
            EditMyProfileDL grid_data = new EditMyProfileDL();
            ds_grid = grid_data.view_empgrid_data();
            return ds_grid;
        }
        public DataSet view_empidgrid_data(int eid)
        {
            DataSet ds_grid = new DataSet();
            EditMyProfileDL grid_data = new EditMyProfileDL();
            ds_grid = grid_data.view_empidgrid_data(eid);
            return ds_grid;

        }

        public DataSet getEmployeeDataById(int employeeId)
        {
            DataSet ds_emp = new DataSet();
            EditMyProfileDL d = new EditMyProfileDL();
            ds_emp = d.view_empidgrid_data(employeeId);
            return ds_emp;
        }
    }

}
