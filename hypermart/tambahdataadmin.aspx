<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="tambahdataadmin.aspx.vb" Inherits="hypermart.tambahdataadmin" %>


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
                                <a href="databarang.aspx"><i class="fa fa-th-list "></i> Data Barang</a>
                            </li>
                            <li>
                                <a  s href="tambahdatabarang.aspx"><i class="fa fa-plus-square "></i> Tambah Data Barang</a>
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
                        <ul  class="nav nav-second-level">
                            <li>
                                <a href="dataadmin.aspx"><i class="fa fa-users"></i> Data Admin</a>
                            </li>
                            <li>
                                <a class="active-menu" href="tambahdataadmin.aspx"><i class="fa fa-plus-square "></i> Tambah Data Admin</a>
                            </li>
                            </ul>
                        </li>   
                            
           
                </ul>

            </div>

        </nav>
          <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                            
                        </h1>
					
									
		</div>
		
            <div id="page-inner"> 
                    
                       <div class="col-lg-3">
                        <div class="card"></div>
                       </div>   
                    <div class="row">
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Form Tambah Data Barang</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                
                                        <div class="form-group">
                                        <asp:Label for="input-small" ID="labelid" runat="server" Text="Username" cssClass=" form-control-label"></asp:Label>
                                           <asp:TextBox ID="username"  placeholder="Username" cssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                      <div class="form-group">
                                        <asp:Label for="input-small" ID="label1" runat="server" Text="Password" cssClass=" form-control-label"></asp:Label>
                                           <asp:TextBox ID="password" type="password"  placeholder="Password" cssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                      
                                     <asp:Button ID="btnsimpan" cssClass="btn btn-default" runat="server" Text="Simpan Data" />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                     
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                  
                 
			
			</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
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
