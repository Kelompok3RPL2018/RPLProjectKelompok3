
<!DOCTYPE HTML>
<html>
    <head>
        <title>Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Gugi" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="CSS/NavbarContentFooter.css">
        <link rel="stylesheet" type="text/css" href="CSS/HeaderRow.css">
        <script type="text/javascript" src="libraries/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="libraries/Navbar-JS.js"></script>
    </head>
    <body>


            <div class="header slide" >
                    <!--<img id="Home" style="width:100%"class="header-bg header-height-img-Utama" src="Image\Photography.jpg" alt="Nature">-->
                    <h1 class="judul abs-pos lobsfont" >SELAMAT DATANG &excl;</h1>
                    <h1 class="judul-description abs-pos lobsfont" style="color:whitesmoke;"><?php echo $_SESSION['username'] ?>...<br>Anda butuh alat musik untuk keperluan anda? <br/>Anda datang ke tempat yang tepat !<br/>"MUSIRE" adalah solusinya</h1>
                    <!-- <div class="bottom-border abs-pos"></div> -->
                  </div>
            
                  <div class="row">       
                    <div class="flex-box slide1">
                        <div class="flex-inflex background-black">
                                <div class="example slide1">
                                            <h2 class="text-center text-AboutCompany-head">MUSIRE</h2>
                                            <p class="justify-indent text-AboutCompany">Berdiri pada tanggal 4 april 2018, Musire adalah jasa persewaan alat musik
                                                yang berada di kecamatan Jebres, Surakarta.</p>
                                            <p class="justify-indent text-AboutCompany">Musire membantu pelanggan mencari peralatan musik tanpa harus membelinya, Musire menyewakan berbagai
                                            alat musik mulai dari gitar, piano, biola, drum dan masih banyak lagi. Musire menyewakan alat dengan kualitas terbaik dan harga yang minimalis.
                                             </p>
                                            
                                </div>
                                <div class="example slide1">
                                        <img class="exweb-first-img transition slide1" src="#" alt="1">   
                            </div>

                        </div>
                    </div>
            
                    <div class="main">
                        <div class="flex-inflex">
                         <div class="example slide1">
                            <img class="exweb-img transition slide1" src="#" alt="ex-music">   
                            <p class="ex-description">Rp.45.000,00(item/day)</p>
                            <p class="des-description"><i>Saxophone</i></p>
                         </div>

                        <div class="example slide1">
                            <img class="exweb1-img transition slide1" src="#" alt="ex-music">
                            <p class="ex-description">Rp.30.000,00(item/day)</p>
                            <p class="des-description"><i>Orgen</i></p>
                        </div>
                        <div class="example slide1">
                                <img class="exweb1-img transition slide1" src="#" alt="ex-music">
                                <p class="ex-description">Rp.35.000,00(item/day)</p>
                                <p class="des-description"><i>Electric Guitar</i></p>
                            </div>

                        
                        </div>

                        </div>
                    </div>


                    <div class="Services-WEB">
                        <div id="AnimateBox">
                        <div class="flex-inflex services-web lobsfont">
                                <div class="example slide1">
                                   <img class="exweb-img transition slide1" src="Image\1.jpg" alt="ex">   
                                   <p class="ex-description">Rp.45.000,00(item/day)</p>
                                   <p class="des-description"><i>Saxophone</i></p>
                                   <button class="service-web-button" onclick="alert('Mohon Maaf Fitur belum tersedia')">Pesan Sekarang</button>
                                </div>
       
                               <div class="example slide1">
                                   <img class="exweb1-img transition slide1" src="Image\6(biola).jpg" alt="ex">
                                   <p class="ex-description">Rp.35.000,00(item/day)</p>
                                   <p class="des-description"><i>Biola</i></p>
                                   <button class="service-web-button" onclick="alert('Mohon Maaf Fitur belum tersedia')">Pesan Sekarang</button>
                               </div>
                               <div class="example slide1">
                                       <img class="exweb1-img transition slide1" src="Image\3.jpg" alt="ex">
                                       <p class="ex-description">Rp.55.000,00(item/day)</p>
                                       <p class="des-description"><i>Electric Guitar</i></p>
                                       <button class="service-web-button" onclick="alert('Mohon Maaf Fitur belum tersedia')">Pesan Sekarang</button>
                                   </div>
       
                               
                               </div>
                               <!-- <a class="service-web-more" onclick="alert('Belum tersedia')">Klik untuk melihat lebih banyak</a> -->
                            </div>

                    </div>

                   

                        <div class="navbar">
                            <div class="navbar-kiri">
                                <a onclick="ScrollHome()">Home</a>  
                                <a onclick="ScrollAboutMe()">Brands</a>     
                                <a onclick="ScrollPortofolio()">Our Instrument Music</a>              
                            <div class="dropdown">
                                <button class="dropdown-text" onclick="drop()">Order
                                    <i class="panah-bawah">&DoubleDownArrow;</i></button>
                                <div class="isi-dropdown" id="drop-bar">
                                        <a onclick="ScrollServiceWeb()">Hot Order!</a>
                                        <a onclick="Alert()">Flash Order!</a>
                                </div>
                            </div>
                            </div>  
                            <div>
                                <a href="Costumer.php" class="navbar-kanan" value="logout" name="logout">LOGOUT</a>           
                            </div>
                       
                            </div>



        </body>
        <footer class="lobsfont">Copyright &copy; HASHFI</footer>
</html>

