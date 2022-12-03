<%-- 
    Document   : forgotpassword
    Created on : Oct 3, 2022, 5:22:08 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="asset/css/style.css">
    <style>
        body{
            background-image: url(./woll.jpg);
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
    <div class="login-form">
        <img class="img" src="img/Logo PBO5.png" alt="">
        <!-- <h1>Login</h1> -->
        <div class="card">
            <form action="forgotpassword" method="post">
                <p>Masukkan Username</p>
                <input type="password" name="username" placeholder="Masukkan Password Baru">
                <p>Masukkan Password Baru</p>
                <input type="password" name="password" placeholder="Masukkan Password Baru">
                <p>Ulangi Password</p>
                <input type="password" name="password" placeholder="Ulangi password">
                <button type="submit">Konfirmasi</button>
                <a href="login">Kembali</a>
            </form>
        </div>
    </div>
    
</body>
</html>
