<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="HRMSWeb.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/all.css" rel="stylesheet" />
    <link href="CSS/style.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <!-- Sidebar -->
            <aside id="sidebar">
                <div class="h-100">
                    <!-- Sidebar Navigation -->
                    <ul class="sidebar-nav">
                        <li class="sidebar-item">
                            <a href="#" class="sidebar-link collapsed" data-bs-toggle="collapse" data-bs-target="#pages"
                                aria-expanded="false" aria-controls="pages">
                                <i class="fa fa-home pe-2"></i>
                                Pages
                            </a>
                            <ul id="pages" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                                <li class="sidebar-item">
                                    <a href="#" class="sidebar-link">Analytics</a>
                                </li>
                                <li class="sidebar-item">
                                    <a href="#" class="sidebar-link">Ecommerce</a>
                                </li>
                                <li class="sidebar-item">
                                    <a href="#" class="sidebar-link">Crypto</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </aside>
        </div>
    </form>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/script.js"></script>
    <script src="Scripts/fontawesome/all.js"></script>
    
</body>
</html>
