using Hrms_BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMSWeb
{
    public partial class Change_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                show_grid_data();
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string mod_by = " ";
                int empid = Convert.ToInt32(txtEmpId.Text);
                string pass = txtPassword.Text;
                string confirmpass = txtConfirm.Text;

                if (Session != null && Session["Useremail"] != null)
                {
                    mod_by = Session["useremail"].ToString();
                }
                DateTime mod_dt = DateTime.Now;

                ChangePasswordBL chng = new ChangePasswordBL();

                chng.setPassword(empid, confirmpass, mod_by, mod_dt);

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
            txtEmpId.Text = "";
            txtPassword.Text = "";
            txtConfirm.Text = "";
        }

        public void show_grid_data()
        {
            DataSet ds_grid = new DataSet();
            ChangePasswordBL grid = new ChangePasswordBL();
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
                string value = "";
                TextBox textBox = (TextBox)e.Row.FindControl("TextBox5");
                if (textBox != null)
                {
                    // You can access the TextBox and its value here
                    value = textBox.Text;
                }
                TableCell passwordCell = e.Row.Cells[1];

                // Mask the password value with asterisks.
                //string password = passwordCell.Text;
                passwordCell.Text = MaskPassword(value);

            }

        }
        private string MaskPassword(string value)
        {
            // Replace each character with an asterisk (*).
            return new string('*', value.Length);
        }

    }
}