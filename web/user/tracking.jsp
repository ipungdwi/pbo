<%-- 
    Document   : tracking
    Created on : Oct 3, 2022, 9:29:47 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tracking</title>
    <link rel="stylesheet" type="text/css" href="asset/css/resi.css">
    <style>
        body{
            background-image: url(img/woll.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            height: 100%;
        }
        .title{
            text-align: center;
            font-size: 2.5em;
            color: #000;
        }
    </style>
</head>
<body>
    <!-- <img class="img" src="./trukargo.jpg" alt=""> -->
    <div class="login-form1">
        <img class="img" src="img/Logo PBO5.png" alt="">
        <!-- <h1>Login</h1> -->
        <div class="kartu">
            <form action="#" method="post">
                <p>Maukkan Nomor Resi</p>
                <input type="text" name="user" placeholder="No Resi">
                <a href="#popup" class="btnt">Tracking</a><br><br><br>
                <a href="dashboarduser" class="a">Back to dashboard</a>
            </form>
        </div>
    </div>

    <div class="popup" id="popup">
       <div class="popup_content">
        <table border="1" cellpadding="10">
            <a href="#" class="popup_close">&times</a>
            <tr>
                <th colspan="3">Informasi Pengiriman</th>
            </tr>
            <tr>
                <td>Expedisi</td>
                <td>Si Paling Kenceng</td>
            </tr>
            <tr>
                <td>Jenis Layanan</td>
                <td>Reguler</td>
            </tr>
            <tr>
                <td>Tgl Pengiriman</td>
                <td>01-10-1010</td>
            </tr>
            <tr>
                <td>Pengirim</td>
                <td>Ten Ten</td>
            </tr>
            <tr>
                <td>Penerima</td>
                <td>Lukman</td>
            </tr>
        </table>

        <hr>

        <table>
            <tr>
                <td>01-01-10 10.10 | </td>
                <td>pengirim telah mengatur pengiriman</td>
            </tr>
            <tr>
                <td>01-01-10 11.00 | </td>
                <td>Paket Telah diserahkan kepada kurir</td>
            </tr>
            <tr>
                <td>01-01-10 12.10 | </td>
                <td>paket dalam proses pengiriman</td>
            </tr>
            <tr>
                <td>01-01-10 01.30 | </td>
                <td>paket telah dikirim HUB JAKARTA</td>
            </tr>
            <tr>
                <td>01-01-10 01.59 | </td>
                <td>Paket Telah Sampai di gudang JAKARTA</td>
            </tr>
            <tr>
                <td>01-01-10 02.45 | </td>
                <td>Paket sedang di bawa kurir menuju ke lokasimu</td>
            </tr>
            <tr>
                <td>01-01-10 04.45 | </td>
                <td>Paket telah diterima LUKMAN Yang bersangkutan</td>
            </tr>
        </table>
       </div>
    </div>
</body>
</html>