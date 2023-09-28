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
    public class DepartmentBL
    {
        public void setDeptInfo(string deptname, string email, int depthead, string parentdept, string created_by, DateTime created_on)
        {
            DepartmentDL deptdl = new DepartmentDL();
            deptdl.setDeptInfo(deptname, email, depthead, parentdept, created_by, created_on);
        }

        public void updateDeptInfo(int d_id,string d_name,string d_mail,int d_head_empid,string parent_d_name,string created_by_nam,DateTime created_dt)
        {
            DepartmentDL upDL = new DepartmentDL();
            upDL.updateDeptInfo(d_id, d_name, d_mail, d_head_empid, parent_d_name, created_by_nam, created_dt);
        }
        public void deleteInfo(int deptId) 
        {
            DepartmentDL departmentDL = new DepartmentDL();
            departmentDL.deleteInfo(deptId);
        }
        public DataSet getData() 
        {
            DataSet ds_head = new DataSet();
            DepartmentDL d = new DepartmentDL();
            ds_head = d.getData();
            return ds_head;
        }

        public DataSet getParentName() 
        {
            DataSet ds_parent = new DataSet();
            DepartmentDL d1 = new DepartmentDL();
            ds_parent = d1.getParentName();
            return ds_parent;
        }

        public DataSet show_grid_Data() 
        {
            DataSet ds_grid = new DataSet();
            DepartmentDL grid_data= new DepartmentDL();
            ds_grid= grid_data.show_grid_data();
            return ds_grid;
        }
    }
}
