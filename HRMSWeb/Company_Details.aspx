<%@ Page Title="" Language="C#" MasterPageFile="~/HRMS.Master" AutoEventWireup="true" CodeBehind="Company_Details.aspx.cs" Inherits="HRMSWeb.Company_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/alert.js"></script>
    <link href="CSS/CommonCss.css" rel="stylesheet" />
    <style>
        .content-border {
            border: 2px solid #077d7f;
            padding: 10px;
            margin: 20px;
            background-color: #077d7f;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .company-profile-heading {
            color: #077d7f;
            padding-left: 20px;
            font-size: 15px;
            font-weight: bold;
        }
        /* Existing CSS for form-group */
        .form-group {
            display: flex;
            align-items: flex-start;
            padding-left: 20px;
            margin-bottom: 15px; /* Increased margin for better spacing */
        }

            .form-group label {
                width: 200px; /* Increased label width for better alignment */
                padding-right: 20px;
                font-weight: bold;
            }

            .form-group input[type="text"],
            .form-group select {
                flex: 1;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 3px;
                transition: border-color 0.3s;
            }

                .form-group input[type="text"]:focus,
                .form-group select:focus {
                    border-color: #077d7f;
                    outline: none;
                }

            .form-group .form-control.input-sm {
                font-size: 14px;
            }

            .form-group.required label::before {
                content: "*";
                color: red;
                margin-right: 8px;
            }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-border">
        <asp:Label ID="Label1" runat="server" Text="COMPANY DETAILS" Font-Bold="True" Font-Names="Copperplate Gothic Bold" Font-Size="X-Large"></asp:Label>

    </div>
    <h2 class="company-profile-heading">COMPANY PROFILE</h2>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtcompname"><b>Company Name</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtcompname" class="form-control input-sm" placeholder="Enter Company Name"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtcontctpersn"><b>Contact Person</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtcontctpersn" class="form-control input-sm" placeholder="Enter Contact Person"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtweburl"><b>Website URL</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtweburl" class="form-control input-sm" placeholder="Enter Website URL"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtcntctnum"><b>Contact Number</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtcntctnum" class="form-control input-sm" placeholder="+91-"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtlineofbussiness"><b>Line of Business</b></asp:Label><br />
                    <asp:DropDownList ID="txtlineofbussiness" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown" runat="server">
                        <%--<asp:ListItem Text="Pakistan" />
<asp:ListItem Text="Iran" />
<asp:ListItem Text="Iraq" />
<asp:ListItem Text="Turkey" />
<asp:ListItem Text="India" />
<asp:ListItem Text="China" />--%>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtemailid"><b>Email ID</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtemailid" class="form-control input-sm" placeholder="example@domain.com"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtcmpnytype"><b>Company Type</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtcmpnytype" class="form-control input-sm" placeholder="Enter Website URL"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtdesigntion"><b>Designation</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtdesigntion" class="form-control input-sm" placeholder="Enter Designation"></asp:TextBox>
                </div>
            </div>
        </div>
        <h2 class="company-profile-heading">COMPANY PROFILE</h2>
        <div class="row">
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtadrsline1"><b>Address Line1</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtadrsline1" class="form-control input-sm" placeholder="Enter Address1"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtadrsline2"><b>Address Line2</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtadrsline2" class="form-control input-sm" placeholder="Enter Address2"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtcity"><b>City</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtcity" class="form-control input-sm" placeholder="Enter City"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtstate"><b>State</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtstate" class="form-control input-sm" placeholder="Enter State"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtcontry"><b>Country</b></asp:Label><br />
                    <asp:DropDownList ID="txtcontry" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown" runat="server">
                        <asp:ListItem Text="Pakistan" />
                        <asp:ListItem Text="Iran" />
                        <asp:ListItem Text="Iraq" />
                        <asp:ListItem Text="Turkey" />
                        <asp:ListItem Text="India" />
                        <asp:ListItem Text="China" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtzippincode"><b>ZIP/PIN Code</b></asp:Label><br />
                    <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtzippincode" class="form-control input-sm" placeholder="Enter Pincode"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="form-group">
                <asp:Button Text="Save" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" />
                <asp:Button Text="Update" ID="btnupdate" OnClick="btnupdate_Click" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" />
                <asp:Button Text="Delete" ID="btndlt" OnClick="btndlt_Click" CssClass="btn btn-danger btn-lg" Width="220px" runat="server" />
                <asp:Label Text="" ForeColor="Green" Font-Bold="true" ID="lblmessage" CssClass="label label-success" runat="server" />
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="form-group">
                <div class="table-responsive">
                    <asp:GridView ID="gv" Width="100%" AutoGenerateSelectButton="true" SelectedRowStyle-BackColor="Green" OnSelectedIndexChanged="gv_SelectedIndexChanged" runat="server"></asp:GridView>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
