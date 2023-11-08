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
    public class EmployeeDL
    {

        public void setEmpInfo(string deptname, string email, int depthead, string parentdept, string create_by, DateTime created_on)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("AddDepartment", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@deptname", deptname);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@depthead", depthead);
                        cmd.Parameters.AddWithValue("@parentdept", parentdept);
                        cmd.Parameters.AddWithValue("@create_by", create_by);
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

        public DataSet getData()
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select Location_Name from location;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    DataSet ds_loc = new DataSet();
                    da.Fill(ds_loc);

                    return ds_loc;
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


        public void setExperienceInfo(int Emp_id,string CompanyName, string Desig_Nation, DateTime DateOfJoin, DateTime DateOfRsgn, string ProfileSummary)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("AddEmployee_Experience", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Emp_id", Emp_id);
                        cmd.Parameters.AddWithValue("@CompanyName", CompanyName);
                        cmd.Parameters.AddWithValue("@Desig_Nation", Desig_Nation);
                        cmd.Parameters.AddWithValue("@DateOfJoin", DateOfJoin);
                        cmd.Parameters.AddWithValue("@DateOfRsgn", DateOfRsgn);
                        cmd.Parameters.AddWithValue("@ProfileSummary", ProfileSummary);

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

        public DataSet show_skillgrid_data()
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from employee_skills;";
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

        public DataSet show_experiencegrid_data()
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from employee_experience;";
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

        public void setEducationInfo(int Emp_id,string Qualification, string InstitutionName, string BoardUniversity, string MajorSubjects, string PassingYear, decimal Percentage, string Grade, string EducationType)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("AddEmployee_Education", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        
                        cmd.Parameters.AddWithValue("@Emp_id", Emp_id);
                        cmd.Parameters.AddWithValue("@Qualification", Qualification);
                        cmd.Parameters.AddWithValue("@InstitutionName", InstitutionName);
                        cmd.Parameters.AddWithValue("@BoardUniversity", BoardUniversity);
                        cmd.Parameters.AddWithValue("@MajorSubjects", MajorSubjects);
                        cmd.Parameters.AddWithValue("@PassingYear", PassingYear);
                        cmd.Parameters.AddWithValue("@Percentage", Percentage);
                        cmd.Parameters.AddWithValue("@Grade", Grade);
                        cmd.Parameters.AddWithValue("@EducationType", EducationType);

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
        public DataSet show_educationgrid_data()
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from employee_education;";
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
