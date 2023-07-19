<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HRMSWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login </title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link href="CSS/Login.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!----------------------- Main Container -------------------------->

        <div class="container d-flex justify-content-center align-items-center min-vh-100">

            <!----------------------- Login Container -------------------------->

            <div class="row border rounded-5 p-3 bg-white shadow box-area">

                <!--------------------------- Left Box ----------------------------->

                <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box">
                    <div class="featured-image mb-2">
                        <img src="Images/leftloginimg.jpeg" class="img-fluid" style="width:600px;" />
                    </div>
                </div>

                <!-------------------- ------ Right Box ---------------------------->

                <div class="col-md-6 right-box">
                    <div class="row">
                        <div class="header-text mb-3 text-center ">
                            <img src="Images/SmallLogo.png" style="width: 100px;" />
                        </div>
                        <div class=" mb-3">
                            <p>Welcome to</p>
                            <p>Human Resource Management System</p>
                        </div>
                        <center>
                            <div style="width: 80%;">
                                <div class="form-group mb-2">
                                    <asp:TextBox ID="txtEmailID" CssClass="form-control" runat="server" placeholder="Email ID" BorderColor="#077D7F" BorderWidth="3px"></asp:TextBox>
                                 <div>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Email ID" ControlToValidate="txtEmailID" Display="Dynamic" Font-Names="Verdana" Font-Size="Smaller" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailID" Display="Dynamic" ErrorMessage="Invalid Email Id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Verdana" Font-Size="Smaller"></asp:RegularExpressionValidator>
                                 </div>
                                </div>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password" BorderColor="#077D7F" BorderWidth="3px"></asp:TextBox>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plese enter password" ControlToValidate="txtPassword" Font-Names="Verdana" Font-Size="Smaller" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                 </div>
                                </div>
                            </div>
                       <div class="form-group mb-3">
                            <div class="forgot">
                                <small style="font:bold 14px arial,vardana;color:#077d7f;" align="right"><a href="#">Forgot Password?</a></small>
                            </div>
                        </div>
                            <div class="form-group mb-3 justify-content-between ">
                                <asp:Button CssClass="btn" ID="btnSignIn" runat="server" Text="Sign In" BackColor="#077d7f" ForeColor="White" Width="120px" OnClick="btnSignIn_Click" />

                                <asp:Button CssClass="btn" ID="btnCancel" runat="server" Text="Cancel" BackColor="#077d7f" ForeColor="White" Width="120px" OnClick="btnCancel_Click"/>
                            </div>
                        </center>
                    </div>
                </div>

            </div>
        </div>

        <%--<div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>--%>
    </form>
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>
</body>
</html>
