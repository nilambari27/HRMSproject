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
    public class Roles_DetailsBL
    {
        public void setRolesInfo(int Role_ID, string Role_Name, string create_by, DateTime created_on)
        {
            

            Roles_DetailsDL rolesdl = new Roles_DetailsDL();

            rolesdl.setRolesInfo(Role_ID, Role_Name, create_by, created_on);
            
        }
        public void updateRolesDetailsInfo(int r_id, string r_roleName, int r_EmployeeID,  string r_createdby, DateTime r_createdon)
        {
            Roles_DetailsDL upDL = new Roles_DetailsDL();
            upDL.updateRolesDetailsInfo(r_id, r_roleName, r_EmployeeID, r_createdby, r_createdon);
        }
        public void deleteInfo(int deptId)
        {
            Roles_DetailsDL departmentDL = new Roles_DetailsDL();
            departmentDL.deleteInfo(deptId);
        }
        public DataSet show_grid_Data()
        {
            DataSet ds_grid = new DataSet();
            Roles_DetailsDL grid_data = new Roles_DetailsDL();
            ds_grid = grid_data.show_grid_data();
            return ds_grid;
        }
    }
}
