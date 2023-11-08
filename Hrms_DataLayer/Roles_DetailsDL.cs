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
    public class Roles_DetailsDL
    {
        
            //public object Response { get; private set; }

            public void setRolesInfo(int Role_ID, string Role_Name, string create_by, DateTime created_on)
            {
                BaseRepository baserepo = new BaseRepository();

                using (var connection = baserepo.GetDBConnection())
                {
                    try
                    {
                        connection.Open();

                        using (MySqlCommand cmd = new MySqlCommand("AddUser_roles", connection))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@EmployeeID", Role_ID);
                            cmd.Parameters.AddWithValue("@roleName", Role_Name);
                            cmd.Parameters.AddWithValue("@createdby", create_by);
                            cmd.Parameters.AddWithValue("@createdon", created_on);

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
        public void updateRolesDetailsInfo(int r_id, string r_roleName, int r_EmployeeID, string r_createdby, DateTime r_createdon)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("Updateuser_role1", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@r_id", r_id);
                        cmd.Parameters.AddWithValue("@r_EmployeeID", r_EmployeeID);
                        cmd.Parameters.AddWithValue("@r_roleName", r_roleName);
                        cmd.Parameters.AddWithValue("@r_createdon", r_createdon);
                        cmd.Parameters.AddWithValue("@r_createdby", r_createdby);


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



        public void deleteInfo(int rolesId)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("Deleteuser_role1", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("rolesId", rolesId);
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
        public DataSet show_grid_data()
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from user_role;";
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
