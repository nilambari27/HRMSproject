<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HRMSWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login </title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="CSS/Login.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/all.css" rel="stylesheet" />   <%--fontawesome--%> 

    <style>
        /* Additional CSS style to override existing styles */
        .forgot small a {
            color: #077d7f !important;
        }
       .form-control {
            border-radius: 0 10px 10px 0 !important;
        }
    </style>

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
                        <div>
                            <p class="mb-1">Welcome to</p>
                            <p class="mb-3">Human Resource Management System</p>
                        </div>
                        <center>
                            <div style="width: 80%;">
                                <div class="form-group mb-2">
                                  <div class="input-group">
                                    <span class="input-group-text" style="background-color: white; border-color: #077D7F; border-block-width:2px">
                                     <i class="fa fa-envelope" style="color: #077D7F; font-size: 18px;"></i></span>
                                    <asp:TextBox ID="txtEmailID" CssClass="form-control" runat="server" placeholder="Email ID" BorderColor="#077D7F" BorderWidth="2px" ></asp:TextBox>
                                  </div>
                                 <div>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Email ID" ControlToValidate="txtEmailID" Display="Dynamic" Font-Names="Verdana" Font-Size="Smaller" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailID" Display="Dynamic" ErrorMessage="Invalid Email Id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Verdana" Font-Size="Smaller"></asp:RegularExpressionValidator>
                                 </div>
                                </div>
                                <div class="form-group mb-1 position-relative">
                                    <div class="input-group">
                                        <span class="input-group-text" style="background-color: white; border-color: #077D7F ;border-block-width:2px">
                                            <i class="fas fa-lock" style="color: #077D7F; font-size: 18px;"></i>
                                        </span>
                                        <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password" BorderColor="#077D7F" BorderWidth="2px"></asp:TextBox>
                                        <span class="position-absolute top-50 end-0 translate-middle-y" style="right: 10px;border:none">
                                            <i id="showPassword" class="fas fa-eye" style="color: #077D7F;margin-right: 10px;font-size: 18px; cursor: pointer;"></i>
                                        </span>
                                   </div>
                                 <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plese enter password" ControlToValidate="txtPassword" Font-Names="Verdana" Font-Size="Smaller" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                 </div>
                                </div>
                           </div>
                       <div class="form-group mb-1">
                            <div class="forgot">
                                <small style="font:bold 14px arial,vardana; margin-left: 210px;" align="right">
                                    <a href="#" style="color: #077d7f;">Forgot Password?</a></small>
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
  </form>
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <script>
        const showPasswordIcon = document.getElementById("showPassword");
        const passwordField = document.getElementById("<%= txtPassword.ClientID %>");

        showPasswordIcon.addEventListener("click", function () {
            if (passwordField.type === "password") {
                passwordField.type = "text";
                showPasswordIcon.classList.remove("fa-eye");
                showPasswordIcon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password";
                showPasswordIcon.classList.remove("fa-eye-slash");
                showPasswordIcon.classList.add("fa-eye");
            }
        });
    </script>
</body>
</html>
