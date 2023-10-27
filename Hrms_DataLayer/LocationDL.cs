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
    public class LocationDL
    {
        public void setlocationInfo(string location_name, string mail_alias, string p_Cntry,string p_state, string created_by, DateTime created_on)

        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("AddLocation", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@loction_name", location_name);
                        cmd.Parameters.AddWithValue("@mil_alias", mail_alias);
                        cmd.Parameters.AddWithValue("@coutry", p_Cntry);
                        cmd.Parameters.AddWithValue("@stte_province", p_state);
                        cmd.Parameters.AddWithValue("@creatd_By", created_by);
                        cmd.Parameters.AddWithValue("@creatd_date", created_on);



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


        public void updateLocation(int lid, string loction_name, string mail_alias, string p_Cntry, string p_state, string created_by, DateTime created_on)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("UpdateLocation", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@lid", lid);
                        cmd.Parameters.AddWithValue("@loction_name", loction_name);
                        cmd.Parameters.AddWithValue("@mail_alias", mail_alias);
                        cmd.Parameters.AddWithValue("@p_Cntry", p_Cntry);
                        cmd.Parameters.AddWithValue("@p_state", p_Cntry);
                        cmd.Parameters.AddWithValue("@created_by", created_by);
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


        public void deleteLocation(int lId)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("DeleteLocation", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("lid", lId);
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
                    string query = "select * from location;";
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
