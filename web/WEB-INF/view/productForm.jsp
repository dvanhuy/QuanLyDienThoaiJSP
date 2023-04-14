<%-- 
    Document   : productForm
    Created on : Apr 14, 2023, 12:32:30 PM
    Author     : ADMIN
--%>

<%@page import="model.TaiKhoan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <header>
        <img src="https://euluxury.vn/data/product/small/XOR_Classic.png" alt="logo">
        <div class="header-title">Điện thoại tốt</div>
        <div href="#" class="nameSignIn">${user.getTenTaiKhoan()} ▼</div>
        <div class="menu_profile menu_profile_hide">
            <ul>
                <%
                    TaiKhoan user = (TaiKhoan) request.getAttribute("user");
                    if (user.getVaiTro().equals("Admin")){
                        out.println("<a href=#><li>Cập nhật điện thoại</li></a>");
                    }
                %>
                <a href="${pageContext.request.contextPath}/login"><li>Đăng xuất</li></a>
            </ul>
        </div>
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
            <div class="list-phone_container">
                <div class="list-phone_item">
                    <div class="list-phone_item-img">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkrdD4b2v1GDaNTFqxbrheLvbUzSTc_35hpg&usqp=CAU" alt="">
                    </div>
                    <div class= "list-phone_item-name">Tên Điện Thoại</div>
                    <div class= "list-phone_item-price">1231431 VNĐ</div>
                </div>
                <div class="list-phone_item">
                    <div class="list-phone_item-img">
                        <img src="https://hc.com.vn/i/ecommerce/media/GS.009283_FEATURE_104531.png" alt="">
                    </div>
                    <div class= "list-phone_item-name">Tên Điện Thoại</div>
                    <div class= "list-phone_item-price">1231431 VNĐ</div>
                </div>
                <div class="list-phone_item">
                    <div class="list-phone_item-img">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkrdD4b2v1GDaNTFqxbrheLvbUzSTc_35hpg&usqp=CAU" alt="">
                    </div>
                    <div class= "list-phone_item-name">Tên Điện Thoại</div>
                    <div class= "list-phone_item-price">1231431 VNĐ</div>
                </div>
                <div class="list-phone_item">
                    <div class="list-phone_item-img">
                        <img src="https://img.global.news.samsung.com/vn/wp-content/uploads/2019/03/Galaxy-A50-Mat-truoc-3.jpg" alt="">
                    </div>
                    <div class= "list-phone_item-name">Tên Điện Thoại</div>
                    <div class= "list-phone_item-price">1231431 VNĐ</div>
                </div>
            </div>
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

main{
    position: relative;
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

.nameSignIn{
    position: absolute;
    font-size: 1.2rem;
    right: 30px;
    padding: 10px 20px;
    border-radius: 20px;
    background-color: cornflowerblue;
    font-family: 'Josefin Sans', sans-serif;
    color: white;
    cursor: pointer;
}

.symbol_down{
    width: 15px;
    height: 15px;
    border-top: 15px solid black;
    position: relative;
}

.menu_profile{
    position: absolute;
    width: 200px;
    right: 30px;
    top:56px;
    background-color: cornflowerblue;
    border-radius: 20px 20px 30px 30px;
}
.menu_profile ul{
    list-style: none;
}
.menu_profile a{
    text-decoration: none;
    font-family: 'Josefin Sans', sans-serif;
    color: white;
}
.menu_profile li{
    border-bottom: 1px solid white;
    padding: 15px 25px;
}

.menu_profile a:last-child li{
    border-bottom: none;
}

.menu_profile_hide{
    height: 0;
    display: none;
    opacity: 0;
}

.list-phone{
    background-color: rgb(255, 252, 248);
    position: absolute;
    right: 0;
    left: 250px;
    top: 0;
}

.list-phone_title{
    font-size: 1.6rem;
    font-family: 'Josefin Sans', sans-serif;
    text-transform: uppercase;
    text-align: center;
    width: 100%;
    background-color: aquamarine;
    height: 50px;
    line-height: 50px;
    overflow: hidden;
}

.list-phone_container{
    width: 100%;
    overflow-x: hidden;
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    padding: 30px;
    box-sizing: border-box;
}

.list-phone_item{
    /* flex-grow: 1; */
    padding-top: 10px;
    flex-shrink: 1;
    flex-basis: 200px;
    overflow: hidden;
    border: 1px solid black;
    border-radius: 30px;
    min-width: 100px;
    font-family: 'Josefin Sans', sans-serif;
    text-align: center;
    cursor: pointer;
}

.list-phone_item-img{
    width: 90%;
    overflow: hidden;
    height: 150px;
}

.list-phone_item-img img{
    width: 100%;
    height: 100%;
}
.list-phone_item-name{
    font-size: 1.3rem;
    margin-top: 20px;
}
.list-phone_item-price{
    margin-top: 10px;
    margin-bottom: 10px;
}
</style>
<script>
    const menuprofile = document.getElementsByClassName("menu_profile")[0]
    const profile = document.getElementsByClassName("nameSignIn")[0]
    profile.addEventListener("click",()=>{
        if (menuprofile.classList.contains("menu_profile_hide"))
            menuprofile.classList.remove("menu_profile_hide")
        else menuprofile.classList.add("menu_profile_hide")
    })
</script>
</html>