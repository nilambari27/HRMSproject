using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMSWeb
{
    public partial class Company_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            string constr = ConfigurationManager.ConnectionStrings["HRMSconn"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM company_master", con))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gv.DataSource = dt;
                        gv.DataBind();
                    }
                }
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["HRMSconn"].ConnectionString;
            string qry = "INSERT INTO company_master ( Company_Name, Contact_Person, Contact_Number, Email_Id, Line_Of_Business, Website_Url, Degignation, Company_Type, Company_Address1, City1, State1, Country1, Zip1, Company_Address2, City2, State2, Country2, Zip2) " +
     "VALUES (@CompanyName, @ContactPerson, @ContactNumber, @EmailId, @LineOfBusiness, @WebsiteUrl, @Designation, @CompanyType, @Address1, @City1, @State1, @Country1, @Zip1, @Address2, @City2, @State2, @Country2, @Zip2)";

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(qry, con))
                {
                    cmd.Parameters.AddWithValue("@CompanyName", txtcompname.Text);
                    cmd.Parameters.AddWithValue("@ContactPerson", txtcontctpersn.Text);
                    cmd.Parameters.AddWithValue("@ContactNumber", txtcntctnum.Text);
                    cmd.Parameters.AddWithValue("@EmailId", txtemailid.Text);
                    cmd.Parameters.AddWithValue("@LineOfBusiness", txtlineofbussiness.SelectedValue);
                    cmd.Parameters.AddWithValue("@WebsiteUrl", txtweburl.Text);
                    cmd.Parameters.AddWithValue("@Designation", txtdesigntion.Text);
                    cmd.Parameters.AddWithValue("@CompanyType", txtcmpnytype.Text);
                    cmd.Parameters.AddWithValue("@Address1", txtadrsline1.Text);
                    cmd.Parameters.AddWithValue("@City1", txtcity.Text);
                    cmd.Parameters.AddWithValue("@State1", txtstate.Text);
                    cmd.Parameters.AddWithValue("@Country1", txtcontry.SelectedValue);
                    cmd.Parameters.AddWithValue("@Zip1", txtzippincode.Text);
                    cmd.Parameters.AddWithValue("@Address2", txtadrsline2.Text);
                    cmd.Parameters.AddWithValue("@City2", txtcity.Text);
                    cmd.Parameters.AddWithValue("@State2", txtstate.Text);
                    cmd.Parameters.AddWithValue("@Country2", txtcontry.SelectedValue);
                    cmd.Parameters.AddWithValue("@Zip2", txtzippincode.Text);

                    try
                    {
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            lblmessage.Text = "Data inserted successfully.";
                            ClearFormFields();
                            BindGridView();
                        }
                        else
                        {
                            lblmessage.Text = "Failed to insert data.";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblmessage.Text = "An error occurred: " + ex.Message;
                    }
                }
            }
        }

        private void ClearFormFields()
        {
            txtcompname.Text = "";
            txtcontctpersn.Text = "";
            txtcntctnum.Text = "";
            txtemailid.Text = "";
            txtlineofbussiness.SelectedIndex = -1;
            txtweburl.Text = "";
            txtdesigntion.Text = "";
            txtcmpnytype.Text = "";
            txtadrsline1.Text = "";
            txtcity.Text = "";
            txtstate.Text = "";
            txtcontry.SelectedIndex = -1;
            txtzippincode.Text = "";
            txtadrsline2.Text = "";
        }

        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle the selection of a row in the GridView if needed.
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtcompname.Text)) // Check if a Company Name is provided
            {
                string constr = ConfigurationManager.ConnectionStrings["HRMSconn"].ConnectionString;
                string qry = "UPDATE company_master SET " +
                    "Contact_Person = @ContactPerson, " +
                    "Contact_Number = @ContactNumber, " +
                    "Email_Id = @EmailId, " +
                    "Line_Of_Business = @LineOfBusiness, " +
                    "Website_Url = @WebsiteUrl, " +
                    "Degignation = @Designation, " +
                    "Company_Type = @CompanyType, " +
                    "Company_Address1 = @Address1, " +
                    "City1 = @City1, " +
                    "State1 = @State1, " +
                    "Country1 = @Country1, " +
                    "Zip1 = @Zip1, " +
                    "Company_Address2 = @Address2, " +
                    "City2 = @City2, " +
                    "State2 = @State2, " +
                    "Country2 = @Country2, " +
                    "Zip2 = @Zip2 " +
                    "WHERE Company_Name = @CompanyName";

                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand(qry, con))
                    {
                        // Set parameters (similar to the insert function)
                        // ...

                        try
                        {
                            con.Open();
                            int rowsAffected = cmd.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                lblmessage.Text = "Data updated successfully.";
                                ClearFormFields();
                                BindGridView();
                            }
                            else
                            {
                                lblmessage.Text = "No data updated.";
                            }
                        }
                        catch (Exception ex)
                        {
                            lblmessage.Text = "An error occurred: " + ex.Message;
                        }
                    }
                }
            }
            else
            {
                lblmessage.Text = "Please provide a Company Name to update.";
            }
        }

        protected void btndlt_Click(object sender, EventArgs e)
        {
            // Get the selected row from the GridView
            GridViewRow row = gv.SelectedRow;

            if (row != null)
            {
                // Retrieve the Company ID or any other unique identifier for the record
                int companyId = Convert.ToInt32(row.Cells[0].Text); // Assuming the ID is in the first column

                // Define your SQL delete query
                string constr = ConfigurationManager.ConnectionStrings["HRMSconn"].ConnectionString;
                string qry = "DELETE FROM company_master WHERE Company_ID = @CompanyId";

                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand(qry, con))
                    {
                        cmd.Parameters.AddWithValue("@CompanyId", companyId);

                        try
                        {
                            con.Open();
                            int rowsAffected = cmd.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                lblmessage.Text = "Data deleted successfully.";
                                BindGridView(); // Refresh the GridView after deletion
                            }
                            else
                            {
                                lblmessage.Text = "Failed to delete data.";
                            }
                        }
                        catch (Exception ex)
                        {
                            lblmessage.Text = "An error occurred: " + ex.Message;
                        }
                    }
                }
            }
            else
            {
                lblmessage.Text = "Please select a row to delete.";
            }
        }


    }
}
