<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HRMSWeb.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Content/bootstrap.min.js"></script>
    <!-- Corrected order -->
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <%--<script>
        function openFileExplorer() {
            // Simulate a click on the hidden file input
            $("#FileUpload1").click();
        }
    </script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                        <asp:DropDownList ID="ddDesig" CssClass="form-control textboxCss" runat="server" >
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label8" runat="server" Text="UAN Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtUANNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter UAN Number"></asp:TextBox>
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
                        <asp:TextBox ID="txtRelation" CssClass="form-control textboxCss" runat="server" placeholder="Enter Relationship with Parent"></asp:TextBox>
                    </div>
                </div>

               <asp:Label ID="Label41" CssClass="sub-heading mb-2" runat="server" Text="3.WORK INFORMATION"></asp:Label>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label17" runat="server" Text="Department"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddDepartment" CssClass="form-control textboxCss" runat="server" >
                        </asp:DropDownList>
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
                        <%--<asp:TextBox ID="TextBox11" runat="server" BorderStyle="None"></asp:TextBox>--%>
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
                        <asp:TextBox ID="txtProbationPeriod" CssClass="form-control textboxCss" runat="server" placeholder="Enter Probation Period"></asp:TextBox>
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
                        <asp:DropDownList ID="ddSuper" CssClass="form-control textboxCss" runat="server" >
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
                <asp:Label ID="Label43" CssClass="sub-heading mb-2" runat="server" Text="5.BANK DETAILS"></asp:Label>
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

            <div class="row ">
                <div>
                    <asp:Label ID="Label46" CssClass="sub-heading mb-2" runat="server" Text="8.SKILL SET"></asp:Label>
                    <button type="button" class="form-group btnStyle mb-2" data-bs-toggle="modal" data-bs-target="#skills">Add Skills</button> 
                </div>
                
                <div class="modal fade" id="skills" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">ADD SKILLS</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row mb-2">
                                    <div class="col-lg-2">
                                        <asp:Label ID="Label50" runat="server" Text="Skill Name"></asp:Label>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtskillname" CssClass="form-control textboxCss" runat="server" placeholder="Enter Skill Name"></asp:TextBox>
                                    </div>
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
                                        <asp:TextBox ID="txtExperience" CssClass="form-control textboxCss" runat="server" placeholder="Enter Experience (month)"></asp:TextBox>

                                    </div>
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelExpertiseLevel" runat="server" Text="Expertise Level"></asp:Label>
                                    </div>
                                    <div class="col-lg-4 mb-4 ">
                                        <asp:DropDownList ID="ddExpertiseLevel" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                                            <asp:ListItem Value="0" Text="Select Expertise level" />
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
                                        <asp:Button ID="btnSaveSkills" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSaveSkills_Click"/>
                                        <asp:Button ID="btnCancelSkills" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancelSkills_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <asp:GridView ID="SkillsGrid" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="sr_no"
                    AutoGenerateColumns="False" Width="100%" BackColor="White" OnRowCancelingEdit="SkillsGrid_RowCancelingEdit" OnRowDeleting="SkillsGrid_RowDeleting"
                    OnRowEditing="SkillsGrid_RowEditing" OnRowUpdating="SkillsGrid_RowUpdating" Font-Size="Small">
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
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("exp_in_months") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%#Bind("exp_in_months") %>'></asp:Label>
                                <%--<asp:TextBox ID="TextBox11" runat="server" BorderStyle="None"></asp:TextBox>--%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Expertise Level">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("expertise_level") %>'></asp:TextBox>
                                <%--<asp:DropDownList ID="ddExpertiseLevel" CssClass="form-control textboxCss" data-toggle="dropdown" Text='<%# Bind("expertise_level") %>' runat="server">
                                            <asp:ListItem Text="Select Expertise level" />
                                            <asp:ListItem Text="advanced" />
                                            <asp:ListItem Text="intermediate" />
                                            <asp:ListItem Text="beginner" />
                                        </asp:DropDownList>--%>

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
                <div>
                    <asp:Label ID="Label47" CssClass="sub-heading mb-2" runat="server" Text="9.EDUCATION"></asp:Label>
                    <button type="button" class="form-group btnStyle mb-2" data-bs-toggle="modal" data-bs-target="#education">Add Education</button>
                </div>
                <div class="modal fade" id="education" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
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
                                            <asp:ListItem Value="0" Text="Select Your Grade" />
                                            <asp:ListItem Text="A" />
                                            <asp:ListItem Text="B" />
                                            <asp:ListItem Text="C" />

                                        </asp:DropDownList>
                                    </div>

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
                                        <asp:Button ID="btnSaveEducation" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSaveEducation_Click" />
                                        <asp:Button ID="btnCancelEdu" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancelEdu_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:GridView ID="GridViewEducation" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="sr_no"
                AutoGenerateColumns="False" Width="100%" OnRowCancelingEdit="GridViewEducation_RowCancelingEdit" OnRowDeleting="GridViewEducation_RowDeleting" 
                    OnRowEditing="GridViewEducation_RowEditing" OnRowUpdating="GridViewEducation_RowUpdating" >
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
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("board_university") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%#Bind("board_university") %>'></asp:Label>
                            <%--<asp:TextBox ID="TextBox11" runat="server" BorderStyle="None"></asp:TextBox>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Major Subjects">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("major_subjects") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("major_subjects") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Passing Year">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("passing_year") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("passing_year") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Percentage">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("percentage") %>' TextMode="Number"></asp:TextBox>
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
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            </div>
            
            <div class="row">
               <div> 
                    <asp:Label ID="Label48" CssClass="sub-heading mb-2" runat="server" Text="10.EXPERIENCE"></asp:Label>
                    <button type="button" class="form-group btnStyle mb-2" data-bs-toggle="modal" data-bs-target="#experience">
                        Add Experience</button>         
                </div>
                <div class="modal fade" id="experience" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
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
                                    <div class="col-lg-2">
                                        <asp:Label ID="LabelDOR" runat="server" Text="Date of Resign"></asp:Label>
                                    </div>
                                    <div class="col-lg-4 justify-content-evenly">
                                        <asp:TextBox ID="txtDOR" CssClass="form-control textboxCss" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>


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
                                        <asp:Button ID="btnSaveExperience" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSaveExperience_Click"/>
                                        <asp:Button ID="btnCancelExperience" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancelExperience_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:GridView ID="ExperienceGrid" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="sr_no"
                AutoGenerateColumns="False" Width="100%" OnRowDeleting="ExperienceGrid_RowDeleting" OnRowEditing="ExperienceGrid_RowEditing" 
                    OnRowUpdating="ExperienceGrid_RowUpdating" OnRowCancelingEdit="ExperienceGrid_RowCancelingEdit" >
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
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("profile_summary") %>'></asp:TextBox>
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
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            </div>
            

            <div>
                <asp:Label ID="Label49" CssClass="sub-heading mb-2" runat="server" Text="11.ONBOARDING DOCUMENTS"></asp:Label>
            </div>
            <div class="row mb-2 mt-2">
                <div class="col-lg-2 text-end">
                    <asp:Label ID="Label37" runat="server" Text="Document Name : "></asp:Label>
                </div>
                <div class="col-lg-3">
                    <asp:DropDownList ID="ddDocName" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server" Height="30px" Width="200px" Font-Names="Verdana" Font-Size="Small">
                        <asp:ListItem Value="0" Text="Select Document" />
                        <asp:ListItem Text="Certificate" />
                        <asp:ListItem Text="Aadhar Card" />
                        <asp:ListItem Text="Pan Card" />
                        <asp:ListItem Text="Offer letter" />
                    </asp:DropDownList>
                </div>
                <div class="col-lg-7 align-content-start">
                    <asp:FileUpload ID="fileUpload" runat="server" />
                    <asp:Button ID="btnUpload" class="form-group btnStyle mb-2" runat="server" Text="Upload" BorderColor="#028E8E" OnClick="btnUpload_Click" />
                    <asp:Label ID="feedbackLabel" runat="server" ForeColor="#0000CC" Font-Bold="True"></asp:Label>
                </div>
            </div>

            <asp:GridView ID="DocGrid" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="sr_no"
                AutoGenerateColumns="False" Width="100%" OnRowCancelingEdit="DocGrid_RowCancelingEdit" OnRowDeleting="DocGrid_RowDeleting" OnRowEditing="DocGrid_RowEditing" OnRowUpdating="DocGrid_RowUpdating">
                <Columns>
                    <%--<asp:TemplateField HeaderText="Employee ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("emp_id") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("emp_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>             
                    --%>
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
