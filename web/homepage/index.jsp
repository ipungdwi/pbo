<%-- 
    Document   : index
    Created on : Oct 3, 2022, 3:00:48 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width", initial-scale="1.0">
        <title>SiPalingKenceng | Home</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <link rel="stylesheet" href="asset/css/style.css">
    </head>

    <body>
        <section id="header">
            <img src="img/logo.png"  alt="" class="Logo12">

            <div>
                <ul id="navbar">
                    <li><a class="active" href="index">Home</a></li>
                    <li><a href="services">Services</a></li>
                    <li><a href="about">About</a></li>
                    <li><a href="contact" >Contact</a></li>
                    <li><a href="login" class="normal">Login</a></li>
                    
                </ul>
            </div>
        </section>

        <section id="hero">
            <h1>SI PALING KENCENG</h1>
            <h2>ADA KAMI </h2>
            <h2>SEMUA SAMPAI</h2>
            
            <button>View Services</button>
        </section>

        
        <section id="product1" class="section-p1">
            <h1>Delivery Services </h1>
            <div class="pro-container">
                <div class="pro">
                    <img src="img/products/f2.jpg" alt="">
                    <div class="des">
                        <span>SiPalingExpress</span>
                        <h4>EXPRESS</h4>
                        <h5>Memanfaatkan transportasi tercepat dan melayani jenis layanan eksklusif.</h5>
                        <a href="services">Learn More</a>
                    </div>
                </div>
                <div class="pro">
                    <img src="img/products/f1.jpg" alt="">
                    <div class="des">
                        <span>SiPalingReguler</span>
                        <h4>REGULER</h4>
                        <h5>Layanan pengiriman ke seluruh wilayah Indonesia dengan estimasi 1-7 hari.</h5>
                        <a href="services">Learn More</a>
                    </div>
                </div>
                <div class="pro">
                    <img src="img/products/f3.jpg" alt="">
                    <div class="des">
                        <span>SiPalingHemat</span>
                        <h4>HEMAT</h4>
                        <h5>Layanan ekspedisi dengan biaya termurah dibandingkan jasa ekspedisi lainnya</h5>
                        <a href="services">Learn More</a>
                    </div>
                </div>
                <div class="pro">
                    <img src="img/products/f4.jpg" alt="">
                    <div class="des">
                        <span>SiPalingCOD</span>
                        <h4>COD</h4>
                        <h5>Layanan pengiriman dengan cara pelanggan membayarkan uang tunai melalui kurir.</h5>
                        <a href="services">Learn More</a>
                    </div>
                </div>
                
            </div>
        </section>
        
        <section id="banner" class="section-m1"></section>
         
        <section id="sm-banner" class="section-p1">
            <div class="banner-box">
                <h4><strong>CARGO DARAT</strong></h4> 
                
                <button class="white">Learn More</button>
            </div>
            <div class="banner-box banner-box2">
                <h4><strong>CARGO LAUT</strong></h4>
                <br>
                <button class="white">Learn More</button>
            </div>
            <div class="banner-box banner-box3">
                <h4><strong>CARGO UDARA</strong></h4>
                <br>
                <button class="white">Learn More</button>
            </div>
        </section>
              
        <section id="newsletter" class="section-p1 section-m1">
                <div class="newstext">
                    <h4>Sign Up For Newsletter</h4>
                    <p>Get E-mail updates about our latest shop and <span>special offers</span>
                    </p> 
                </div>
                <div class="form">
                    <input type="text" placeholder="Your email address">
                    <a href="buatakun"><button class="normal">Sign Up</button></a>
                </div>
        </section>
        
        <footer class="section-p1">
            <div class="col">
                <h4>Contact</h4>
                <p><strong>Adress: </strong> Jl. Raya, RT.4/RW.1, Meruya Sel, Jakarta</p>
                <p><strong>Phone:</strong> +62 2222 3333 / (+62) 021 7918 7699</p>
                <p><strong>Hours:</strong> 08:00 - 16:00, Mon - Sat</p>
                <div class="follow">
                    <h4>Follow us</h4>
                    <div class="icon">
                        <i class="fab fa-facebook-f"></i>
                        <i class="fab fa-twiter"></i>
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-pinterest-p"></i>
                        <i class="fab fa-youtube"></i>
                    </div>
                </div>
            </div>

            <div class="col">
                <h4>About</h4>
                <a href="#">About us</a>
                <a href="#">Delivery Information</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Terms & Conditions </a>
                <a href="#">Contact us</a>
            </div>

            <div class="col install">
                <h4>install app</h4>
                <p>from App Store or Goggle play</p>
                <div class="row">
                    <img src="img/pay/app.jpg" alt="">
                    <img src="img/pay/play.jpg" alt="">
                </div>
                <p>Secured Payment Gateaways </p>
                <img src="img/pay/pay.png" alt="" class="pay">
            </div>

            <div class="copyright">
                <p> 2022, ©SiPalingKenceng </p>
            </div>
        </footer>                              
        <script src="sricpt.js"></script>
    </body>
</html>
