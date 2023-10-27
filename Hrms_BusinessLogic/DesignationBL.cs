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
    public class DesignationBL
    {
        public void SetDesignationInfo(string Designation_Name, string Mail_Alias, string create_by, DateTime created_on)
        {


            DesignationDL designationDL = new DesignationDL();

            designationDL.setDesigignationInfo( Designation_Name, Mail_Alias, create_by, created_on);

        }
        public void updateDesigignationInfo(int d_id, string d_designame, string d_mailalias, string d_created_by, DateTime d_created_on)
        {
            DesignationDL upDL = new DesignationDL();
            upDL.updateDesigignationInfo(d_id, d_designame, d_mailalias, d_created_by, d_created_on);
        }
        public void deleteInfo(int deptId)
        {
            DesignationDL designationDL = new DesignationDL();
            designationDL.deleteInfo(deptId);
        }
        public DataSet show_grid_Data()
        {
            DataSet ds_grid = new DataSet();
            DesignationDL grid_data = new DesignationDL();
            ds_grid = grid_data.show_grid_data();
            return ds_grid;
        }
    }
}
