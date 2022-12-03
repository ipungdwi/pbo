<%-- 
    Document   : buat_akun
    Created on : Oct 3, 2022, 4:53:54 PM
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
    <div class="login-form">
        <img class="img" src="img/Logo PBO5.png" alt="">
        <!-- <h1>Login</h1> -->
        <div class="card">
            <form action="buatakun" method="post">
                <p>User Name</p>
                <input type="text" name="username" id="username" placeholder="User Name">
                <p>Nama Asli</p>
                <input type="text" name="namaAsli" id="namaAsli" placeholder="Nama Asli">
                <p>Alamat</p>
                <input type="text" name="alamat" id="alamat" placeholder="Alamat">
                <p>Nomor HP</p>
                <input type="text" name="noHp" id="no_hp" placeholder="+62870***">
                <p>Password</p>
                <input type="password" name="password" id="password" placeholder="password">
                <button type="submit">Buat Akun</button></a>
                <a href="login">Kembali</a>
            </form>
        </div>
    </div>
    
</body>
</html>
