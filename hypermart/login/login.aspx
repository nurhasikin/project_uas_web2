﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="hypermart.login" %>



<!doctype html>
<html lang="en">
  <head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Login</title>
  </head>
  <body>
  <form runat="server" id="form1">

  
  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
     
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <center><h3><strong>Login</strong></h3></center>
                 
                </div>
                <form action="#" method="post">
                  <div class="form-group first">
                    <label for="username">Username</label>
                      <asp:TextBox runat="server" ID="username" CssClass="form-control"></asp:TextBox>
                 

                  </div>
                  <div class="form-group last mb-4">
                    <label for="password">Password</label>
                   <asp:TextBox runat="server" ID="password" type="password" CssClass="form-control"></asp:TextBox>
                 
                    
                  </div>
                    <asp:Label runat="server" ID="lblMessage" Text=""></asp:Label>
               
                    <asp:Button runat="server" ID="btnLogin" text="Log In" CssClass="btn btn-pill text-white btn-block btn-primary" />
           

                  <span class="d-block text-center my-4 text-muted"><a href="register.aspx">Register</a></span>
             
                </form>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
      </form>
  </body>
</html>