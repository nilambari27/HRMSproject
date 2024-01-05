using Hrms_BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
namespace HRMSWeb
{
    public partial class Company_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                show_grid_data();

            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Write("Save button clicked!");
            try
            {

                string p_Company_Name = txtCompanyName.Text;
                string p_Website_Url = txtWebsiteURL.Text;
                string p_Line_Of_Business = ddLineofBusiness.Text;
                string p_Company_Type = txtCompanyType.Text;
                string p_Contact_Person = txtContactPerson.Text;
                string p_Contact_Number = txtContactNumber.Text;
                string p_Email_Id = txtEmailID.Text;
                string p_Designation = txtDesignation.Text;
                string p_Company_Address1 = txtAddressLine1.Text;
                string P_Created_By = " ";
                if (Session != null && Session["Useremail"] != null)
                {
                    P_Created_By = Session["useremail"].ToString();
                }
                DateTime P_Created_Date = DateTime.Now;
                Company_DetailsBL objcompany = new Company_DetailsBL();

                objcompany.setCompanyDetailsInfo(p_Company_Name, p_Website_Url, p_Line_Of_Business, p_Company_Type, p_Contact_Person, p_Contact_Number, p_Email_Id, p_Designation, p_Company_Address1, P_Created_By, P_Created_Date);

                show_grid_data();
                Response.Write("<script>alert('Record added succsessfully !!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtCompanyName.Text = "";
            txtWebsiteURL.Text = "";
            ddLineofBusiness.Text = "";
            txtCompanyType.Text = "";
            txtContactPerson.Text = "";
            txtContactNumber.Text = "";
            txtEmailID.Text = "";
            txtDesignation.Text = "";
            txtAddressLine1.Text = "";
        }


        public void show_grid_data()
        {
            DataSet ds_grid = new DataSet();
            Company_DetailsBL grid = new Company_DetailsBL();
            ds_grid = grid.show_grid_Data();
            GridView1.DataSource = ds_grid;
            GridView1.DataBind();
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowIndex == 0) {; }
                // Check if the row index is odd (alternating row)
                if (e.Row.RowIndex % 2 != 0)
                {
                    e.Row.CssClass = "alternate-row";
                }
            }

        }




        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            show_grid_data();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            show_grid_data();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int d_id = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            string d_Company_Name = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox1")).Text;
            string d_Website_Url = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox2")).Text;
            string d_Line_Of_Business = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox3")).Text;
            string d_Company_Type = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox4")).Text;
            string d_Contact_Person = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox5")).Text;
            string d_Contact_Number = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox6")).Text;
            string d_Email_Id = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox7")).Text;
            string d_Designation = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox8")).Text;
            string d_Company_Address1 = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox9")).Text;
            string d_Created_By = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox10")).Text;
            DateTime d_Created_Date = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox11")).Text);

            Company_DetailsBL companydetailsBL = new Company_DetailsBL();
            companydetailsBL.updateCompanyDetailsInfo(d_id, d_Company_Name, d_Website_Url, d_Line_Of_Business, d_Company_Type, d_Contact_Person,
                d_Contact_Number, d_Email_Id, d_Designation, d_Company_Address1, d_Created_By, d_Created_Date);

            GridView1.EditIndex = -1;
            show_grid_data();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            Company_DetailsBL del = new Company_DetailsBL();
            del.deleteInfo(id);
            show_grid_data();
        }

    }
}





