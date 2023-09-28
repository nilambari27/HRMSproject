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
        public object Response { get; private set; }
        //public int did;

        public void setDeptInfo(string deptname,string email,int depthead,string parentdept,string create_by,DateTime created_on)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("AddDepartment", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@deptname", deptname);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@depthead", depthead);
                        cmd.Parameters.AddWithValue("@parentdept", parentdept);
                        cmd.Parameters.AddWithValue("@create_by", create_by);
                        cmd.Parameters.AddWithValue("@created_on", created_on);

                        cmd.ExecuteNonQuery();
                    }
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

        public void updateDeptInfo(int d_id, string d_name, string d_mail, int d_head_empid, string parent_d_name, string created_by_nam, DateTime created_dt)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("UpdateDepartment", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@d_id", d_id);
                        cmd.Parameters.AddWithValue("@d_name", d_name);
                        cmd.Parameters.AddWithValue("@d_mail", d_mail);
                        cmd.Parameters.AddWithValue("@d_head_empid", d_head_empid);
                        cmd.Parameters.AddWithValue("@parent_d_name", parent_d_name);
                        cmd.Parameters.AddWithValue("@created_by_nam", created_by_nam);
                        cmd.Parameters.AddWithValue("@created_dt", created_dt);

                        cmd.ExecuteNonQuery();
                    }
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
        public void deleteInfo(int deptId) 
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("DeleteDepartment", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("deptId",deptId);
                        cmd.ExecuteNonQuery();
                    }

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
                    string query = "select distinct dept_head_empid from department;";
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

        public DataSet getParentName()
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select parent_dept_name from parent_department;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    MySqlDataAdapter pda = new MySqlDataAdapter(cmd);

                    DataSet ds_parent = new DataSet();
                    pda.Fill(ds_parent);

                    return ds_parent;
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
