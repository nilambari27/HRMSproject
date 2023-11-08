﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HRMSWeb.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Content/bootstrap.min.js"></script>
    <!-- Corrected order -->
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function openFileExplorer() {
            // Simulate a click on the hidden file input
            $("#FileUpload1").click();
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 ">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="Employee Details" CssClass="HeadingLabel"></asp:Label>
            <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">1.BASIC INFORMATION</h2>
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
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">2.HIERARCHY INFORMATION</h2>
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
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">
                    3.PERSONAL DETAILS</h2>
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
                        <asp:DropDownList ID="ddMaritalStatus" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server" >
                            <asp:ListItem Value="0" Text="Select Marital Status" />
                            <asp:ListItem value="1" Text="Married" />
                            <asp:ListItem Value="2" Text="Unmarried" />
                            <asp:ListItem Value="3" Text="Widowed" />
                            <asp:ListItem Value="4"  Text="Divorced" />
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
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">
                  4.WORK INFORMATION</h2>
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
                        <asp:DropDownList ID="ddLocation" CssClass="form-control textboxCss" runat="server" >
                        </asp:DropDownList>
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
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">5.CONTACT DETAILS</h2>
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
            <div class="row">
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">
                6.Bank Details</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="LabelAccountNumber" runat="server" Text="Account Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtAccountNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter Account Number"></asp:TextBox>
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

            <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">
                7.SYSTEM FIELDS</h2>
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
            <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">8.SEPARATION INFORMATION</h2>
            <div class="row mb-2">
                <div class="col-lg-2">
                    <asp:Label ID="Label36" runat="server" Text="Date of Exit"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtDateOfExit" CssClass="form-control textboxCss" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>

            <div style="text-align: center; margin-top: 20px;">
                <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="Save Employee Details"
                    BorderColor="#028E8E" OnClick="btnSave_Click" Width="200px" />
            </div>

            <div class="row">
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold; display: flex; justify-content: space-between;">
                    9. SKILL SET
        <button type="button" class="form-group btnStyle" data-bs-toggle="modal" data-bs-target="#skills">
        Add Skills
        </button> </h2>
                <div class="modal fade" id="skills" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">ADD SKILLS</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelSkillName" runat="server" Text="Skill Name"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtSkillName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Skill Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelTypeSkill" runat="server" Text="Type of Skill"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtTypeSkill" CssClass="form-control textboxCss" runat="server" placeholder="Enter Type of Skill"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelExperience" runat="server" Text="Experience (Month)"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtExperience" CssClass="form-control textboxCss" runat="server" placeholder="Enter Experience (Month)"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelExpertiseLevel" runat="server" Text="Expertise Level"></asp:Label>
                                    </div>
                                    <div class="col-lg-4 mb-4 ">
                                        <asp:DropDownList ID="ddExpertiseLevel" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                                            <asp:ListItem Text="advanced" />
                                            <asp:ListItem Text="intermediate" />
                                            <asp:ListItem Text="beginner" />
                                        </asp:DropDownList>


                                    </div>
                                </div>

                            </div>
                            <div class="modal-footer">

                                <div class="row text-end mb-2 ">
                                    <div class="col">
                                        <asp:Button ID="btnSaveSkills" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSaveSkills_Click"  />
                                        <asp:Button ID="btncnl" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancel_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <asp:GridView ID="SkillsGrid" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="emp_id"
                    AutoGenerateColumns="False" Width="100%" BackColor="White">
                    <Columns>
                        <asp:TemplateField HeaderText="Skill Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("skill_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("skill_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type of Skill">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("type_of_skill") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("type_of_skill") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Experience (Month)">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("exp_in_months") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%#Bind("exp_in_months") %>'></asp:Label>
                                <%--<asp:TextBox ID="TextBox11" runat="server" BorderStyle="None"></asp:TextBox>--%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Expertise Level">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("expertise_level") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("expertise_level") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                                &nbsp;|&nbsp;<asp:LinkButton ID="btnCan" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                &nbsp;|&nbsp;
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>

                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#E2E2E2" />
                </asp:GridView>
            </div>


            <div class="row">
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 13px; font-weight: bold; display: flex; justify-content: space-between;">10. EDUCATION
                 <button type="button" class="form-group btnStyle" data-bs-toggle="modal" data-bs-target="#education">
        Add Education
        </button></h2>
                <div class="modal fade" id="education" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="EDUCATION">ADD EDUCATION DETAILS</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelQualification" runat="server" Text="Qualification"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtQualification" CssClass="form-control textboxCss" runat="server" placeholder="Enter Qualification"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelInstitutionName" runat="server" Text="Institution Name"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtInstitutionName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Institution Name"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelBoard" runat="server" Text="Board/University"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtBoard" CssClass="form-control textboxCss" runat="server" placeholder="Enter Board/University"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelMajorSubjects" runat="server" Text="Major Subjects"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtMajorSubjects" CssClass="form-control textboxCss" runat="server" placeholder="Enter Major Subjects"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelPassingYear" runat="server" Text="Passing Year"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtPassingYear" CssClass="form-control textboxCss" runat="server" placeholder="Enter Passing Year"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelPercentage" runat="server" Text="Percentage"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtPercentage" CssClass="form-control textboxCss" runat="server" placeholder="Enter Percentage"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelGrade" runat="server" Text="Grade"></asp:Label>
                                    </div>
                                    <div class="col-lg-4 mb-4 ">
                                        <asp:DropDownList ID="ddGrade" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                                            <asp:ListItem Text="A" />
                                            <asp:ListItem Text="B" />
                                            <asp:ListItem Text="C" />

                                        </asp:DropDownList>


                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelEducationType" runat="server" Text="Education Type"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtEducationType" CssClass="form-control textboxCss" runat="server" placeholder="Enter Education Type"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="modal-footer">

                                <div class="row text-end mb-2 ">
                                    <div class="col">
                                        <asp:Button ID="Button6" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSave_Click" />
                                        <asp:Button ID="btnCancel" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancel_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <asp:GridView ID="GridViewEducation" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="emp_id"
                AutoGenerateColumns="False" Width="100%" >
                <Columns>
                    <asp:TemplateField HeaderText="Qualification">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Institution Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("institution_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("institution_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Board/Universitye">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("board_university") %>' TextMode="Date"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%#Bind("board_university") %>'></asp:Label>
                            <%--<asp:TextBox ID="TextBox11" runat="server" BorderStyle="None"></asp:TextBox>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Major Subjects">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("major_subjects") %>' TextMode="Date"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("major_subjects") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Passing Year">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("passing_year") %>' TextMode="Time"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("passing_year") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Percentage">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("percentage") %>' TextMode="Time"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label15" runat="server" Text='<%# Bind("percentage") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Grade">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("grade") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label16" runat="server" Text='<%# Bind("grade") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Education Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("education_type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label17" runat="server" Text='<%# Bind("education_type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <EditItemTemplate>
                            <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                            &nbsp;|&nbsp;<asp:LinkButton ID="btnCan" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            &nbsp;|&nbsp;
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                            |
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <div class="row">
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 13px; font-weight: bold; display: flex; justify-content: space-between;">11. EXPERIENCE
              <button type="button" class="form-group btnStyle" data-bs-toggle="modal" data-bs-target="#experience">
        Add Experience</button>         
                </h2>
                <div class="modal fade" id="experience" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="EXPERIENCE">ADD EXPERIENCES</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelCompanyName" runat="server" Text="Company Name"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtCompanyName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Company Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelDesignation" runat="server" Text="Designation"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtdesign" CssClass="form-control textboxCss" runat="server" placeholder="Enter Designation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelDOJ" runat="server" Text="Date of Join"></asp:Label>
                                    </div>
                                    <div class="col-lg-4 justify-content-evenly">
                                        <asp:TextBox ID="txtDOJ" CssClass="form-control textboxCss" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelDOR" runat="server" Text="Date of Resign"></asp:Label>
                                    </div>
                                    <div class="col-lg-4 justify-content-evenly">
                                        <asp:TextBox ID="txtDOR" CssClass="form-control textboxCss" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <%-- <div class="col-lg-4 mb-4 ">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                                            <asp:ListItem Text="advanced" />
                                            <asp:ListItem Text="intermediate" />
                                            <asp:ListItem Text="beginner" />

                                        </asp:DropDownList>


                                    </div>--%>
                                    <div class="row mb-2">
                                        <div class="col-lg-2">
                                            <asp:Label ID="LabelProfileSummary" runat="server" Text="Profile Summary"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:TextBox ID="txtProfileSummary" CssClass="form-control textboxCss" runat="server" placeholder="Enter Profile Summary"></asp:TextBox>
                                        </div>

                                    </div>


                                </div>
                                <div class="modal-footer">

                                    <div class="row text-end mb-2 ">
                                        <div class="col">
                                            <asp:Button ID="btnSaveExperience" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSaveExperience_Click" />
                                            <asp:Button ID="btnCancelExperience" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancelExperience_Click" />
                                       </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <asp:GridView ID="GridViewExperience" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="emp_id"
                AutoGenerateColumns="False" Width="100%" >
                <Columns>
                    <asp:TemplateField HeaderText="Company Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("company_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("company_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Designation">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("designation") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("designation") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Join">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DtJoin") %>' TextMode="Date"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%#Bind("DtJoin","{0:dd/MM/yyyy}") %>'></asp:Label>
                            <%--<asp:TextBox ID="TextBox11" runat="server" BorderStyle="None"></asp:TextBox>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Resign">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DtResign") %>' TextMode="Date"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("DtResign","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Profile Summary">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("profile_summary") %>' TextMode="Time"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("profile_summary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <EditItemTemplate>
                            <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                            &nbsp;|&nbsp;<asp:LinkButton ID="btnCan" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            &nbsp;|&nbsp;
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                            |
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold; display: flex; justify-content: space-between;">
                12. ONBOARDING DOCUMENTS
            <input type="file" id="FileUpload1" style="display: none;" />
            <asp:Button ID="btnUpload" class="form-group btnStyle" runat="server" Text="Upload" BorderColor="#028E8E" OnClientClick="openFileExplorer(); return false;" OnClick="btnUpload_Click" />
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

            <asp:GridView ID="GridView5" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="emp_id"
                AutoGenerateColumns="False" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="Document Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("document_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("document_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Upload Timestamp">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("upload_time") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("upload_time","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Status">
                        <EditItemTemplate>
                            <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                            &nbsp;|&nbsp;<asp:LinkButton ID="btnCan" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            &nbsp;|&nbsp;
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                            |
                            <asp:LinkButton ID="btnShare" runat="server" CommandName="Share">Share</asp:LinkButton>
                            &nbsp;&nbsp;
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
        </div>
    </div>

</asp:Content>
