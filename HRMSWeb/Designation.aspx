<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Designation.aspx.cs" Inherits="HRMSWeb.Designation" %>
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
    <div class="container p-3 ">
        <div class="row">
            <asp:Label ID="L1" runat="server" Text="DESIGNATION DETAILS" CssClass="HeadingLabel"></asp:Label>
            <div class="card p-3 border-0 ">
                <div class="row mb-2">
                    <div class="col-lg-2">
                        <asp:Label ID="Label1" runat="server" Text="Designation Name"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtDesigName" CssClass="form-control textboxCss" runat="server" placeholder="Enter Designation Name"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:Label ID="Label2" runat="server" Text="Mail Alias"></asp:Label>
                    </div>
                     <div class="col-lg-4">
                        <asp:TextBox ID="txtMailAlias" CssClass="form-control textboxCss" runat="server" placeholder="example@domail.com"></asp:TextBox>
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

            <asp:GridView ID="GridView1" runat="server" CssClass="p-5 table table-bordered table-striped "
                AutoGenerateColumns="False" Width="100%" >
                <Columns>
                    <asp:BoundField DataField="Designation_Name" HeaderText="Designation Name" >       
                         <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                     <asp:BoundField DataField="Mail_Id" HeaderText="Mail Alias" > 
                          <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>                        
                    <asp:BoundField DataField="Created_By" HeaderText="Created by" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Created_Date" HeaderText="Created Date" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <%--<asp:CommandField EditText="Activate|Edit" HeaderText="Status" />--%>
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
