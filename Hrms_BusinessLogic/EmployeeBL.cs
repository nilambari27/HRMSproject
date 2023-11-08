using Hrms_DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_BusinessLogic
{
    public class EmployeeBL
    {


        public DataSet getData()
        {
            DataSet ds_loc = new DataSet();
            EmployeeDL d = new EmployeeDL();
            ds_loc = d.getData();
            return ds_loc;
        }

        public DataSet show_skillgrid_Data()
        {
            DataSet ds_grid = new DataSet();
            EmployeeDL grid_data = new EmployeeDL();
            ds_grid = grid_data.show_skillgrid_data();
            return ds_grid;
        }

        public void setExperienceInfo(int Emp_id, string CompanyName, string Desig_Nation, DateTime DateOfJoin, DateTime DateOfRsgn, string ProfileSummary)
        {


            EmployeeDL experienceDL = new EmployeeDL();

            experienceDL.setExperienceInfo(Emp_id,CompanyName, Desig_Nation, DateOfJoin, DateOfRsgn, ProfileSummary);

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

        public DataSet show_educationgrid_data()
        {

            DataSet ds_grid = new DataSet();
            EmployeeDL grid_data = new EmployeeDL();
            ds_grid = grid_data.show_educationgrid_data();
            return ds_grid;
        }

    }
}
