using Hrms_DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_BusinessLogic
{
    public class EventBL
    {
        public DataSet show_grid_Data()
        {
            DataSet ds_grid = new DataSet();
            EventDL grid_data = new EventDL();
            ds_grid = grid_data.show_grid_data();
            return ds_grid;
        }
    }
}
