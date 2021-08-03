<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dataadmin.aspx.vb" Inherits="hypermart.dataadmin" %>


<!DOCTYPE html>
<!-- 
Template Name: BRILLIANT Bootstrap Admin Template
Version: 4.5.6
Author: WebThemez
Website: http://www.webthemez.com/ 
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>Hypermart</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css"> 
</head>
<body>
    <form runat="server" id="form1">
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><strong><i></i> POS Hypermart</strong></a>
                
        <div id="sideNav" href="">
        <i class="fa fa-bars icon"></i> 
        </div>
            </div>

            <ul class="nav navbar-top-links navbar-right">
              
                <!-- /.dropdown -->
              
                <!-- /.dropdown -->
             
                <!-- /.dropdown -->
                <li class="dropdown">

                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                  <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-user">
                   
                
                        <li><a href="login/login.aspx"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a  href="index.aspx"><i class="fa fa-dashboard"></i> Dashboard</a>
                    </li>
                 
                     
                     <li>
                        <a  href="#"><i class="fa fa-th-list"></i> Barang<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="databarang.aspx"><i class="fa fa-th-list "></i> Data Barang</a>
                            </li>
                            <li>
                                <a href="tambahdatabarang.aspx"><i class="fa fa-plus-square "></i> Tambah Data Barang</a>
                            </li>
                            </ul>
                        </li>   
                             <li>
                        <a href="#"><i class="fa fa-users"></i> Konsumen<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="datakonsumen.aspx"><i class="fa fa-users"></i> Data Konsumen</a>
                            </li>
                            <li>
                                <a href="tambahdatakonsumen.aspx"><i class="fa fa-plus-square "></i> Tambah Data Konsumen</a>
                            </li>
                            </ul>
                        </li>   
                             <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i>Penjualan<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="datatransaksi.aspx"><i class="fa fa-shopping-cart"></i> Data Penjualan</a>
                            </li>
                                <li>
                                <a href="datadetailtransaksi.aspx"><i class="fa fa-shopping-cart"></i> Data Detail Penjualan</a>
                            </li>
                            <li>
                                <a href="tambahdatapenjualan.aspx"><i class="fa fa-plus-square "></i> Tambah Data Penjualan</a>
                            </li>
                            </ul>
                        </li>   
                          <li>
                        <a class="active-menu" href="#"><i class="fa fa-users"></i> Admin<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="active-menu" href="dataadmin.aspx"><i class="fa fa-users"></i> Data Admin</a>
                            </li>
                            <li>
                                <a href="tambahdataadmin.aspx"><i class="fa fa-plus-square "></i> Tambah Data Admin</a>
                            </li>
                            </ul>
                        </li>   
                            
           
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
		   <div class="header"> 
                        <h1 class="page-header">
                            
                        </h1>
								
		</div>
		
            <div id="page-inner"> 
               
          
                <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-12">
                  <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Table Data Admin
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView cssClass="table table-striped table-bordered table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                    </Columns>
                                </asp:GridView>
                               
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hypermartConnectionString2 %>" DeleteCommand="DELETE FROM [admin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [admin] ([username], [password]) VALUES (@username, @password)" SelectCommand="SELECT * FROM [admin]" UpdateCommand="UPDATE [admin] SET [username] = @username, [password] = @password WHERE [Id] = @Id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="username" Type="String" />
                                        <asp:Parameter Name="password" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="username" Type="String" />
                                        <asp:Parameter Name="password" Type="String" />
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                               
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
                </div>
                
            </div>
        
        </div>
              
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
        </script>
         <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
    
   </form>
</body>
</html>
