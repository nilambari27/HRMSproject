<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Edit_myprofile.aspx.cs" Inherits="HRMSWeb.Edit_myprofile" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    0
    <script src="Content/bootstrap.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function openFileExplorer() {
            $("#FileUpload1").click();
        }
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 ">

        <div class="row">
            <asp:Label ID="L1" runat="server" Text="Employee Details" CssClass="HeadingLabel"></asp:Label>
            <asp:Label ID="Label39" CssClass="sub-heading mt-2" runat="server" Text="1.BASIC INFORMATION"></asp:Label>
            <div class="card p-2 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEmployeeID" CssClass="form-control textboxCss" runat="server" placeholder="Enter Employee ID" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label2" runat="server" Text="Email ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtMailID" CssClass="form-control textboxCss" runat="server" placeholder="admin@example.com" TextMode="Email"></asp:TextBox>
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
                        <asp:TextBox ID="txtAdharCardNumber" CssClass="form-control textboxCss" runat="server" placeholder="1234567890" MaxLength="12"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAdharCardNumber"
                            ValidationExpression="^[0-9]+$" ErrorMessage="* Enter numeric only(0-9)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
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
                        <asp:TextBox ID="txtPANCardNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter PAN Card Number" MaxLength="12"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label7" runat="server" Text="Designation"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddDesig" CssClass="form-control textboxCss" runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label8" runat="server" Text="UAN Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtUANNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter UAN Number" MaxLength="20"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUANNumber"
                            ValidationExpression="^[0-9]+$" ErrorMessage="* Enter numeric only(0-9)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <asp:Label ID="Label40" CssClass="sub-heading mb-2" runat="server" Text="2.PERSONAL DETAILS"></asp:Label>
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
                            <asp:ListItem Value="0" Text="Select Gender" />
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
                            <asp:ListItem Value="0" Text="Select Marital Status" />
                            <asp:ListItem Value="1" Text="Married" />
                            <asp:ListItem Value="2" Text="Unmarried" />
                            <asp:ListItem Value="3" Text="Widowed" />
                            <asp:ListItem Value="4" Text="Divorced" />
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
                        <asp:TextBox ID="txtRelation" CssClass="form-control textboxCss" runat="server" placeholder="Enter Relationship with Parent"></asp:TextBox>
                    </div>
                </div>

                <asp:Label ID="Label41" CssClass="sub-heading mb-2" runat="server" Text="3.WORK INFORMATION"></asp:Label>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label17" runat="server" Text="Department"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddDepartment" CssClass="form-control textboxCss" runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label18" runat="server" Text="Location"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddLocation" CssClass="form-control textboxCss" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label19" runat="server" Text="Role"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddRole" CssClass="form-control textboxCss" runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label20" runat="server" Text="Employment Type"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddEmploymentType" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                            <asp:ListItem Value="0" Text="Select Employment Type" />
                            <asp:ListItem Value="1" Text="Permanent" />
                            <asp:ListItem Value="2" Text="Temporary" />
                            <asp:ListItem Value="3" Text="Contract basis" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label21" runat="server" Text="Employee Status"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddEmployeeStatus" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                            <asp:ListItem Value="0" Text="Select Employee Status" />
                            <asp:ListItem Value="1" Text="Active" />
                            <asp:ListItem Value="2" Text="Inactive" />
                        </asp:DropDownList>
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
                        <asp:TextBox ID="txtProbationPeriod" CssClass="form-control textboxCss" runat="server" placeholder="Enter Probation Period" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label25" runat="server" Text="Source of Hire"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddSource" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                            <asp:ListItem Value="0" Text="Select Source of Hire" />
                            <asp:ListItem Value="1" Text="Social Media" />
                            <asp:ListItem Value="2" Text="Employee referral" />
                            <asp:ListItem Value="3" Text="Walk-in" />
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label38" runat="server" Text="Supervisor Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddSuper" CssClass="form-control textboxCss" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>

                <asp:Label ID="Label42" CssClass="sub-heading mb-2" runat="server" Text="4.CONTACT DETAILS"></asp:Label>
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
                        <asp:TextBox ID="txtPersonalMobileNumber" CssClass="form-control textboxCss" runat="server" placeholder="+91-"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPersonalMobileNumber"
                            ValidationExpression="^[0-9]+$" ErrorMessage="* Enter numeric only(0-9)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label29" runat="server" Text="Personal Email Address"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtPersonalEmailAddress" CssClass="form-control textboxCss" runat="server" placeholder="admin@example.com" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label30" runat="server" Text="Work Phone Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtWorkPhoneNumber" CssClass="form-control textboxCss" runat="server" placeholder="+91-" TextMode="Phone"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtWorkPhoneNumber"
                            ValidationExpression="^[0-9]+$" ErrorMessage="* Enter numeric only(0-9)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label31" runat="server" Text="Alternate Mobile Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtAlternateMobileNumber" CssClass="form-control textboxCss" runat="server" placeholder="+91-"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAlternateMobileNumber"
                            ValidationExpression="^[0-9]+$" ErrorMessage="* Enter numeric only(0-9)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>

            </div>
            <div class="row">
                <asp:Label ID="Label43" CssClass="sub-heading mb-2" runat="server" Text="5.BANK DETAILS"></asp:Label>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="LabelAccountNumber" runat="server" Text="Account Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtAccountNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter Account Number"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtAccountNumber"
                            ValidationExpression="^[0-9]+$" ErrorMessage="* Enter numeric only(0-9)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="LabelBankName" runat="server" Text="Bank Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtBankName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Bank Name"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="LabelBankBranch" runat="server" Text="Bank Branch Address"></asp:Label>
                    </div>
                    <div class="col-lg-4 justify-content-evenly">
                        <asp:TextBox ID="txtBankBranch" CssClass="form-control textboxCss" runat="server" placeholder="Enter Bank Address"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="LabelIFSCCode" runat="server" Text="IFSC Code"></asp:Label>
                    </div>
                    <div class="col-lg-4 justify-content-evenly">
                        <asp:TextBox ID="txtIFSCCode" CssClass="form-control textboxCss" runat="server" placeholder="Enter IFSC Code"></asp:TextBox>
                    </div>

                </div>
            </div>
            <asp:Label ID="Label44" CssClass="sub-heading mb-2" runat="server" Text="6.SYSTEM FIELDS"></asp:Label>
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
                    <input type="datetime-local" id="txtAddedOn" class="form-control textboxCss" runat="server">
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
                    <input type="datetime-local" id="txtModifiedOn" class="form-control textboxCss" runat="server">
                </div>
            </div>
            <asp:Label ID="Label45" CssClass="sub-heading mb-2" runat="server" Text="7.SEPARATION INFORMATION"></asp:Label>
            <div class="row mb-2">
                <div class="col-lg-2">
                    <asp:Label ID="Label36" runat="server" Text="Date of Exit"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtDateOfExit" CssClass="form-control textboxCss" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>

            <div style="text-align: center;">
                <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="Save All"
                    BorderColor="#028E8E" OnClick="btnSave_Click" />
                <asp:Label ID="lblsave" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
