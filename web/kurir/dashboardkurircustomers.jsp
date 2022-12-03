<%-- 
    Document   : dashboardkurircustomers
    Created on : Oct 4, 2022, 12:09:36 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>SiPalingKenceng | Dashboard Kurir</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">

    

    

<link href="asset/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .container{
    height: 400px;
    overflow: scroll;
}
    </style>

    
    <!-- Custom styles for this template -->
    <link href="asset/css/dashboard.css" rel="stylesheet">
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">KURIR</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="#">Sign out</a>
    </div>
  </div>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="dashboardkurircustomer">
              <span data-feather="users" class="align-text-bottom"></span>
              Customers
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="dashboardkurirtracking">
              <span data-feather="file" class="align-text-bottom"></span>
              Tracking
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">CUSTOMERS</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar" class="align-text-bottom"></span>
            This week
          </button>
        </div>
      </div>
      <div>
        <h2>Daftar Customers</h2>
          <div class="table1">
                  <table>
                      <thead>
                          <tr>
                              <th>No</th>
                              <th>Nama Pengirim</th>
                              <th>Nama Penerima</th>
                              <th>Jenis Servis</th>
                              <th></th>
                          </tr>
                      </thead>
  
                      <tbody>
                          <tr>
                              <td>1</td>
                              <td>Ten Ten</td>
                              <td>Lukman</td>
                              <td>Express</td>
                              <td><a href="#popup">View More</a></td>
                          </tr>
                          <tr>
                            <td>2</td>
                            <td>Wahyu</td>
                            <td>Fauzab</td>
                            <td>Reguler</td>
                            <td><a href="#popup">View More</a></td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>Nur</td>
                          <td>Cahaya</td>
                          <td>Hemat</td>
                          <td><a href="#popup">View More</a></td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>Ady</td>
                        <td>Guys</td>
                        <td>COD</td>
                        <td><a href="#popup">View More</a></td>
                    </tr>
                      </tbody>
                  </table>
           </div>
        </div>

        <div class="popup" id="popup">
          <div class="popup_content">
           <table class="table1" border="1" cellpadding="10">
               <a href="#" class="popup_close">&times</a>
               <tr>
                <th></th>
                   <th>Pengirim</th>
                   <th>Penerima</th>
               </tr>
               <tr>
                   <td>Nama</td>
                   <td>Ten Ten</td>
                   <td>Lukman</td>
               </tr>
               <tr>
                   <td>Alamat</td>
                   <td>Jakarta Barat</td>
                   <td>Tangerang</td>
               </tr>
               <tr>
                   <td>No Telephone</td>
                   <td>0987654321</td>
                   <td>0123456789</td>
               </tr>
               <tr>
                   <td>Kode Pos</td>
                   <td>0012</td>
                   <td>3008</td>
               </tr>
               <tr>
                   <td>No Resi</td>
                   <td>123456789</td>
               </tr>
              </table>

    </main>
  </div>
</div>


    <script src="asset/dist/js/bootstrap.bundle.min.js"></script>

      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="asset/css/dashboard.js"></script>
  </body>
</html>
