using System.Data;
using HRMS_REPO;
using MySql.Data.MySqlClient;

namespace HRMS_DL
{
    public class LoginDL
    {
        //get the user logininfo and pass to BL layer
        public DataSet getMyLogin(string useremail, string password)
        {
            // object of baseRepository class to get connection details
            BaseRepository baserepo = new BaseRepository();

            // Call GetDBConnection funtion to open connection in database
            using(var connection=baserepo.GetDBConnection()) 
            {
                try
                {
                    connection.Open();

                    var query = "SELECT user_email FROM LoginMaster where user_email = @useremail and password=@password";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    // Retrive the value using pameter
                    cmd.Parameters.Add("@useremail", MySqlDbType.VarChar, 100, useremail);
                    cmd.Parameters.Add("@password", MySqlDbType.VarChar, 100, password);

                    //Create MySqlDataAdapter to get data from Mysql
                    MySqlDataAdapter adapter = new MySqlDataAdapter(query, connection);

                    //Create Datase set to store query result
                    DataSet dsUser = new DataSet();

                    adapter.SelectCommand = cmd;
                    adapter.Fill(dsUser);
                    // cmd.ExecuteNonQuery();
                    return dsUser;

                }
                catch (Exception ex) 
                {
                    throw(ex);
                }
                finally
                {
                    connection.Dispose();
                }

            }

        }

    }
}