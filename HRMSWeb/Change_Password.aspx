<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="HRMSWeb.Change_Password" %>

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
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 ">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="CHANGE PASSWORD DETAILS" CssClass="HeadingLabel"></asp:Label>
            <div class="card p-3 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtEmpId" CssClass="form-control textboxCss" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <%--<asp:Label ID="Label2" runat="server" Text="Department Head EmpId"></asp:Label>--%>
                    </div>
                    <div class="col-lg-4">
                        <%--<asp:DropDownList ID="ddDeptHead" CssClass="form-control textboxCss" runat="server" DataTextField="Select empID">
                        </asp:DropDownList>--%>
                    </div>
                </div>
                <div class="row mb-2 ">
                    <div class="col-lg-2">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtPassword" CssClass="form-control textboxCss" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                    </div>
                    <div class="col-lg-4 ">
                        <asp:TextBox ID="txtConfirm" CssClass="form-control textboxCss" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="row text-end mb-2 ">
                    <div class="col">
                        <asp:Button ID="btnSave" class="form-group btnStyle" runat="server" Text="Save" BorderColor="#028E8E" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" class="form-group btnStyle" runat="server" Text="Cancel" BorderColor="#028E8E" OnClick="btnCancel_Click" />
                        <%-- <asp:Button ID="btnDel" class="form-group btnStyle" runat="server" Text="Delete" BorderColor="#028E8E" OnClick="btnDel_Click" />--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:Label ID="Label5" runat="server" Text="VIEW DETAILS" CssClass="HeadingLabel"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" CssClass="p-5 table table-bordered table-striped align-content-center" AutoGenerateColumns="false" Width="100%" OnRowDataBound="GridView1_RowDataBound">
                <Columns >
                    <asp:TemplateField HeaderText="Employee ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("employee_id") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("employee_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("password") %>' TextMode="Password"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%--<asp:Label ID="Label2" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                            <input id="Password1" type="password" required/>--%>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("password") %>' TextMode="Password" ></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Modified By">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("modified_by") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("modified_by") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Modified Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("modified_dt") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("modified_dt") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>

            </asp:GridView>
        </div>
    </div>

</asp:Content>
