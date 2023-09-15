<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="HRMSWeb.Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />

    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=GridView1.ClientID%>").prepend($("<thead></thead>").append($(this).find("tr:first"))).datatable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-3 mx-auto">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="DEPARTMENT DETAILS" CssClass="HeadingLabel"></asp:Label>
            <div class="card p-3 ">
                <div class="row">
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
                        <asp:DropDownList ID="ddDeptHead" CssClass="form-control textboxCss" runat="server">                            
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
                <div class="row text-end mb-2 ">
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

            <asp:GridView CssClass="table table-striped table-hover" ID="GridView1" runat="server" AutoGenerateColumns="false" BackColor="White" Width="100%">
                <AlternatingRowStyle BackColor="#D7EBFF" />
                <Columns>
                    <asp:BoundField DataField="dept_id" HeaderText="ID" />
                    <asp:BoundField DataField="dept_name" HeaderText="Department Name" />
                    <asp:BoundField DataField="dept_mail" HeaderText="E_Mail" />
                    <asp:BoundField DataField="parent_dept_name" HeaderText="Parent Department" />
                </Columns>
                <HeaderStyle BackColor="#EBEBEB" />
            </asp:GridView>
        </div>
    </div>

</asp:Content>
