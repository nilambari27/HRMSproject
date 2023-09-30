using Hrms_DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_BusinessLogic
{
    public class ChangePasswordBL
    {
        public void setPassword(int empid, string confirmpass, string mod_by, DateTime mod_dt)
        {
            ChangePasswordDL setdl = new ChangePasswordDL();
            setdl.setPassword(empid, confirmpass, mod_by, mod_dt);
        }
        public DataSet show_grid_Data()
        {
            DataSet ds_grid = new DataSet();
            ChangePasswordDL grid_data = new ChangePasswordDL();
            ds_grid = grid_data.show_grid_data();
            return ds_grid;
        }
    }
}
