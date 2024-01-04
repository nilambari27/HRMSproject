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
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtContactNumber" CssClass="form-control textboxCss" runat="server" placeholder="Enter Contact Number"></asp:TextBox>
                    </div>

                </div>
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label5" runat="server" Text="Line of Business"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddLineofBusiness" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                            <asp:ListItem Text="1" />
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                            <asp:ListItem Text="6" />
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEmailID" CssClass="form-control textboxCss" runat="server" placeholder="example@domail.com"></asp:TextBox>
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
                            <asp:ListItem Text="1" />
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                            <asp:ListItem Text="6" />
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
                        <asp:Button ID="btnAdd" class="form-group btnStyle" runat="server" Text="AddNew" BorderColor="#028E8E" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancel_Click" />
                    </div>
            </div>
        </div>
    </div>
         <div class="row">
            <asp:Label ID="Label13" runat="server" Text="VIEW DETAILS" CssClass="HeadingLabel"></asp:Label>

            <asp:GridView ID="GridView1" runat="server" CssClass="p-5 table table-bordered table-striped " AutoGenerateColumns="False" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Company_Name" HeaderText="Company Name">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Website_Url" HeaderText="Website URL">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Line_Of_Business" HeaderText="Line of Business">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Company_Type" HeaderText="Company Type">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Contact_Person" HeaderText="Contact Person">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Contact_Number" HeaderText="Contact Number">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email_Id" HeaderText="Email ID">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Degignation" HeaderText="Designation">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                     <asp:BoundField DataField="Company_Address1" HeaderText="Address">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                     <asp:BoundField DataField="createdby" HeaderText="Created by">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="createdon" HeaderText="Created Date">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
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
            </asp:GridView>
        </div>
    </div>

</asp:Content>



