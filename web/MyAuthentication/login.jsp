<%-- 
    Document   : login
    Created on : Oct 3, 2022, 4:40:29 PM
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
<body >
    <a href="loginadmin" class="right">Login to Dashboard Admin</a>
    <a href="loginkurir" class="right">Login to Dashboard Kurir</a>
    <!-- <img class="img" src="./trukargo.jpg" alt=""> -->
    <div class="login-form">
        <img class="img" src="img/Logo PBO5.png" alt="">
        <!-- <h1>Login</h1> -->
        <div class="card">
            <form action="login" method="post">
                <p>User Name</p>
                <input type="text" name="username" placeholder="User Name">
                <p>Password</p>
                <input type="password" name="password" placeholder="password">
                <button type="submit">Login</button>
                <div class="tambahan">
                    <a href="buatakun">Buat Akun</a>
                    &nbsp;
                    <a>|</a>
                    &nbsp;
                    <a href="forgotpassword">Forgot Password</a><br>
                </div>
                    <a href="index">Home</a>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>
