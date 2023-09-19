<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="HRMSWeb.Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" rel="stylesheet">

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <%--$('#<%= GridView1.ClientID %>').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();--%>
    <script>
        $(document).ready(function () {
            $('#<%= GridView1.ClientID %>').DataTable();
       });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 ">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="DEPARTMENT DETAILS" CssClass="HeadingLabel"></asp:Label>
            <div class="card p-3 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Department Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtDeptName" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label2" runat="server" Text="Department Head EmpId"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ddDeptHead" CssClass="form-control textboxCss" runat="server" DataTextField="Select empID">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row mb-2 ">
                    <div class="col-lg-2">
                        <asp:Label ID="Label3" runat="server" Text="Mail Alias"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEmail" CssClass="form-control textboxCss" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label4" runat="server" Text="Parent Department"></asp:Label>
                    </div>
                    <div class="col-lg-4 mb-4 ">
                        <asp:DropDownList ID="ddParentDept" CssClass="form-control textboxCss" runat="server"></asp:DropDownList>
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
            <asp:Label ID="Label5" runat="server" Text="VIEW DETAILS" CssClass="HeadingLabel"></asp:Label>

            <asp:GridView ID="GridView1" runat="server" CssClass="p-5 table table-bordered table-striped alternate-row"
                AutoGenerateColumns="False" Width="100%" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="dept_name" HeaderText="Department Name" />
                    <asp:BoundField DataField="dept_mail" HeaderText="E_Mail" />
                    <asp:BoundField DataField="dept_head_empid" HeaderText="Dept Head ID" />
                    <asp:BoundField DataField="parent_dept_name" HeaderText="Parent Department" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="created_by" HeaderText="Created by" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="created_date" HeaderText="Created Date" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <%--<asp:CommandField EditText="Activate|Edit" HeaderText="Status" />--%>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server">Activate</asp:LinkButton>
                            &nbsp;|&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit">Edit</asp:LinkButton>
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
