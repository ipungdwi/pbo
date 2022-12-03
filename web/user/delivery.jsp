<%-- 
    Document   : delivery
    Created on : Oct 3, 2022, 9:26:31 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width", initial-scale="1.0">
        <title>SiPalingKenceng | Delivery</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <link rel="stylesheet" href="asset/css/style.css">
        <link rel="stylesheet" href="asset/css/form.css">
    </head>

    <body>
        <section id="header">
            <div>
                <img src="img/people/user.png" alt="" class="logo20">
                <p><span>IPUNG DWI ARI SAPUTRA</span></p>
            </div>
            <div>
                <ul id="navbar">
                    <li><a href="dashboarduser">Home</a></li>
                    <li><a class="active" href="delivery">Delivery</a></li>
                    <li><a href="tracking">Tracking</a></li>
                    <li><a href="contactuser" >Contact</a></li>
                    <li><a href="index" class="normal">Logout</a></li>
                    <img src="img/logo.png"  alt="" class="Logo12">
                </ul>
            </div>
        </section>

        <section id="page-header" class="blog-header">
            
        </section>

        <section class="center">
        <div class="container5">
            <div class="title">Registration</div>
            <div class="content">
              <form action="delivery" method="post">
                <div class="user-details">
                  <div class="input-box">
                    <span class="details">Nama Pengirim</span>
                    <input type="text" name="txtNamaPengirim">
                  </div>
                  <div class="input-box">
                    <span class="details">Nama Penerima</span>
                    <input type="text" name="txtNamaPenerima">
                  </div>
                  <div class="input-box">
                    <span class="details">Alamat Pengirim</span>
                    <input type="text" name="txtAlamatPengirim">
                  </div>
                  <div class="input-box">
                    <span class="details">Alamat Penerima</span>
                    <input type="text" name="txtAlamatPenerima">
                  </div>
                  <div class="input-box">
                    <span class="details">No Telephone</span>
                    <input type="text" name="txtNoTelephonePengirim">
                  </div>
                  <div class="input-box">
                    <span class="details">No Telephone</span>
                    <input type="text" name="txtNoTelephonePenerima">
                  </div>
                  <div class="input-box">
                    <span class="details">Kode Pos</span>
                    <input type="text" name="txtKodePosPengirim">
                  </div>
                  <div class="input-box">
                    <span class="details">Kode Pos</span>
                    <input type="text" name="txtKodePosPenerima">
                  </div>
                </div>
        
                  <div class="Detail-Barang">
                      <div class="input-Barang">
                        <hr>
                        <h1>Info Barang</h1>
                        <input class="field" placeholder="Plastik, warna hijau,..." type="text" name="txtInfoBarang">
                        <p></p>
                      </div>
        
                      <div class="input-Barang">
                        <div class="with_appended_unit2">
                            <p></p>
                          <input type="text" name="txtKg">
                          <span>Kg</span>
                      </div>
                      </div>
                  
              </div>
                    
        
                <div class="input_field">
                  <label>Servis</label>
                  <div class="custom_select">
                      <select name="txtServis">                         
                          <option value="Reguler">Reguler</option>
                          <option value="Express">Express</option>
                          <option value="Hemat">Hemat</option>
                          <option value="COD">COD</option>
                      </select>
                  </div> 
                  <h2>Total Biaya</h2>
                  <div class="input_with_appended_unit2">
                    <span>Rp</span>
                    <input type="text" name="txtTotalBiaya">
                    
                </div>
                  
                </div>
                <div class="button">
                  <input type="submit" onclick="myFunction()">
                </div>
              </form>
            </div>
          </div>
          </section>
        <section id="banners" class="section-m1"></section>
        
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

            <div class="col">
                <h4>My Account</h4>
                <a href="#">Sign in</a>
                <a href="#">View Cart</a>
                <a href="#">My Wishlist</a>
                <a href="#">Track My Order</a>
                <a href="#">Help</a>
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
                    
            
        <script>
function myFunction() {
  alert("BERHASIL");
}
</script>
    </body>
</html>