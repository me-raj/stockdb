<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stock Management System</title>

    <!-- Bootstrap core CSS -->
    <link href="../Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../Content/css/shop-homepage.css" rel="stylesheet">

  </head>

  <body style="height:800px">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Stock Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="HomeUI.aspx">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.aspx ">About</a>
            </li>
         
            <li class="nav-item">
              <a class="nav-link" href="contactUs.aspx">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">Stock Store </h1>
          <div class="list-group">
   
            <a href="CatagorySetupUI.aspx" class="list-group-item">Catagory Setup</a>
            <a href="CompanySetupUI.aspx" class="list-group-item">Company Setup</a>
            <a href="ItemSetupUI.aspx" class="list-group-item">Item</a>
             <a href="StockInUI.aspx" class="list-group-item">Stock In</a>
            <a href="StockOutUI.aspx" class="list-group-item">Stock out</a>
            <a href="SearchViewItemUI.aspx" class="list-group-item">Search View Item</a>
            <a href="ViewSalesTwoDateUI.aspx" class="list-group-item">View Sales Two Date</a>
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="../Content/1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="../Content/2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="../Content/3.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

        
</div>

        </div>

    </div>
    <!-- /.container -->

    <!-- Footer -->
      <br />
        <br />
        <br />
        <br />
    <footer class="py-3 bg-dark" style="padding-top:60px">
      <div class="container">
       
        <p class="m-0 text-center text-white">&copy; <%: DateTime.Now.Year %> Stock Management System</p>
      </div>
      <!-- /.container -->

    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="../Content/vendor/jquery/jquery.min.js"></script>
    <script src="../Content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
