<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="EventDetails.aspx.cs" Inherits="HRMSWeb.EventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#<%= GridView1.ClientID %>').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
            $("#<%= GridView1.ClientID %> tr:even").addClass("even-row");
            $("#<%= GridView1.ClientID %> tr:odd").addClass("odd-row");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="EVENT DETAILS" CssClass="HeadingLabel"></asp:Label>
            <div class="card p-3 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Event Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEventName" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label2" runat="server" Text="Event Description"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEventDesc" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2 ">
                    <div class="col-lg-2">
                        <asp:Label ID="Label3" runat="server" Text="Event start Date"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtStartDt" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label4" runat="server" Text="Event Start Time"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtStartTime" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2 ">
                    <div class="col-lg-2">
                        <asp:Label ID="Label6" runat="server" Text="Event End Date"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEndDt" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label7" runat="server" Text="Event End Time"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEndTime" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2 ">
                    <div class="col-lg-2">
                        <asp:Label ID="Label8" runat="server" Text="Event Share To"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="TextBox1" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-6 text-end">
                        <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancel_Click" />
                        <%-- <asp:Button ID="btnDel" class="form-group btnStyle" runat="server" Text="Delete" BorderColor="#028E8E" OnClick="btnDel_Click" />--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:Label ID="Label5" runat="server" Text="VIEW DETAILS" CssClass="HeadingLabel"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" CssClass="p-5 table table-bordered table-striped"
                AutoGenerateColumns="False" Width="100%">
                <Columns>

                    <asp:TemplateField HeaderText="Event Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("event_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("event_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Event Description">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("event_desc") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("event_desc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Event Start Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("event_start_date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("event_start_date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Event End Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("event_end_date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("event_end_date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Event Start Time">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("event_start_time") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("event_start_time") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Event End Time">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("event_end_time") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label15" runat="server" Text='<%# Bind("event_end_time") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Event Share To">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("event_share_to") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label16" runat="server" Text='<%# Bind("event_share_to") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Created By">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("created_by") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label17" runat="server" Text='<%# Bind("created_by") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Created Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("created_date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label18" runat="server" Text='<%# Bind("created_Date") %>'></asp:Label>
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
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton> |
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
