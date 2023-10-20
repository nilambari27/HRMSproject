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
    public partial class EventDetails : System.Web.UI.Page
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
                string createdby = " ";
                if (Session != null && Session["Useremail"] != null)
                {
                    createdby = Session["useremail"].ToString();
                }
                DateTime created_on = DateTime.Now;
                string ename= txtEventName.Text;
                string edesc = txtEventDesc.Text;
                DateTime stdt=Convert.ToDateTime(txtStartDt.Text);
                DateTime nddt=Convert.ToDateTime(txtEndDt.Text);
                DateTime sttime=Convert.ToDateTime(txtStartTime.Text);
                DateTime ndtime = Convert.ToDateTime(txtEndTime.Text);
                string sharemail= txtShare.Text;

                EventBL objevent = new EventBL();
                objevent.SetEvent(ename,edesc,stdt,nddt,sttime,ndtime,sharemail,createdby,created_on);

      

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
            txtEventName.Text = "";
            txtEventDesc.Text = "";
            txtStartDt.Text = "";
            txtEndDt.Text = "";
            txtStartTime.Text ="";
            txtEndTime.Text = "";
            txtShare.Text = "";
        }

        public void show_grid_data()
        {
            DataSet ds_grid = new DataSet();
            EventBL grid = new EventBL();
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
            int eid = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            string ename = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox2")).Text;
            string edesc = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox3")).Text;
            DateTime stdt = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox4")).Text);
            DateTime nddt = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox5")).Text);
            DateTime sttime = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox6")).Text);
            DateTime ndtime = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox7")).Text);
            string sharemail = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox8")).Text;
            string createdby = ((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox9")).Text;
            DateTime created_on = Convert.ToDateTime(((TextBox)GridView1.Rows[rowIndex].FindControl("TextBox10")).Text);

            EventBL eBL = new EventBL();
            eBL.updateEvent(eid, ename, edesc, stdt, nddt, sttime, ndtime, sharemail, createdby, created_on);

            GridView1.EditIndex = -1;
            show_grid_data();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
            EventBL del = new EventBL();
            del.deleteEvent(id);
            show_grid_data();

        }
    }
}