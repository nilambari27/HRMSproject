<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Company_Details.aspx.cs" Inherits="HRMSWeb.Company_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <style>
        .company-profile-heading {
            color: #077d7f;
            padding-left: 20px;
            font-size: 15px;
            font-weight: bold;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 ">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="COMPANY DETAILS" CssClass="HeadingLabel"></asp:Label>
            <h2 class="company-profile-heading">COMPANY PROFILE</h2>
            <div class="card p-3 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtCompanyName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Company Name"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label2" runat="server" Text="Contact Person"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtContactPerson" CssClass="form-control textboxCss" runat="server" placeholder="Enter Contact Person"></asp:TextBox>
                    </div>

                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label3" runat="server" Text="Website URL"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtWebsiteURL" CssClass="form-control textboxCss" runat="server" placeholder="https://"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="urlValidator" runat="server" ControlToValidate="txtWebsiteURL"
                            ValidationExpression="^(https?://)?([\w-]+.)+[\w-]+(/[\w- ;,./?%&=]*)?$"
                            ErrorMessage="Please Enter Proper Url" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtContactNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter Contact Number"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContactPerson"
                            ValidationExpression="^[0-9]+$" ErrorMessage="* Enter numeric only(0-9)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>

                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label5" runat="server" Text="Line of Business"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddLineofBusiness" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="Insurance" />
                            <asp:ListItem Text="Banking" />
                            <asp:ListItem Text="Manufacturing" />

                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEmailID" CssClass="form-control textboxCss" runat="server" placeholder="example@domail.com"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="emailValidator" runat="server" ControlToValidate="txtEmailID"
                            ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="* Enter Valid EmailId" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>

                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label7" runat="server" Text="Company Type"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtCompanyType" CssClass="form-control textboxCss" runat="server" placeholder="Enter Company Type"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label8" runat="server" Text="Designation"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtDesignation" CssClass="form-control textboxCss" runat="server" placeholder="Enter Designation"></asp:TextBox>
                    </div>

                </div>
                <h2 class="company-profile-heading">COMPANY ADDRESS</h2>

                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label9" runat="server" Text="Address Line1"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtAddressLine1" CssClass="form-control textboxCss" runat="server" placeholder="Enter Address Line1"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label10" runat="server" Text="Address Line2"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtAddressLine2" CssClass="form-control textboxCss" runat="server" placeholder="Enter Address Line2"></asp:TextBox>
                    </div>

                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label11" runat="server" Text="Country"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddCountry" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="India" />
                            <asp:ListItem Text="Us" />
                            <asp:ListItem Text="Uk" />

                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label12" runat="server" Text="ZIP/PIN Code"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtZIPCode" CssClass="form-control textboxCss" runat="server" placeholder="Enter ZIP/PIN Code"></asp:TextBox>
                    </div>

                </div>
                <div class="row text-end mb-1 ">
                    <div class="col">
                        <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancel_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:Label ID="Label13" runat="server" Text="VIEW DETAILS" CssClass="HeadingLabel"></asp:Label>

            <asp:GridView ID="GridView1" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="company_id"
                AutoGenerateColumns="False" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Company Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Company_Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Company_Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Website URL">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Website_Url") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Website_Url") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Line of Business">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Line_Of_Business") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Line_Of_Business") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Company Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Company_Type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Company_Type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Contact Person">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Contact_Person") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label15" runat="server" Text='<%# Bind("Contact_Person") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact Number">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Contact_Number") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label16" runat="server" Text='<%# Bind("Contact_Number") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email_Id") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label17" runat="server" Text='<%# Bind("Email_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Designation">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Degignation") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label18" runat="server" Text='<%# Bind("Degignation") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Address">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Company_Address1") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Company_Address1") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Created by">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("createdby") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("createdby") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Created Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("createdon") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("createdon") %>'></asp:Label>
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
                            &nbsp;&nbsp;
                       
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
                <%--<AlternatingRowStyle BackColor="#99CCFF" />--%>
            </asp:GridView>
        </div>
    </div>

</asp:Content>



