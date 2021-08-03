
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="hypermart.index" %>

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
    <form id="form1" runat="server">
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><strong><i></i>POS Hypermart</strong></a>
				
		<div id="sideNav" href="">
		<i class="fa fa-bars icon"></i> 
		</div>
            </div>

            <ul class="nav navbar-top-links navbar-right">
              
       
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
                        <a class="active-menu" href="index.aspx"><i class="fa fa-dashboard"></i> Dashboard</a>
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
                        <a href="#"><i class="fa fa-users"></i> Admin<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="dataadmin.aspx"><i class="fa fa-users"></i> Data Admin</a>
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
      
		<div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Tentang Hypermart
                        </h1>
              <p>Perjalanan Hypermart merintis langkahnya di Indonesia tak bisa dikatakan singkat. Mulai beroperasi pada 2004, 
                  Hypermart yang kala itu hadir sebagai peritel paling bungsu, mengejar ketertinggalannya untuk menunjukkan 
                  kepada publik: Inilah peritel asli Indonesia yang lahir dari Bumi Pertiwi dan mampu bersaing dengan peritel
                  asing. Kini, di usianya yang ke-10 Hypermart ingin menunjukkan bahwa keinginannya menjadi No.1
                  Multi Format Food Retail di Indonesia bukanlah sebuah mimpi semata. Di usia yang masih muda, Hypermart menjadi hypermarket pertama yang berhasil membuka gerai ke-100 di Indonesia.</p>
								
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
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
	
	
	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
	
	 <script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>

      
    <!-- Chart Js -->
    <script type="text/javascript" src="assets/js/Chart.min.js"></script>  
    <script type="text/javascript" src="assets/js/chartjs.js"></script> 
    </form>
</body>

</html>