<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HRMSWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button Text="Open Modal" ID="modal" CssClass="btn btn-primary" OnClick="modal_Click" runat="server" />

            <div class="modal fade" id="mymodal" data-backdrop="false" role="dialog">
            <div class=" modal-dialog modal-dailog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add New Record</h4>
                        <asp:Label ID="lblmsg" Text="" runat="server" />
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <label>Name</label>
                        <asp:TextBox ID="txtname" CssClass="form-control" placeholder="Name" runat="server" />

                        <label>Email</label>
                        <asp:TextBox ID="txtmail" CssClass="form-control" placeholder="Email" runat="server" />
                        <label>Contact</label>
                        <asp:TextBox ID="txtcontact" CssClass="form-control" placeholder="Contact" runat="server" />
                        <label>Address</label>
                        <asp:TextBox ID="txtaddress" CssClass="form-control" placeholder="Address" runat="server" />
                     <asp:HiddenField  ID="hdid"  runat="server"/>
                        <label>Status</label>
                        <asp:DropDownList ID="dllstatus" CssClass="form-control" runat="server">
                            <asp:ListItem Value="">Select Status</asp:ListItem>
                            <asp:ListItem Text="Active" />
                            <asp:ListItem Text="Inactive" />
                        </asp:DropDownList>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <asp:Button ID="Button6" CssClass="btn btn-primary" Text="save" runat="server" />
                    </div>
                </div>

            </div>

        </div>

            <!-- Button trigger modal -->
<%--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  Launch static backdrop modal
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>--%>


        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
</body>
</html>
