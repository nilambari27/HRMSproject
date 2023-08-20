<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="HRMSWeb.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/CommonCss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid p-4">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="DEPARTMENT DETAILS" CssClass="HeadingLabel" ></asp:Label>
            <div class="card p-3">
                <div class="row">
                        <div class="col-2">
                        <asp:Label ID="Label1" runat="server" Text="Department Name"></asp:Label>
                        </div>
                        <div class="col-3">
                        <asp:TextBox ID="txtDeptName" CssClass="form-control textboxCss" runat="server" ></asp:TextBox>
                        </div><div class="col-2"></div>
                        <div class="col-2">
                        <asp:Label ID="Label2" runat="server" Text="Department Head EmailId"></asp:Label>
                        </div>
                        <div class="col-3">
                            <asp:DropDownList ID="ddDeptHead" CssClass="form-control textboxCss" runat="server"></asp:DropDownList>
                        </div>
                </div>
                <div class="row">
                        <div class="col-2">
                        <asp:Label ID="Label3" runat="server" Text="Mail Alias"></asp:Label>
                        </div>
                        <div class="col-3">
                        <asp:TextBox ID="txtEmail" CssClass="form-control textboxCss" runat="server" ></asp:TextBox>
                        </div><div class="col-2"></div>
                        <div class="col-2">
                        <asp:Label ID="Label4" runat="server" Text="Parent Department"></asp:Label>
                        </div>
                        <div class="col-3">
                            <asp:DropDownList ID="ddParentDept" CssClass="form-control textboxCss" runat="server"></asp:DropDownList>
                        </div>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
