using HRMS_DL;
using System.Data;

namespace HRMS_BL
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