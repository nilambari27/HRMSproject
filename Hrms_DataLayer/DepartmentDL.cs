using Hrms_Repository;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_DataLayer
{
    public class DepartmentDL
    {
        public DataSet setDeptInfo(string deptname,string email,int depthead,string parentdept,string created_by,DateTime created_on)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    MySqlCommand cmd = new MySqlCommand("AddDepartment", connection);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@dept_name", deptname);
                    cmd.Parameters.AddWithValue("@dept_mail", email);
                    cmd.Parameters.AddWithValue("@dept_head_empid", depthead);
                    cmd.Parameters.AddWithValue("@parent_dept_name", parentdept);
                    cmd.Parameters.AddWithValue("@created_by", created_by);
                    cmd.Parameters.AddWithValue("@created_date", created_on);

                    cmd.ExecuteNonQuery();

                    MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw (ex);
                }
                finally
                {
                    connection.Dispose();
                }

            }

        }

        public DataSet getData()
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select dept_head_empid from department;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);
                    
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    
                    DataSet ds_head = new DataSet();
                    da.Fill(ds_head);
                                        
                    return ds_head;
                }
                catch (Exception ex)
                {
                    throw (ex);
                }
                finally
                {
                    connection.Dispose();
                }

            }
        }

        public DataSet show_grid_data() 
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from department;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);

                    DataSet ds_grid = new DataSet();
                    da1.Fill(ds_grid);
                    return ds_grid;
                }
                catch (Exception ex)
                {
                    throw (ex);
                }
                finally
                {
                    connection.Dispose();
                }

            }
        }

    }
}
