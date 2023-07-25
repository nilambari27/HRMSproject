using MySql.Data.MySqlClient;
using System.Configuration;

namespace HRMS_REPO
{
    public class BaseRepository
    {
        public MySqlConnection GetDBConnection()
        {
            //Variable declaration for connection string to read the connection from web.config file
            var connectionString = ConfigurationManager.ConnectionStrings["HRMSconn"].ConnectionString;

            //MySql connection which will take connectionString as a parmeter to connect to database  Server and database
            MySqlConnection mySqlConnection = new MySqlConnection(connectionString);
            return mySqlConnection;
        }

    }
}