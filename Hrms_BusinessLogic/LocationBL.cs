using Hrms_DataLayer;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace Hrms_BusinessLogic
{
    public class LocationBL
    {
        public void setlocationInfo(string location_name, string mail_alias, string p_Cntry,string p_state, string created_by, DateTime created_on)
        {


            LocationDL loctiondl = new LocationDL();

            loctiondl.setlocationInfo(location_name, mail_alias, p_Cntry, p_state, created_by, created_on);

        }
        public void updateLocation(int lid, string loction_name, string mail_alias, string p_Cntry, string p_state, string created_by, DateTime created_on)
        {
            LocationDL locationDL = new LocationDL();
            locationDL.updateLocation(lid, loction_name, mail_alias, p_Cntry, p_state, created_by, created_on);
        }

        public void deleteLocation(int lId)
        {
            LocationDL locationDL = new LocationDL();
            locationDL.deleteLocation(lId);
        }
        public DataSet show_grid_Data()
        {
            DataSet ds_grid = new DataSet();
            LocationDL grid_data = new LocationDL();
            ds_grid = grid_data.show_grid_data();
            return ds_grid;
        }
    }
}

