<%-- 
    Document   : index
    Created on : Apr 14, 2023, 12:22:52 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <img src="https://euluxury.vn/data/product/small/XOR_Classic.png" alt="logo">
        <div class="header-title">Điện thoại tốt</div>
        <a href="${pageContext.request.contextPath}/login" class="buttonSignIn">Đăng nhập</a>  
    </header>
    <div class="banner">
        <img src="https://au2-images.shop.samsung.com/medias/Banner-2000x600-3E-1-.jpg?context=bWFzdGVyfGltYWdlc3w1Nzg5NDd8aW1hZ2UvanBlZ3xpbWFnZXMvaDMzL2hlNS85MjUxODM4ODUzMTUwLmpwZ3wzNGI5ZmYxZjU3ZWViMjIzNDg5YzI1NTM5MzkyOGRmYzQ3MzFmOGJkODk1YWE5OWM5MDJkOTRmOTQ1MDg3NTA1" alt="banner">
    </div>
    <main>
        <div class="silde-bar">
            <div class="silde-bar_title">Danh mục</div>
            <nav>
                <ul>
                    <li>Toàn bộ điện thoại</li>
                    <li>Sam sung</li>
                    <li>Apple</li>
                    <li>Nokia</li>
                    <li>Huawei</li>
                    <li>Redmi</li>
                    <li>Oppo</li>
                    <li>Realme</li>
                </ul>
            </nav>
        </div>
        <div class="list-phone">
            <div class="list-phone_title">Danh sách sản phẩm</div>
            <div class="list-phone_container"></div>
        </div>
    </main>
</body>
<style>
@import url('https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap');

*{
    margin:0;
    padding: 0;
}
header{
    position: relative;
    background-color: rgb(255, 252, 248);
    height: 70px;
    width: 100%;
    display: flex;
    align-items: center;
}
header img{
    width: 60px;
    height: 60px;
    margin-left: 30px;
}

header .header-title{
    font-size: 1.8rem;
    margin-left: 10px;
    text-transform: uppercase;
    font-family: 'Josefin Sans', sans-serif;
}

.banner{
    height: 250px;
}

.banner img{
    width: 100%;
    height:100%;
}

.silde-bar{
    width: 250px;
    background-color:rgb(255, 252, 248);
}

.silde-bar_title{
    font-size: 1.3rem;
    font-weight: bold;
    width: 100%;
    height: 50px;
    background-color: rgb(159, 252, 252);
    line-height: 50px;
    text-align: center;
}
.silde-bar nav{
    border-left: 5px solid  rgb(159, 252, 252);
    border-right: 5px solid  rgb(159, 252, 252);
}

.silde-bar nav ul li{
    width: 250px;
    font-size: 1.1rem;
    font-weight: bold;
    border-bottom: 5px solid  rgb(159, 252, 252);
    width: 100%;
    height: 50px;
    line-height: 50px;
    text-align: center;
    cursor: pointer;
}
.silde-bar nav ul li:last-child{
    border-bottom: none;
}

.list-phone{
    background-color: rgb(255, 252, 248);
}

.buttonSignIn{
    position: absolute;
    text-decoration: none;
    font-size: 1.2rem;
    right: 30px;
    padding: 10px 20px;
    border-radius: 20px;
    background-color: cornflowerblue;
    font-family: 'Josefin Sans', sans-serif;
    color: white;
}
</style>
</html>