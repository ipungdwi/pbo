<%-- 
    Document   : contact
    Created on : Oct 3, 2022, 4:28:56 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width", initial-scale="1.0">
        <title>SiPalingKenceng | Contact</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <link rel="stylesheet" href="asset/css/style.css">
    </head>

    <body> 
        <section id="header">
            <a href="#"><img src="img/logo.png"  alt="" class="Logo12"></a>

            <div>
                <ul id="navbar">
                    <li><a href="index">Home</a></li>
                    <li><a href="services">Services</a></li>
                    <li><a href="about">About</a></li>
                    <li><a class="active" href="contact" >Contact</a></li>
                    <li><a href="login" class="normal">Login</a></li>
                    
                </ul>
            </div>
        </section>

        <section id="page-header" class="about-header">
            <h2>#let's_talk</h2>
             <p>LEAVE A MESSAGE, We love to hear from you! </p>
        </section>

        <section id="contact-details" class="section-p1"> 
            <div class="details">
                <span>GET IN TOUCH</span>
                <h2>Visit one of our agency location or contact us today</h2>
                <h3>Head Office</h3>
                <div>
                    <li>
                        <i class="fal fa-map"></i>
                        <p>Jl. Raya, RT.4/RW.1, Meruya Sel, Jakarta</p>
                    </li>
                    <li>
                        <i class="fal fa-envelope"></i>
                        <p>admim@tifas.com</p>
                    </li>
                    <li>
                        <i class="fal fa-phone-alt"></i>
                        <p>+62 626 3737 3888</p>
                    </li>
                    <li>
                        <i class="fal fa-clock"></i>
                        <p>Monday to Saturday: 08.00 to 16.00</p>
                    </li>
                </div>
            </div>
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63462.579851268725!2d106.70358867910157!3d-6.209365700000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f71f5a41c197%3A0x628259f9e8d6d7b4!2sUniversitas%20Mercu%20Buana!5e0!3m2!1sid!2sid!4v1648998566615!5m2!1sid!2sid" 
                width="600"height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
                </iframe>
    
            </div>
        </section>

        <section id="form-details">
            <form action="">
                <span>LEAVE A MESSAGE</span>
                <h2>love to hear from you</h2>
                <input type="text" placeholder="Email">
                <input type="text" placeholder="First Name">
                <input type="text" placeholder="Last Name">
                <textarea name="" id="" cols="30" rows="10" placeholder="Your Message"></textarea>
                <button class="normal">Submit</button>
            </form>
    
            <div class="people">
                <div>
                    <img src="img/people/1.png" alt="">
                    <p><span>Ipung Dwi Ari Saputra</span> Chief Executive Officer <br> Phone: +62 888 1238 2242 <br>Email: ipung@sipalingkenceng.com</p>
                </div>
                <div>
                    <img src="img/people/2.png" alt="">
                    <p><span>Zulfah</span> Chief Operation Officer <br> Phone: +62 888 2394 3948 <br>Email: zulfah@sipalingkenceng.com</p>
                </div>
                <div>
                    <img src="img/people/3.png" alt="">
                    <p><span>Sonny Aditya Imawan</span> Chief Financial Officer <br> Phone: +62 834 4533 1313 <br>Email: sonny@sipalingkenceng.com</p>
                </div>
                <div>
                    <img src="img/people/4.png" alt="">
                    <p><span>Maulana Alfatih</span> Chief Technical Officer <br> Phone: +62 321 4434 1342 <br>Email: alfatih@sipalingkenceng.com</p>
                </div>
            </div>
    
        </section>
    

        <section id="newsletter" class="section-p1 section-m1">
            <div class="newstext">
                <h4>#AdaKamiSemuaSampai</h2>
            </div>
            <div class="form">
                
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
                <img src="img/pay/pay.png" alt="">
            </div>

            <div class="copyright">
                <p> 2022, ©TIFA's </p>
            </div>
        </footer>
                    
            
        <script src="sricpt.js"></script>
    </body>
</html>
