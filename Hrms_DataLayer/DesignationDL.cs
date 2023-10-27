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
    public class DesignationDL
    {
        public object Response { get; private set; }

        public void setDesigignationInfo(string Designation_Name, string Mail_Alias,  string create_by, DateTime created_on)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("AddDesignation", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@designame", Designation_Name );
                        cmd.Parameters.AddWithValue("@mailalias", Mail_Alias);
                        cmd.Parameters.AddWithValue("@created_by", create_by);
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
        public void updateDesigignationInfo(int d_id, string d_designame, string d_mailalias, string d_created_by, DateTime d_created_on)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("UpdateDesignation", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@d_id", d_id);
                        cmd.Parameters.AddWithValue("@d_designame", d_designame);
                        cmd.Parameters.AddWithValue("@d_mailalias", d_mailalias);
                        cmd.Parameters.AddWithValue("@d_created_by", d_created_by);
                        cmd.Parameters.AddWithValue("@d_created_on", d_created_on);
                        

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
        public void deleteInfo(int desigId)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("DeleteDesignation", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("desigId", desigId);
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
                    string query = "select * from designation_master;";
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



