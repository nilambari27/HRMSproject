using Hrms_DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_BusinessLogic
{
    public class EventBL
    {
        public void SetEvent(string ename,string edesc,DateTime stdt, DateTime nddt, DateTime sttime, DateTime ndtime,string sharemail,string createdby,DateTime created_on)
        {
            EventDL eventDL = new EventDL();
            eventDL.SetEvent(ename, edesc, stdt, nddt, sttime, ndtime, sharemail, createdby, created_on);
        }

        public void updateEvent(int eid, string ename, string edesc, DateTime stdt, DateTime nddt, DateTime sttime, DateTime ndtime, string sharemail, string createdby, DateTime created_on)
        {
            EventDL eventDL = new EventDL();
            eventDL.updateEvent(eid,ename,edesc,stdt,nddt,sttime,ndtime,sharemail, createdby, created_on);
        }

        public void deleteEvent(int eId)
        {
            EventDL eventDL = new EventDL();
            eventDL.deleteEvent(eId);
        }
        public DataSet show_grid_Data()
        {
            DataSet ds_grid = new DataSet();
            EventDL grid_data = new EventDL();
            ds_grid = grid_data.show_grid_data();
            return ds_grid;
        }
    }
}
