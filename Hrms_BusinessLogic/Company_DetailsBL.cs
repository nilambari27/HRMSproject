using Hrms_DataLayer;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_BusinessLogic
{
    public class Company_DetailsBL
    {
        public void setCompanyDetailsInfo(string p_Company_Name, string p_Website_Url, string p_Line_Of_Business, string p_Company_Type, string p_Contact_Person, string p_Contact_Number, string p_Email_Id, string p_Designation, string p_Company_Address1,  string P_Created_By, DateTime P_Created_Date)
        {


            Company_DetailsDL companydetailsDL = new Company_DetailsDL();

            companydetailsDL.setCompanyDetailsInfo(p_Company_Name, p_Website_Url, p_Line_Of_Business, p_Company_Type, p_Contact_Person, p_Contact_Number, p_Email_Id, p_Designation, p_Company_Address1, P_Created_By, P_Created_Date);

        }
        //public void updateCompanyDetailsInfo(int d_id, string d_Company_Name, string d_Website_Url, string d_Line_Of_Business, string d_Company_Type, string d_Contact_Person,  string d_Contact_Number, string d_Email_Id, string d_Designation,string d_Company_Address1,string d_Created_By, DateTime d_Created_Date)
        //{
        //    Company_DetailsDL cpDL = new Company_DetailsDL();
        //    cpDL.updateCompanyDetailsInfo(d_id, d_Company_Name, d_Website_Url, d_Line_Of_Business, d_Company_Type, d_Contact_Person,
        //        d_Contact_Number, d_Email_Id, d_Designation, d_Company_Address1, d_Created_By, d_Created_Date);
        //}
        //public void deleteInfo(int cmpnyId)
        //{
        //    Company_DetailsDL companydetailsDL = new Company_DetailsDL();
        //    companydetailsDL.deleteInfo(cmpnyId);
        //}
       
        public DataSet show_grid_Data()
        {
            DataSet ds_grid = new DataSet();
            Company_DetailsDL grid_data = new Company_DetailsDL();
            ds_grid = grid_data.show_grid_data();
            return ds_grid;
        }
    }
}
