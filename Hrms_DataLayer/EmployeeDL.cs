using Hrms_Repository;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace Hrms_DataLayer
{
    public class EmployeeDL
    {

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

        public DataSet getDeptData()
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select dept_name,dept_id from department;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    DataSet ds_dept = new DataSet();
                    da.Fill(ds_dept);

                    return ds_dept;
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

        public DataSet getDesigData()
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select Designation_Name,desi_id from designation_master;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    DataSet ds_desig = new DataSet();
                    da.Fill(ds_desig);

                    return ds_desig;
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
        public DataSet getSupervisorData()
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from supervisor_view;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    DataSet ds_super = new DataSet();
                    da.Fill(ds_super);

                    return ds_super;
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

        public DataSet getRole()
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select RoleName,role_id from user_role;";
                    MySqlCommand cmd = new MySqlCommand(query, connection);

                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    DataSet ds_Role = new DataSet();
                    da.Fill(ds_Role);

                    return ds_Role;
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
       
        public void setSkillsInfo(int Emp_id, string SkillName, string TypeOfSkill, int Experience, string Expertise)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("AddEmployee_Skills", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Emp_id", Emp_id);
                        cmd.Parameters.AddWithValue("@SkillName", SkillName);
                        cmd.Parameters.AddWithValue("@TypeOfSkill", TypeOfSkill);
                        cmd.Parameters.AddWithValue("@Experience", Experience);
                        cmd.Parameters.AddWithValue("@Expertise", Expertise);

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
        public DataSet show_skillgrid_data(int empId)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from employee_skills where emp_id=6;";
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

        public void update_emp_skills(int U_Emp_id, string U_SkillName, string U_TypeOfSkill, int U_Experience, string U_Expertise)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("Update_Employee_Skills", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@U_Emp_id", U_Emp_id);
                        cmd.Parameters.AddWithValue("@U_SkillName", U_SkillName);
                        cmd.Parameters.AddWithValue("@U_TypeOfSkill", U_TypeOfSkill);
                        cmd.Parameters.AddWithValue("@U_Experience", U_Experience);
                        cmd.Parameters.AddWithValue("@U_Expertise", U_Expertise);


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
        public void delete_emp_skills(int empSkillId)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("Delete_Employee_Skills", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@empid", empSkillId);
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

        public void setExperienceInfo(int Emp_id, string CompanyName, string Desig_Nation, DateTime DateOfJoin, DateTime DateOfRsgn, string ProfileSummary)
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

        public void updateExperienceInfo(int Uex_emp_id, string Uex_company_name, string Uex_designation, DateTime Uex_DtJoin, DateTime Uex_DtResign, string Uex_profile_summary)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("UpdateEmployee_Experience", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Uex_emp_id", Uex_emp_id);
                        cmd.Parameters.AddWithValue("@Uex_company_name", Uex_company_name);
                        cmd.Parameters.AddWithValue("@Uex_designation", Uex_designation);
                        cmd.Parameters.AddWithValue("@Uex_DtJoin", Uex_DtJoin);
                        cmd.Parameters.AddWithValue("@Uex_DtResign", Uex_DtResign);
                        cmd.Parameters.AddWithValue("@Uex_profile_summary", Uex_profile_summary);

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
        public void deleteExperienceInfo(int emp_id)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("DeleteEmployee_Experience", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@employeeExperienceId", emp_id);
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

        public void update_Education(int Ued_emp_id, string Ued_qualification, string Ued_institution_name, string Ued_board_university, string Ued_major_subjects, string ued_passing_year, decimal ued_percentage, string ued_grade, string ued_education_type)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("UpdateEmployee_Education", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ Ued_emp_id", Ued_emp_id);
                        cmd.Parameters.AddWithValue("@Ued_qualification", Ued_qualification);
                        cmd.Parameters.AddWithValue("@Ued_institution_name", Ued_institution_name);
                        cmd.Parameters.AddWithValue("@Ued_board_university", Ued_board_university);
                        cmd.Parameters.AddWithValue("@Ued_major_subjects", Ued_major_subjects);
                        cmd.Parameters.AddWithValue("@ued_passing_year", ued_passing_year);
                        cmd.Parameters.AddWithValue("@ued_percentage", ued_percentage);
                        cmd.Parameters.AddWithValue("@ued_grade", ued_grade);
                        cmd.Parameters.AddWithValue("@ued_education_type", ued_education_type);
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

        public void delete_Education(int employeeEducationId)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand("DeleteEmployee_Education", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@employeeEducationId", employeeEducationId);
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

        public DataSet show_Docgrid_data()
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from employee_docs;";
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

        public DataSet view_empgrid_data()
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                    string query = "select * from employee_info;";
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

        public DataSet view_empidgrid_data(int eid)
        {
            BaseRepository baserepo = new BaseRepository();
            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();
                   
                    MySqlCommand cmd = new MySqlCommand("view_emp_info", connection);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@eid", eid);

                    cmd.ExecuteNonQuery();

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

        public int getSupId(string supervisor_name)
        {
            BaseRepository baserepo = new BaseRepository();
            int supervisor_id = 0;

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    string q1 = "SELECT emp_id FROM supervisor_view WHERE name = @supervisor_name;";
                    using (MySqlCommand c1 = new MySqlCommand(q1, connection))
                    {
                        c1.CommandType = CommandType.Text;
                        c1.Parameters.AddWithValue("@supervisor_name", supervisor_name);

                        connection.Open();

                        using (MySqlDataReader reader = c1.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                supervisor_id = reader.GetInt32(0); 
                            }
                        }
                    }
                    return supervisor_id;
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

        public int getDeptId(string dept_name)
        {
            BaseRepository baserepo = new BaseRepository();
            int DeptId = 0;

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    string q1 = "SELECT dept_id FROM department WHERE dept_name = @dept_name;";
                    using (MySqlCommand c1 = new MySqlCommand(q1, connection))
                    {
                        c1.CommandType = CommandType.Text;
                        c1.Parameters.AddWithValue("@dept_name", dept_name);

                        connection.Open();

                        using (MySqlDataReader reader = c1.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                DeptId = reader.GetInt32(0); 
                            }
                        }
                    }
                    
                    return DeptId;
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

        public int getDesiId(string desi_name)
        {
            BaseRepository baserepo = new BaseRepository();
            int DesiId = 0;

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    string q1 = "select desi_id from designation_master where Designation_Name=@desi_name;";
                    using (MySqlCommand c1 = new MySqlCommand(q1, connection))
                    {
                        c1.CommandType = CommandType.Text;
                        c1.Parameters.AddWithValue("@desi_name", desi_name);

                        connection.Open();

                        using (MySqlDataReader reader = c1.ExecuteReader())
                        {
                            if (reader.Read())
                            {                                
                                DesiId = reader.GetInt32(0); 
                            }
                        }
                    }
                    return DesiId;
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

        public int setEmployeeInfo(string first_name, string last_name, string gender, DateTime DOB, DateTime DOJ, DateTime DOE, string office_email, string marital_status,
                    string office_mobile, string supervisor_name, string dept_name, string desi_name, string added_by, DateTime added_on, string modified_by, DateTime modified_on,
                    string aadhar_number, string pan_number, string uan_number, string about_me, string parent_name, string relationship_parent, string location,
                    string emp_role, string employment_type, string employee_status, string emp_function, string source_of_hier, int probation_period,
                    string present_address, string permanent_address, string personal_mobile, string personal_email, string alternate_mobile, string account_number,
                    string bank_name, string bank_br_add, string IFSC_code)
        {
            BaseRepository baserepo = new BaseRepository();

            using (var connection = baserepo.GetDBConnection())
            {
                try
                {
                    connection.Open();

                    int supervisor_id, dept_id, desi_id, empId;
                    
                    supervisor_id = getSupId(supervisor_name);
                    dept_id = getDeptId(dept_name);
                    desi_id = getDesiId(desi_name);

                    using (MySqlCommand cmd = new MySqlCommand("Insert_Emp", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@p_first_name", first_name);
                        cmd.Parameters.AddWithValue("@p_last_name", last_name);
                        cmd.Parameters.AddWithValue("@p_gender", gender);
                        cmd.Parameters.AddWithValue("@p_DOB", DOB);
                        cmd.Parameters.AddWithValue("@p_DOJ", DOJ);
                        cmd.Parameters.AddWithValue("@p_DOE", DOE);
                        cmd.Parameters.AddWithValue("@p_office_email", office_email);
                        cmd.Parameters.AddWithValue("@p_marital_status", marital_status);
                        cmd.Parameters.AddWithValue("@p_office_mobile", office_mobile);
                        cmd.Parameters.AddWithValue("@p_supervisor_id", supervisor_id);
                        cmd.Parameters.AddWithValue("@p_dept_id", dept_id);
                        cmd.Parameters.AddWithValue("@p_desi_id", desi_id);
                        cmd.Parameters.AddWithValue("@p_added_by", added_by);
                        cmd.Parameters.AddWithValue("@p_added_on", added_on);
                        cmd.Parameters.AddWithValue("@p_modified_by", modified_by);
                        cmd.Parameters.AddWithValue("@p_modified_on", modified_on);
                        cmd.Parameters.AddWithValue("@p_aadhar_number", aadhar_number);
                        cmd.Parameters.AddWithValue("@p_pan_number", pan_number);
                        cmd.Parameters.AddWithValue("@p_uan_number", uan_number);
                        cmd.Parameters.AddWithValue("@p_about_me", about_me);
                        cmd.Parameters.AddWithValue("@p_parent_name", parent_name);
                        cmd.Parameters.AddWithValue("@p_relationship_parent", relationship_parent);
                        cmd.Parameters.AddWithValue("@p_location", location);
                        cmd.Parameters.AddWithValue("@p_emp_role", emp_role);
                        cmd.Parameters.AddWithValue("@p_employment_type", employment_type);
                        cmd.Parameters.AddWithValue("@p_employee_status", employee_status);
                        cmd.Parameters.AddWithValue("@p_emp_function", emp_function);
                        cmd.Parameters.AddWithValue("@p_source_of_hier", source_of_hier);
                        cmd.Parameters.AddWithValue("@p_probation_period", probation_period);
                        cmd.Parameters.AddWithValue("@p_present_address", present_address);
                        cmd.Parameters.AddWithValue("@p_permanent_address", permanent_address);
                        cmd.Parameters.AddWithValue("@p_personal_mobile", personal_mobile);
                        cmd.Parameters.AddWithValue("@p_personal_email", personal_email);
                        cmd.Parameters.AddWithValue("@p_alternate_mobile", alternate_mobile);
                        cmd.Parameters.AddWithValue("@p_bank_name", bank_name);
                        cmd.Parameters.AddWithValue("@p_account_number", account_number);
                        cmd.Parameters.AddWithValue("@p_bank_br_add", bank_br_add);
                        cmd.Parameters.AddWithValue("@p_IFSC_code", IFSC_code);



                        MySqlParameter empIdParam = new MySqlParameter("@new_emp_id", MySqlDbType.Int32);
                        empIdParam.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(empIdParam);


                        cmd.ExecuteNonQuery();
                        empId = Convert.ToInt32(cmd.Parameters["@new_emp_id"].Value);

                        return empId;
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
    }
}
