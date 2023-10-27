<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HRMSWeb.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 ">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="Employee Details" CssClass="HeadingLabel"></asp:Label>
            <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">1.BASIC INFORMATION</h2>
            <div class="card p-3 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEmployeeID" CssClass="form-control textboxCss" runat="server" placeholder="Enter Employee ID"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label2" runat="server" Text="Email ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtMailID" CssClass="form-control textboxCss" runat="server" placeholder="admin@example.com"></asp:TextBox>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtFirstName" CssClass="form-control textboxCss" runat="server" placeholder="Enter First Name"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label4" runat="server" Text="Aadhar Card Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtAdharCardNumber" CssClass="form-control textboxCss" runat="server" placeholder="1234567890"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtLastName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Last Name"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label6" runat="server" Text="PAN Card Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtPANCardNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter PAN Card Number"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label7" runat="server" Text="Designation"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtDesignation" CssClass="form-control textboxCss" runat="server" placeholder="Enter Designation"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label8" runat="server" Text="UAN Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtUANNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter UAN Number"></asp:TextBox>
                    </div>
                </div>
                <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">2.HIERARCHY INFORMATION</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label9" runat="server" Text="Supervisor ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtSupervisorID" CssClass="form-control textboxCss" runat="server" placeholder="Enter Supervisor ID"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label10" runat="server" Text="Supervisor Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtSupervisorName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Supervisor Name"></asp:TextBox>
                    </div>
                </div>
                <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">3.PERSONAL DETAILS</h2>
                <div class="row mb-2 ">
                    <div class="col-lg-2">
                        <asp:Label ID="Label11" runat="server" Text="Date of Birth"></asp:Label>
                    </div>
                    <div class="col-lg-4 justify-content-evenly">
                        <asp:TextBox ID="txtDateofBirth" CssClass="form-control textboxCss" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label12" runat="server" Text="Gender"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddGender" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="Male" />
                            <asp:ListItem Text="Female" />
                            <asp:ListItem Text="Others" />

                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label13" runat="server" Text="Marital Status"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddMaritalStatus" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="Married" />
                            <asp:ListItem Text="Unmarried" />
                            <asp:ListItem Text="Widowed" />
                            <asp:ListItem Text="Divorced" />

                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label14" runat="server" Text="About Me"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtAboutMe" CssClass="form-control textboxCss" runat="server" placeholder="Enter About Me"></asp:TextBox>
                    </div>

                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">

                        <asp:Label ID="Label15" runat="server" Text="Parent Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtParentName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Parent Name"></asp:TextBox>
                    </div>

                    <div class="col-lg-2">
                        <asp:Label ID="Label16" runat="server" Text="Relationship with Parent"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtRelationshipwithParent" CssClass="form-control textboxCss" runat="server" placeholder="Enter Relationship with Parent"></asp:TextBox>
                    </div>
                </div>
                <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">4.WORK INFORMATION</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label17" runat="server" Text="Department"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtDepartment" CssClass="form-control textboxCss" runat="server" placeholder="Enter Department"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label18" runat="server" Text="Location"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtLocation" CssClass="form-control textboxCss" runat="server" placeholder="Enter Location"></asp:TextBox>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label19" runat="server" Text="Role"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtRole" CssClass="form-control textboxCss" runat="server" placeholder="Enter Role"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label20" runat="server" Text="Employment Type"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEmploymentType" CssClass="form-control textboxCss" runat="server" placeholder="Enter Employment Type"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label21" runat="server" Text="Employee Status"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEmployeeStatus" CssClass="form-control textboxCss" runat="server" placeholder="Enter Employee Status"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label22" runat="server" Text="Function"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtFunction" CssClass="form-control textboxCss" runat="server" placeholder="Enter Function"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label23" runat="server" Text="Date of Joining"></asp:Label>
                    </div>
                    <div class="col-lg-4 justify-content-evenly">
                        <asp:TextBox ID="txtDateofJoining" CssClass="form-control textboxCss" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label24" runat="server" Text="Probation Period (Months)"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtProbationPeriod" CssClass="form-control textboxCss" runat="server" placeholder="Enter Probation Period"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label25" runat="server" Text="Source of Hire"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtSourceofHire" CssClass="form-control textboxCss" runat="server" placeholder="Enter Source of Hire"></asp:TextBox>
                    </div>
                </div>
                <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">5.CONTACT DETAILS</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label26" runat="server" Text="Present Address"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtPresentAddress" CssClass="form-control textboxCss" runat="server" placeholder="Enter Present Address"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label27" runat="server" Text="Permanent Address"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtPermanentAddress" CssClass="form-control textboxCss" runat="server" placeholder="Enter Permanent Address"></asp:TextBox>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label28" runat="server" Text="Personal Mobile Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtPersonalMobileNumber" CssClass="form-control textboxCss" runat="server" placeholder="=91-"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label29" runat="server" Text="Personal Email Address"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtPersonalEmailAddress" CssClass="form-control textboxCss" runat="server" placeholder="admin@example.com"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label30" runat="server" Text="Work Phone Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtWorkPhoneNumber" CssClass="form-control textboxCss" runat="server" placeholder="+91-"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label31" runat="server" Text="Alternate Mobile Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtAlternateMobileNumber" CssClass="form-control textboxCss" runat="server" placeholder="+91-"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="card p-3 border-0 ">
                <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">6.SKILL SET</h2>

                <table class="table">
                    <thead style="background-color: #7f8c8d;">
                        <tr>
                            <th style="border: none;">Skill Name</th>
                            <th style="border: none;">Type of Skill</th>
                            <th style="border: none;">Experience (Month)</th>
                            <th style="border: none;">Expertise Level</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>c#</td>
                            <td>Technical</td>
                            <td>24</td>
                            <td>Intermediate</td>
                        </tr>
                        <!-- Add more rows like the one above for additional data -->
                    </tbody>
                </table>
            </div>
            <div class="card p-3 border-0 ">
                <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">7.QUALIFICATION</h2>

                <table class="table">
                    <thead style="background-color: #7f8c8d;">
                        <tr>
                            <th style="border: none;">Qualification</th>
                            <th style="border: none;">Institution Name</th>
                            <th style="border: none;">Board/University</th>
                            <th style="border: none;">Major Subjects</th>
                            <th style="border: none;">Passing Year</th>
                            <th style="border: none;">Percentage</th>
                            <th style="border: none;">Grade</th>
                            <th style="border: none;">Education Type</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Bachelor's Degree</td>
                            <td>Example University</td>
                            <td>Example Board</td>
                            <td>Computer Science</td>
                            <td>2022</td>
                            <td>85%</td>
                            <td>A</td>
                            <td>Full-time</td>
                        </tr>
                        <!-- Add more rows like the one above for additional data -->
                    </tbody>
                </table>
            </div>
            <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">8.EXPERIENCE</h2>

            <table class="table">
                <thead style="background-color: #7f8c8d;">
                    <tr>
                        <th style="border: none;">Company Name</th>
                        <th style="border: none;">Designation</th>
                        <th style="border: none;">Date of Join</th>
                        <th style="border: none;">Date of Resign</th>
                        <th style="border: none;">Profile Summary</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>ABC Corporation</td>
                        <td>Software Engineer</td>
                        <td>2018-01-01</td>
                        <td>2021-12-31</td>
                        <td>software engineer </td>
                    </tr>
                    <!-- Add more rows like the one above for additional data -->
                </tbody>
            </table>
            <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">9.SYSTEM FIELDS</h2>
            <div class="row mb-2">
                <div class="col-lg-2">
                    <asp:Label ID="Label32" runat="server" Text="Added By"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtAddedBy" CssClass="form-control textboxCss" runat="server" placeholder="Enter Added By"></asp:TextBox>
                </div>
                <div class="col-lg-2">
                    <asp:Label ID="Label33" runat="server" Text="Added Timestamp"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <input type="datetime-local" id="txtEndDt" class="form-control textboxCss" runat="server">
                </div>
            </div>

            <div class="row mb-2">
                <div class="col-lg-2">
                    <asp:Label ID="Label34" runat="server" Text="Modified By"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtModifiedBy" CssClass="form-control textboxCss" runat="server" placeholder="Enter Modified By"></asp:TextBox>
                </div>
                <div class="col-lg-2">
                    <asp:Label ID="Label35" runat="server" Text="Modified Timestamp"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <input type="datetime-local" id="Datetimelocal1" class="form-control textboxCss" runat="server">
                </div>
            </div>
            <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px;">10.SEPARATION INFORMATION</h2>
            <div class="row mb-2">
                <div class="col-lg-2">
                    <asp:Label ID="Label36" runat="server" Text="Date of Exit"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtDateOfExit" CssClass="form-control textboxCss" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px; display: flex; justify-content: space-between;">11.BANK DETAILS
                                        <asp:Button ID="btnadd" class="form-group btnStyle" runat="server" Text="Add Bank" BorderColor="#028E8E" OnClick="btnadd_Click" />

            </h2>

            <table class="table">
                <thead style="background-color: #7f8c8d;">
                    <tr>
                        <th style="border: none;">Account Number</th>
                        <th style="border: none;">Bank Name</th>
                        <th style="border: none;">Bank Branch Address</th>
                        <th style="border: none;">IFSC Code</th>
                        <th style="border: none;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1234567890</td>
                        <td>Example Bank</td>
                        <td>123 Main Street, Cityville</td>
                        <td>ABC1234567</td>
                        <td>Active</td>
                    </tr>
                    <!-- Add more rows like the one above for additional data -->
                </tbody>
            </table>
            <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px; display: flex; justify-content: space-between;">12. ONBOARDING DOCUMENTS
    <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" class="form-group btnStyle" runat="server" Text="Upload" BorderColor="#028E8E" OnClick="btnadd_Click" />
            </h2>

            <div class="row mb-2">
                <div class="col-lg-2">
                    <asp:Label ID="Label37" runat="server" Text="Document Name"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddocumentName" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                        <asp:ListItem Text="Certificate" />


                    </asp:DropDownList>
                </div>
            </div>
            <h2 class="MY PROFILE-heading" style="color: #3498db; font-size: 16px; display: flex; justify-content: space-between;">13.DOCUMENTS
                                <asp:Button ID="Button2" class="form-group btnStyle" runat="server" Text="Add" BorderColor="#028E8E" OnClick="btnadd_Click" />

            </h2>

            <table class="table">
                <thead style="background-color: #7f8c8d;">
                    <tr>
                        <th style="border: none;">Document Name</th>
                        <th style="border: none;">Upload Timestamp</th>
                        <th style="border: none;">View / Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Certificate</td>
                        <td>dd/mm/yyyy hh:mm:ss</td>
                        <td>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="View">View</asp:LinkButton>
                            |
                            <asp:LinkButton ID="btnShare" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>Aadhar Card</td>
                        <td>dd/mm/yyyy hh:mm:ss</td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="View">View</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>Photo</td>
                        <td>dd/mm/yyyy hh:mm:ss</td>
                        <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="View">View</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>Offer Letter</td>
                        <td>dd/mm/yyyy hh:mm:ss</td>
                        <td>
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="View">View</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </td>
                    </tr>
                    <!-- Add more rows like the ones above for additional documents -->
                </tbody>
            </table>

            <div style="text-align: center; margin-top: 20px;">
                <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="Save All" BorderColor="#028E8E" OnClick="btnSave_Click" />
            </div>


        </div>


    </div>
</asp:Content>
