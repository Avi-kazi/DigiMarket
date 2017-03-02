<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home page</title>


  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/style.css">
  <script src="resources/jquery/dist/jquery.min.js"></script>
  <script src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }

</style>
</head>
<body>
<div >
<nav class="navbar navbar-default navbar-custom">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"class="pull-left"><img src="C:/Users/Avi Kazi/Pictures/Camera Roll/ipod.png" style="display: inline-block;"> <span style="display: inline-block;">Digi Market</span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
	  <li><a href="#">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Products<span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="${ctp}/AllProducts/">All Products</a></li>
            <li><a href="${ctp}/result/Mobile/">Mobile</a></li>
            <li><a href="#">Laptop</a></li>
            <li><a href="#">Gaming Consoles</a></li>
			</ul>
        </li>
		<li><a href="#">Contacts</a></li>
		<li><a href="#">About us</a></li>
      </ul>

     <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid --> 
</nav>
</div>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/as1.png" alt="Chania" width="345" height="345">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/as2.png" alt="Chania" width="345" height="345">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
    
      <div class="item">
        <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/as3.png" alt="Flower" width="345" height="345">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/as4.png" alt="Flower" width="345" height="345">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

  
<div class="product-row">
  <div class="container">
  <h1>Mobiles</h1>
  <div class="row">
        <div class="col-md-3">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/img1.jpg" alt="Nature" style="width:30%">
          <div class="caption">
            <p>SAMSUNG Galaxy S6 Edge (Gold Platinum, 64 GB)
₹37,200</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/img2.png" alt="Nature" style="width:30%">
          <div class="caption">
            <p> Apple iPhone 6 (Space Grey, 16 GB) ₹36,990
</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/img3.png" alt="Fjords" style="width:30%">
          <div class="caption">
            <p>Redmi Note 3 (Dark Grey, 32 GB)
₹11,999
</p>
          </div>
        </a>
      </div>
    </div>
	   <div class="col-md-3">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/img4.png" alt="Fjords" style="width:30%">
          <div class="caption">
            <p>Moto m (Silver, 64GB)
			₹17,999</p>
          </div>
        </a>
      </div>
    </div>
	<button class="button">View Page</button>
  </div>
</div>
<!--!laptops--->
<div class="container">
  <h1>Laptops</h1>
  <div class="row">
        <div class="col-md-3">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/hp.png" alt="Nature" style="width:40%">
          <div class="caption">
            <p>HP Pavilion Core i5 6th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) W6T19PA 15-au006TX Notebook  (15.6 inch, Natural SIlver, 2.03 kg)</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/img2.png" alt="Nature" style="width:30%">
          <div class="caption">
            <p> Dell Inspiron APU Quad Core A10 6th Gen - (8 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) Z566120HIN9 5555 Notebook  (15.6 inch, Black, 2.3 kg)
</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/img3.png" alt="Fjords" style="width:30%">
          <div class="caption">
            <p>Lenovo IdeaPad 300 Core i7 6th Gen - (8 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) 80Q7018WIH 300-15ISK Notebook  (15.6 inch, SIlver, 2.3 kg)
</p>
          </div>
        </a>
      </div>
    </div>
	   <div class="col-md-3">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="C:/Users/Avi Kazi/Pictures/Camera Roll/img4.png" alt="Fjords" style="width:30%">
          <div class="caption">
            <p>Asus APU Quad Core A8 6th Gen - (4 GB/1 TB HDD/DOS) 90NB0CN1-M01550 X540YA-XO106 Notebook  (15.6 inch, Black, 2 kg)</p>
          </div>
        </a>
      </div>
    </div>
	<button class="button">View Page</button>
  </div>
</div>
</div>
</body>

<footer>
 <div id="footer" data-animate="fadeInUp">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <h4>Pages</h4>

                        <ul>
                            <li><a href="text.html">About us</a>
                            </li>
                            <li><a href="text.html">Terms and conditions</a>
                            </li>
							<li><a href="contact.html">Go to contact page</a>
                            </li>
                        </ul>

                        <hr>

                        <h4>User section</h4>

                        <ul>
                            <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
                            </li>
                            <li><a href="register.html">Signup</a>
                            </li>
                        </ul>

                        <hr class="hidden-md hidden-lg hidden-sm">

                    </div>
                    <!-- /.col-md-3 -->

                    <div class="col-md-3 col-sm-6">

                       

                       

                        <hr class="hidden-md hidden-lg">

                    </div>
                    <!-- /.col-md-3 -->

                    <div class="col-md-3 col-sm-6">

                        

                        
                        <hr class="hidden-md hidden-lg">

                    </div>
                    <!-- /.col-md-3 -->



                    <div class="col-md-3 col-sm-6">

                    

                        <hr>

                        <h4>Stay in touch</h4>

                        <p class="social">
                            <a href="#" class="facebook external" data-animate-hover="shake"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="twitter external" data-animate-hover="shake"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="instagram external" data-animate-hover="shake"><i class="fa fa-instagram"></i></a>
                            <a href="#" class="gplus external" data-animate-hover="shake"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="email external" data-animate-hover="shake"><i class="fa fa-envelope"></i></a>
                        </p>


                    </div>
                    <!-- /.col-md-3 -->

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
          <div id="copyright">
            <div class="container">
                <div class="col-md-6">
                    <p class="pull-left">© 2017 Digi Market.</p>

                </div>
                <div class="col-md-6">
                    <p class="pull-right"> <a href="https://bootstrapious.com/e-commerce-templates"></a>
                        <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>
                </div>
            </div>
        </div>
        <!-- *** COPYRIGHT END *** -->
</footer>


    </div>
</html>
