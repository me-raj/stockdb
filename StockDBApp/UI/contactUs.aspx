<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="StockDBApp.UI.contactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    
      <link href="StyleSheet1.css" rel="stylesheet" />
     <link href="../Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 
  
    <link href="../Content/css/shop-homepage.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Stock Management System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="HomeUI.aspx">
                            Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.aspx">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="contactUs.aspx">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
       
        
        <div align="center"
            >
            <p> Created by:</p>
            <hr/>
            <hr />
            
                Md. Masud 
                <hr/>
                Babu
            <hr/>
                Majid
            <hr/>
                Rajesh
            
           
                        
            

        </div>
        
        
        
        
        

    <div>
                

       <!-- PANEL BODY END-->
                        <div class="panel-footer">
                            <div class="col-md-3">
                                <div class="pull-left">
                                    <p>
                                    <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                        <i class="fa fa-arrow-circle-left"></i>Back to Home
                                    </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
             
     <footer class="py-3 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">&copy; <%: DateTime.Now.Year %> Stock Management System</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="../Content/vendor/jquery/jquery.min.js"></script>
    <script src="../Content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        
          
    


    </form>
</body>
</html>

