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
    public class Company_DetailsDL
    {
        public object Response { get; private set; }
        public void setCompanyDetailsInfo(string p_Company_Name, string p_Website_Url, string p_Line_Of_Business, string p_Company_Type, string p_Contact_Person, string p_Contact_Number, string p_Email_Id, string p_Designation, string p_Company_Address1, string P_Created_By, DateTime P_Created_Date)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("InsertCompanymaster", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@p_Company_Name", p_Company_Name);
                        cmd.Parameters.AddWithValue("@p_Contact_Person", p_Contact_Person);
                        cmd.Parameters.AddWithValue("@p_Contact_Number", p_Contact_Number);
                        cmd.Parameters.AddWithValue("@p_Email_Id", p_Email_Id);
                        cmd.Parameters.AddWithValue("@p_Line_Of_Business", p_Line_Of_Business);
                        cmd.Parameters.AddWithValue("@p_Website_Url", p_Website_Url);
                        cmd.Parameters.AddWithValue("@p_Designation", p_Designation);
                        cmd.Parameters.AddWithValue("@p_Company_Type", p_Company_Type);
                        cmd.Parameters.AddWithValue("@p_Company_Address1", p_Company_Address1);
                        cmd.Parameters.AddWithValue("@P_Created_By", P_Created_By);
                        cmd.Parameters.AddWithValue("@P_Created_Date", P_Created_Date);




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
        public DataSet getData()
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select emp_id from employee_master;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    DataSet ds_head = new DataSet();
                    da.Fill(ds_head);

                    return ds_head;
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
        public void updateCompanyDetailsInfo(int d_id, string d_Company_Name, string d_Website_Url, string d_Line_Of_Business, string d_Company_Type, string d_Contact_Person, string d_Contact_Number, string d_Email_Id, string d_Designation, string d_Company_Address1, string d_Created_By, DateTime d_Created_Date)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("UpdateCompany_Details", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@d_id", d_id);
                        cmd.Parameters.AddWithValue("@d_Company_Name", d_Company_Name);
                        cmd.Parameters.AddWithValue("@d_Website_Url", d_Website_Url);
                        cmd.Parameters.AddWithValue("@d_Line_Of_Business", d_Line_Of_Business);
                        cmd.Parameters.AddWithValue("@d_Company_Type", d_Company_Type);
                        cmd.Parameters.AddWithValue("@d_Contact_Person", d_Contact_Person);
                        cmd.Parameters.AddWithValue("@d_Contact_Number", d_Contact_Number);
                        cmd.Parameters.AddWithValue("@d_Email_Id", d_Email_Id);
                        cmd.Parameters.AddWithValue("@d_Designation", d_Designation);
                        cmd.Parameters.AddWithValue("@d_Company_Address1", d_Company_Address1);
                        cmd.Parameters.AddWithValue("@d_Created_By", d_Created_By);
                        cmd.Parameters.AddWithValue("@d_Created_Date", d_Created_Date);


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
        public void deleteInfo(int cmpnyId)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("Deletecompany_Details", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("cmpnyId", cmpnyId);
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
                    string query = "select * from company_master;";
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
