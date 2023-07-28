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
    public class LoginDL
    {
        //get the user logininfo and pass to BL layer
        public DataSet getMyLogin(string useremail, string password)
        {
            // object of baseRepository class to get connection details
            BaseRepository baserepo = new BaseRepository();

            // Call GetDBConnection funtion to open connection in database
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    var query = "SELECT user_email FROM login_master where user_email = @useremail and password=@password";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    // Retrive the value using pameter
                    //cmd.Parameters.Add("@useremail", MySqlDbType.VarChar, 100, useremail);
                    //cmd.Parameters.Add("@password", MySqlDbType.VarChar, 100, password);
                    cmd.Parameters.AddWithValue("@useremail", useremail);
                    cmd.Parameters.AddWithValue("@password", password);
                    //Create MySqlDataAdapter to get data from Mysql
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);

                    //Create Datase set to store query result
                    DataSet dsUser = new DataSet();

                    adapter.SelectCommand = cmd;

                    //cmd.ExecuteNonQuery();
                    adapter.Fill(dsUser);
                    
                    return dsUser;

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
