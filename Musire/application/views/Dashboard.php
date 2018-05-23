<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url();?>/bootstrap-4.1.0-dist/css/bootstrap.min.css">
    <link href="<?php echo base_url();?>/css/Login.css" rel="stylesheet">
    <link href="<?php echo base_url();?>/css/dashboard.css" rel="stylesheet">

  </head>

  <body class="bg-dark lobsfont">

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
      <div class="container">
        <a class="navbar-brand lobsfont" href="#">Musire</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <!-- <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li> -->
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
            <li class="nav-item">
              <a class="btn btn-outline-warning pointer-cursor" href="<?php echo site_url('User_Logout');?>">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="flex-row d-flex justify-content-center">
        <!-- /.col-lg-3 -->

        <div class="col-lg-13">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner slide-img" role="listbox">
              <div class="carousel-item active ">
                <img class="d-block img-fluid" src="<?php echo base_url();?>/Image/PianoGuitar.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="<?php echo base_url();?>/Image/Piano.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="<?php echo base_url();?>/Image/flute.jpg" alt="Third slide">
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

          <div class="row">

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="custom-card h-100">
                <a href="#"><img class="card-img-top instrument-img" src="<?php echo base_url();?>/Image/1.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item One</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="custom-card h-100 ">
                <a href="#"><img class="card-img-top instrument-img" src="<?php echo base_url();?>/Image/6(biola).jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Two</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="custom-card h-100">
                <a href="#"><img class="card-img-top instrument-img" src="<?php echo base_url();?>/Image/3.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Three</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="custom-card h-100">
                <a href="#"><img class="card-img-top instrument-img" src="<?php echo base_url();?>/Image/4.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Four</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="custom-card h-100">
                <a href="#"><img class="card-img-top instrument-img" src="<?php echo base_url();?>/Image/7(horn).jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Five</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="custom-card h-100">
                <a href="#"><img class="card-img-top instrument-img" src="<?php echo base_url();?>/Image/8(flute).jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item Six</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->   

    </div>
    <!-- /.container -->
    <div class="bg-black lobsfont center" style="height:40%;">

        <div style="height:70%">
                <h6></h6>
                <div>
                        <p class="contact-description lobsfont"><img class="location-logo" src="<?php echo base_url();?>Image/poi.gif" alt="location">&emsp13;Address :
                        </br>&emsp; Jebres, Kota Surakarta, Jawa Tengah
                        </p>
                        <p class="contact-description lobsfont"><img class="phone-book-logo" src="<?php echo base_url();?>Image/phone-book.png" alt="phone">&emsp13;Phone :
                        </br>&emsp; +6285878586091</p>
                        <p class="contact-description lobsfont"><img class="email-logo" src="<?php echo base_url();?>Image/email.png" alt="email">&emsp13;Email :
                        </br>&emsp; fikrihashfi@gmail.com</p>
                </div>
            </div>
            
            <div class="text-center" style="width:50%; font-size:150%;color:goldenrod;">OUR CONTACT</div>

    <div class="text-center" style="height:25%">
        <h6>Follow Us :</h6>
        <div>
            <a href="https://www.facebook.com/rubiker.fhn"><img class="fb-logo" src="<?php echo base_url();?>Image/facebook.png" alt=""></a>
            <a href="https://twitter.com/fikri_hashfi"><img class="twitter-logo" src="<?php echo base_url();?>Image/twitter-logo.png" alt=""></a>
            <a href="https://whatsapp.com"><img class="whatsapp-logo" src="<?php echo base_url();?>Image/whatsapp.png" alt=""></a>
            <a href="https://www.instagram.com/fikrihashfi/?hl=id"><img class="instagram-logo" src="<?php echo base_url();?>Image/instagram-logo.png" alt=""></a>
            <a href="https://www.youtube.com/channel/UCvmKUuw8clyYxhtFOoAIo5w"><img class="youtube-logo" src="<?php echo base_url();?>Image/youtube-logo.png" alt=""></a>
        </div>
    </div>

</div>

    <!-- Footer -->
    <footer class="bg-black lobsfont border-top border-warning">Copyright &copy; Kelompok3</footer>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<?php echo base_url();?>/js/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url();?>/bootstrap-4.1.0-dist/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
