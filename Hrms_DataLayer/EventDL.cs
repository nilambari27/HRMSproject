using Hrms_Repository;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_DataLayer
{
    public class EventDL
    {
        public void SetEvent(string ename, string edesc, DateTime stdt, DateTime nddt, DateTime sttime, DateTime ndtime, string sharemail, string createdby, DateTime created_on)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("AddEvent", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ename", ename);
                        cmd.Parameters.AddWithValue("@edesc", edesc);
                        cmd.Parameters.AddWithValue("@st_dt", stdt);
                        cmd.Parameters.AddWithValue("@en_dt", nddt);
                        cmd.Parameters.AddWithValue("@st_time", sttime);
                        cmd.Parameters.AddWithValue("@en_time", ndtime);
                        cmd.Parameters.AddWithValue("@event_share", sharemail);
                        cmd.Parameters.AddWithValue("@createdby", createdby);
                        cmd.Parameters.AddWithValue("@created_dt", created_on);

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

        public void updateEvent(int eid,string ename, string edesc, DateTime stdt, DateTime nddt, DateTime sttime, DateTime ndtime, string sharemail, string createdby, DateTime created_on)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("UpdateEvent", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@eid", eid);
                        cmd.Parameters.AddWithValue("@ename", ename);
                        cmd.Parameters.AddWithValue("@edesc", edesc);
                        cmd.Parameters.AddWithValue("@st_dt", stdt);
                        cmd.Parameters.AddWithValue("@en_dt", nddt);
                        cmd.Parameters.AddWithValue("@st_time", sttime);
                        cmd.Parameters.AddWithValue("@en_time", ndtime);
                        cmd.Parameters.AddWithValue("@event_share", sharemail);
                        cmd.Parameters.AddWithValue("@createdby", createdby);
                        cmd.Parameters.AddWithValue("@created_dt", created_on);

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

        public void deleteEvent(int eId)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("DeleteEvent", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("eid", eId);
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
                    string query = "select * from event_details;";
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
