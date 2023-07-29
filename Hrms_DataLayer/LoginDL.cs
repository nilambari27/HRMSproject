using Hrms_Repository;
using MySql.Data.MySqlClient;
using System;
using System.Collections;
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
            BaseRepository baserepo = new BaseRepository();
                     
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    MySqlCommand cmd = new MySqlCommand("SELECT user_email FROM login_master where user_email = @useremail and password = @password", connection);
                    cmd.Parameters.AddWithValue("@useremail", useremail);
                    cmd.Parameters.AddWithValue("@password", password);

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

    }
}
