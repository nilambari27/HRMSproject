using Hrms_DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_BusinessLogic
{
    public class LoginBL
    {
        public DataSet getMyLogin(string useremail, string password)
        {
            DataSet dsUser = new DataSet();
            LoginDL ldl = new LoginDL();

            dsUser = ldl.getMyLogin(useremail, password);
            return dsUser;
        }

    }
}
