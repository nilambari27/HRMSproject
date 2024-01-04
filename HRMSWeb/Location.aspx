<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="HRMSWeb.Location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#<%=GridView1.ClientID %>').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
           <%-- $("#<%= GridView1.ClientID %> tr:even").addClass("even-row");
            $("#<%= GridView1.ClientID %> tr:odd").addClass("odd-row");--%>
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 ">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="LOCATION DETAILS" CssClass="HeadingLabel"></asp:Label>
            <div class="card p-3 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Location Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtLocationName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Location Name"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label2" runat="server" Text="Mail Alias"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtMailAlias" CssClass="form-control textboxCss" runat="server" placeholder="admin@example.com"></asp:TextBox>
                    </div>
                </div>
                <div class="row mt-2 mb-2">
                        <div class="col-lg-2">
                            <asp:Label ID="Label3" runat="server" Text="Country"></asp:Label>
                        </div>
                        <div class="col-lg-4">
                            <asp:DropDownList ID="ddCountry" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                                <asp:ListItem Text="INDIA" />
                                <asp:ListItem Text="PAK" />
                                <asp:ListItem Text="AUS" />
                                <asp:ListItem Text="USA" />
                                <asp:ListItem Text="NZ" />
                                <asp:ListItem Text="ENG" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label ID="Label4" runat="server" Text="State/Province"></asp:Label>
                        </div>
                        <div class="col-lg-4">
                            <asp:DropDownList ID="ddState" CssClass="form-control textboxCss" data-toggle="dropdown" runat="server">
                                <asp:ListItem Text="ORISSA" />
                                <asp:ListItem Text="AP" />
                                <asp:ListItem Text="MP" />
                                <asp:ListItem Text="MH" />
                                <asp:ListItem Text="KA" />
                                <asp:ListItem Text="WB" />
                            </asp:DropDownList>
                        </div>
                </div>
                
                <div class="col-lg-6 text-end">
                    <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSave_Click" />
                    <asp:Button ID="btnCancel" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancel_Click" />
                    <%-- <asp:Button ID="btnDel" class="form-group btnStyle" runat="server" Text="Delete" BorderColor="#028E8E" OnClick="btnDel_Click" />--%>
                </div>
            </div>
        </div>
   
         <div class="row">
         <asp:Label ID="Label5" runat="server" Text="VIEW DETAILS" CssClass="HeadingLabel"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CssClass="p-5 table table-bordered table-striped" DataKeyNames="locationId"
            AutoGenerateColumns="False" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:TemplateField HeaderText="Location Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Location_Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Location_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mail Alias">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Mail_Alias") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Mail_Alias") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State/Province">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("State_Province") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("State_Province") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Created By">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Created_by") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Created_by") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Created Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Created_Date") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("Created_Date") %>'></asp:Label>
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
