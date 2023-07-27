using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_Repository
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
