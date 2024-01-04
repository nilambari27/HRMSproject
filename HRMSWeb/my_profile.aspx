<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="my_profile.aspx.cs" Inherits="HRMSWeb.Edit_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Content/bootstrap.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function openFileExplorer() {
            $("#FileUpload1").click();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 ">
        <div class="row">
<asp:Label ID="L1" runat="server" Text="MY PROFILE" CssClass="HeadingLabel"></asp:Label>
            <div class="row text-end mb-2 ">
                    <div class="col">
                        <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="EDIT" BorderColor="#028E8E" OnClick="btnSave_Click" />
                    </div>
                </div>
            <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">1.BASIC INFORMATION</h2>
            <div class="card p-3 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="Empid" CssClass="labelTextStyle" runat="server" Text="admin@example.com"></asp:Label>
                    </div>

                    <div class="col-lg-2">
                        <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="emailid" CssClass="labelTextStyle" runat="server" Text="admin@example.com"></asp:Label>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="firstname" CssClass="labelTextStyle" runat="server" Text="John"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label7" runat="server" Text="Aadhar Card Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="adharcard" CssClass="labelTextStyle" runat="server" Text="1234567890"></asp:Label>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label09" runat="server" Text="Last Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="lastname" CssClass="labelTextStyle" runat="server" Text="Doe"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label011" runat="server" Text="PAN Card Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="pancard" CssClass="labelTextStyle" runat="server" ></asp:Label>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label13" runat="server" Text="Designation"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="desigNation" CssClass="labelTextStyle" runat="server" ></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label15" runat="server" Text="UAN Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="UanNumber" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>

                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">2.HIERARCHY INFORMATION</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label17" runat="server" Text="Supervisor Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="Supervisorname" CssClass="labelTextStyle" runat="server" placeholder="Enter Supervisor Name"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label19" runat="server" Text="Supervisor ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="SupervisorId" CssClass="labelTextStyle" runat="server" placeholder="Enter Supervisor ID"></asp:Label>
                    </div>
                </div>
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">3.PERSONAL DETAILS</h2>
                <div class="row mb-2 ">
                    <div class="col-lg-2">
                        <asp:Label ID="Label21" runat="server" Text="Date of Birth"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="DateOfBirth" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label23" runat="server" Text="Gender"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="GenDer" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label25" runat="server" Text="Marital Status"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="Maritalstatus" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label27" runat="server" Text="About Me"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="aboutme" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>

                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">

                        <asp:Label ID="Label29" runat="server" Text="Parent Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="parentname" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>

                    <div class="col-lg-2">
                        <asp:Label ID="Label31" runat="server" Text="Relationship with Parent"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="relatioshipwithparent" CssClass="labelTextStyle" runat="server">
                            
                        </asp:Label>
                    </div>
                </div>
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">4.WORK INFORMATION</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label33" runat="server" Text="Department"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="DePaRtMeNt" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label35" runat="server" Text="Location"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="LoCaTiOn" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label37" runat="server" Text="Role"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="RoLe" CssClass="labelTextStyle" runat="server"> </asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label39" runat="server" Text="Employment Type"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="Employementtype" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label41" runat="server" Text="Employee Status"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="Employestatus" CssClass="labelTextStyle" runat="server"> </asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label43" runat="server" Text="Function"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="FuNcTiOn" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label45" runat="server" Text="Date of Joining"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="dateofjoining" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label47" runat="server" Text="Probation Period (Months)"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="probationperiod" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label49" runat="server" Text="Source of Hire"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="sourceofhire" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">5.CONTACT DETAILS</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label51" runat="server" Text="Present Address"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="presentaddress" CssClass=" labelTextStyle" runat="server"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label53" runat="server" Text="Permanent Address"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="permanentaddress" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label55" runat="server" Text="Personal Mobile Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="personalmobilenumber" CssClass="labelTextStyle" runat="server"></asp:Label>

                    </div>

                    <div class="col-lg-2">
                        <asp:Label ID="Label57" runat="server" Text="Personal Email Address"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="personalemailaddress" CssClass="labelTextStyle" runat="server"></asp:Label>

                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label59" runat="server" Text="Work Phone Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="workphonenumber" CssClass="labelTextStyle" runat="server"></asp:Label>

                    </div>

                    <div class="col-lg-2">
                        <asp:Label ID="Label61" runat="server" Text="Alternate Mobile Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="alternatemobilenumber" CssClass="labelTextStyle" runat="server"></asp:Label>

                    </div>

                </div>
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">6.Bank Details</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label63" runat="server" Text="Account Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="accountnumber" CssClass="labelTextStyle" runat="server"></asp:Label>

                    </div>

                    <div class="col-lg-2">
                        <asp:Label ID="Label65" runat="server" Text="Bank Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="bankname" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label67" runat="server" Text="Bank Branch Address"></asp:Label>
                    </div>
                    <div class="col-lg-4 justify-content-evenly">
                        <asp:Label ID="bankbranchaddress" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label69" runat="server" Text="IFSC Code"></asp:Label>
                    </div>
                    <div class="col-lg-4 justify-content-evenly">
                        <asp:Label ID="ifsccode" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>

                </div>
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">7.SYSTEM FIELDS</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label71" runat="server" Text="Added By"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="addedby" CssClass="labelTextStyle" runat="server" placeholder="Enter Added By"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label73" runat="server" Text="Added Timestamp"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="adddedtimestamp" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label75" runat="server" Text="Modified By"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="modifiedby" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label77" runat="server" Text="Modified Timestamp"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="modifiedtimestamp" class="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>
                <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold;">8.SEPARATION INFORMATION</h2>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label79" runat="server" Text="Date of Exit"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="datofexist" CssClass="labelTextStyle" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold; display: flex; justify-content: space-between;">9. SKILL SET
                    </h2>
                    <asp:GridView ID="ESkillsGrid" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="emp_id"
                        AutoGenerateColumns="False" Width="100%" BackColor="White">
                        <Columns>
                            <asp:TemplateField HeaderText="Skill Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("skill_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label81" runat="server" Text='<%# Bind("skill_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Type of Skill">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("type_of_skill") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label82" runat="server" Text='<%# Bind("type_of_skill") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Experience (Month)">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("exp_in_months") %>' TextMode="Date"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label83" runat="server" Text='<%#Bind("exp_in_months") %>'></asp:Label>
                                    <%--<asp:TextBox ID="TextBox11" runat="server" BorderStyle="None"></asp:TextBox>--%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Expertise Level">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("expertise_level") %>' TextMode="Date"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label84" runat="server" Text='<%# Bind("expertise_level") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="row">
                    <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold; display: flex; justify-content: space-between;">10.EDUCATION
                    </h2>
                    <asp:GridView ID="EditEducationGrid" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="emp_id"
                        AutoGenerateColumns="False" Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="Qualification">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label85" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Institution Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("institution_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label86" runat="server" Text='<%# Bind("institution_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Board/Universitye">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("board_university") %>' TextMode="Date"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label87" runat="server" Text='<%#Bind("board_university") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Major Subjects">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("major_subjects") %>' TextMode="Date"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label88" runat="server" Text='<%# Bind("major_subjects") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Passing Year">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("passing_year") %>' TextMode="Time"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label89" runat="server" Text='<%# Bind("passing_year") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Percentage">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("percentage") %>' TextMode="Time"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label90" runat="server" Text='<%# Bind("percentage") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Grade">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("grade") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label91" runat="server" Text='<%# Bind("grade") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Education Type">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("education_type") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label92" runat="server" Text='<%# Bind("education_type") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="row">
                    <h2 class="MY PROFILE-heading" style="color: #668cff; font-size: 15px; font-weight: bold; display: flex; justify-content: space-between;">11.EXPERIENCE
                    </h2>
                    <asp:GridView ID="EditExperienceGrid" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="emp_id"
                        AutoGenerateColumns="False" Width="100%">
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
                        </Columns>
                    </asp:GridView>



                </div>



            </div>
        </div>
    </div>
</asp:Content>
