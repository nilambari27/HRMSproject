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
    public class myprofileBL
    {
        public DataSet show_Employeeprofile_data()
        {
            DataSet ds_data = new DataSet();
            myprofileDL show_data = new myprofileDL();
            ds_data = show_data.show_Employeeprofile_data();
            return ds_data;
        }
        public DataSet show_ESkillsGrid_data(string empId)
        {
            DataSet ds_grid = new DataSet();
            myprofileDL grid_data = new myprofileDL();
            ds_grid = grid_data.show_ESkillsGrid_data(empId); 
            return ds_grid;
        }

        public DataSet show_EditEducationGrid_data(string empId)
        {

            DataSet ds_grid = new DataSet();
            myprofileDL grid_data = new myprofileDL();
            ds_grid = grid_data.show_EditEducationGrid_data(empId);
            return ds_grid;
        }
        public DataSet show_EditExperienceGrid_data(string empId)
        {

            DataSet ds_grid = new DataSet();
            myprofileDL grid_data = new myprofileDL();
            ds_grid = grid_data.show_EditExperienceGrid_data(empId);
            return ds_grid;
        }
    }
}
