using System;
using System.IO;

namespace HRMSWeb
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Your existing Page_Load logic
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            // Check if a file is selected
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Get the filename
                    string filename = Path.GetFileName(FileUpload1.FileName);

                    // Specify the path where you want to save the file
                    string filePath = Server.MapPath("~/Uploads/") + filename;

                    // Save the file to the server
                    FileUpload1.SaveAs(filePath);

                    // You can add additional logic here, such as saving the file path to a database, etc.

                    // Display a success message or perform any other actions
                    Response.Write("File uploaded successfully!");
                }
                catch (Exception ex)
                {
                    // Handle the exception, if any
                    Response.Write("Error: " + ex.Message);
                }
            }
            else
            {
                // No file selected
                Response.Write("Please select a file to upload.");
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
        }
        }
}
