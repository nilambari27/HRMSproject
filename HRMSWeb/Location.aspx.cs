using Hrms_BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace HRMSWeb
{
    public partial class Location : System.Web.UI.Page
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
                string location_name = txtLocationName.Text;
                string mail_alias = txtMailAlias.Text;
                string p_Cntry = ddCountry.Text;
                string p_state = ddState.Text;
                string created_by = " ";
                if (Session != null && Session["Useremail"] != null)
                {
                    created_by = Session["useremail"].ToString();
                }
                DateTime created_on = DateTime.Now;
                LocationBL objlocation = new LocationBL();

                objlocation.setlocationInfo(location_name, mail_alias,p_Cntry, p_state,created_by, created_on);

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
            txtLocationName.Text = "";
            txtMailAlias.Text = "";

        }
        public void show_grid_data()
        {
            DataSet ds_grid = new DataSet();
            LocationBL grid = new LocationBL();
            ds_grid = grid.show_grid_Data();
            GridView1.DataSource = ds_grid;
            GridView1.DataBind();
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
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
            int lid = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            string loction_name = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox2")).Text;
            string mil_alias = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox3")).Text;
            string coutry = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox4")).Text;
            string stte_province = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox5")).Text;
            string creatd_By = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox6")).Text;
            DateTime created_on = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox7")).Text);

            LocationBL lBL = new LocationBL();
            lBL.updateLocation(lid, loction_name, mil_alias, coutry, stte_province, creatd_By,  created_on);

            GridView1.EditIndex = -1;
            show_grid_data();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            LocationBL del = new LocationBL();
            del.deleteLocation(id);
            show_grid_data();

        }

    }
}