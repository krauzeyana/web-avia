<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>


<%@page import="pckg.*"%>
<%@page import="java.util.Collection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>


<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style-one.css">
    <meta name="robots" content="index,nofollow">
    <title>Контакты - Глобал - Авиакомпания Республики Беларусь</title>
    <meta name="description"
        content="Контакты Авиакомпании «Глобал»" />

</head>

<body>
    <div class="container col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
            <div class="container_header col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                    <!--<input class="container_header__menu nav-burger__checkbox" type="checkbox" id="burger">
                    <label class="container_header__menu nav-burger" for="burger">Меню</label>-->
                    <nav class="container_header__panel nav col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
        
                        <div
                            class="container_header__adress nav__item col-2 col-sm-2 col-md-2 col-lg-3 col-lx-3 sm-not-display">
                            <img class="container_header__logo-adress" src="src/addres.png" alt="">
                            <label>пр-т Фрунзе, 29, Витебск, РБ</label>
                        </div>
                        <div class="container_header__phone nav__item col-2 col-sm-2 col-md-3 col-lg-2 col-lx-2 md-not-display">
                            <img class="container_header__logo-phone" src="src/phone.png" alt="">
                            <label>1-800-1234-567</label>
                        </div>
                        <div class="container_header__mail nav__item col-2 col-sm-2 col-md-2 col-lg-2 col-lx-2 sm-not-display">
                            <img class="container_header__logo-mail" src="src/mail.png" alt="">
                            <label>info@demolink.org</label>
                        </div>
                        <div class="container_header__language nav__item col-3 col-sm-3 col-md-2 col-lg-1 col-lx-1">
                            <a href="" class="container_header__language__choose">Рус</a>
                            <a href="">Eng</a>
                        </div>
                        <div class="container_header__link col-6 nav__item col-sm-6 col-md-5 col-lg-2 col-lx-2">
                            <img class="container_header__vk" src="src/vk.png" alt="">
                            <img class="container_header__facebook" src="src/facebook.png" alt="">
                            <img class="container_header__twitter" src="src/twitter.png" alt="">
                        </div>
                        <div class="container_header__autorisation nav__item col-3 col-sm-3 col-md-2 col-lg-2 col-lx-2">
                            <img class="container_header__logo-autorisation" src="src/auto.png" alt="">
                            <label>Войти</label>
                        </div>
                    </nav>
                    <div class="container_header__menu col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                        <img class="container_header__logo col-12 col-sm-12 col-md-12 col-lg-3 col-lx-3" src="src/logo.png"
                            alt="">
                        <ul class="container_header__menu-items col-12 col-sm-12 col-md-12 col-lg-7 col-lx-7">
                            <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a href="index.html">Главная</a></li>
                            <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a href="timetable.html">Расписание</a></li>
                            <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a href="news.html">Новости</a></li>
                            <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a href="gallary.html">Галерея</a></li>
                            <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1" ><a href="about.html">О нас</a></li>
                            <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a href="contact.html">Контакты</a></li>
                        </ul>
        
                    </div>
                    <div class="container_header__menu__collapse not-display">
                        <div class="container_header__logo col-7 col-sm-7 col-md-7 col-lg-3 col-lx-3"><img src="src/logo.png"
                                alt=""></div>
                        <div class="header__burger col-4 col-sm-4 col-md-4"><span style="zoom: 150%">&#9776;</span></div>
                        <div class="header__burger-close col-4 col-sm-4 col-md-4 not-display"><span style="zoom: 150%">&#10006;</span></div>
                        <nav class="header__menu-list col-12 col-sm-12 col-md-12 not-display">
                            <a class="header__menu-item col-12 col-sm-12 col-md-12" href="index.html">Главная</a>
                            <a class="header__menu-item col-12 col-sm-12 col-md-12" href="timetable.html">Расписание</a>
                            <a class="header__menu-item col-12 col-sm-12 col-md-12" href="news.html">Новости</a>
                            <a class="header__menu-item col-12 col-sm-12 col-md-12" href="gallary.html">Галерея</a>
                            <a class="header__menu-item col-12 col-sm-12 col-md-12" href="about.html">О нас</a>
                            <a class="header__menu-item col-12 col-sm-12 col-md-12" href="contact.html">Контакты</a>
                        </nav>
                    </div>
                </div>
        <div class="container_content">
            <div class="content__logo">
                <img class="content__back col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12" src="src/fly.png" alt="">
                <h1 class="content__text col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">Контакты</h1>
                <h3  class="content__text__sm col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">Вы всегда можете связаться с нами или посетить</h3>
      
            </div>
            <div>
                <div class="content__contact col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">

                    <div class="content__phone  col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                        <h3>Телефоны</h3>
                        <img class="content__logo-phone" src="src/phone-dk.png" alt="">
                        <label>1-800-1234-567</label>
                    </div>
                    <div class="content__mail  col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6 ">
                        <h3>E-mail</h3>
                        <img class="content__logo-mail" src="src/mail-dk.png" alt="">
                        <label>info@demolink.org</label>
                    </div>
                    <div class="content__addres col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6 ">
                        <h3>Адрес</h3>
                        <img class="content__addres-photo" src="src/addres-dk.png" alt="">
                        <label>пр-т Фрунзе, 29, Витебск, РБ</label>
                    </div>
                    <div class="content__time col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6 ">
                        <h3>Часы работы</h3>
                        <label>Пн-Пт 8:00-18:00 <br>
                            Сб 10:00-16:00
                            <br>
                            Вс выходной
                            <br>
                        </label>
                        <br>
                    </div>
                    <div class="content__link col-6  col-sm-6 col-md-5 col-lg-2 col-lx-2">
                        <img class="content__vk" src="src/vk-dk.png" alt="">
                        <img class="content__facebook" src="src/facebook-dk.png" alt="">
                        <img class="content__twitter" src="src/twitter-dk.png" alt="">
                    </div>
                </div>
                <div class="content__map col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2277.457018394384!2d30.21945401537176!3d55.19276704251233!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46c57156868694ab%3A0x3f7f49736cae15ce!2z0L_RgNC-0YHQv9C10LrRgiDQpNGA0YPQvdC30LUgMjksINCS0LjRgtC10LHRgdC6IDIxMDAyMw!5e0!3m2!1sru!2sby!4v1554385516600!5m2!1sru!2sby"
                        class="col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    
                </div>
            </div>
        </div>
        <div class="container_footer col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
            <div class="footer__contacts col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                <span class="footer__label col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4 ">Контакты</span>
                <div class="footer__adress col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4 ">
                    <img class="footer__logo-adress" src="src/addres-dk.png" alt="">
                    <label>пр-т Фрунзе, 29, Витебск, РБ</label>
                </div>
                <div class="footer__phone col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                    <img class="footer__logo-phone" src="src/phone-dk.png" alt="">
                    <label>1-800-1234-567</label>
                </div>
                <div class="footer__mail col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4 ">
                    <img class="footer__logo-mail" src="src/mail-dk.png" alt="">
                    <label>info@demolink.org</label>
                </div>
                <div class="footer__link col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                    <img class="footer__vk" src="src/vk-dk.png" alt="">
                    <img class="footer__facebook" src="src/facebook-dk.png" alt="">
                    <img class="footer__twitter" src="src/twitter-dk.png" alt="">
                </div>
            </div>
            <div class="footer__subscribe col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                <span class="footer__label col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4 ">Подписка</span>

                <span class="footer__text col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4 ">
                    Подпишись на рассылку новостей <br> и вы всегда будете в курсе событий
                </span>
                <form class="footer__form col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4 " action="">
                    <input class="footer__input col-7 col-sm-5 col-md-4 col-lg-3 col-lx-3 " type="mail"
                        placeholder="Введите адрес электронной почты">
                    <br>
                    <button class="footer__button col-3 col-sm-2 col-md-2 col-lg-1 col-lx-1 ">Подписаться</button>
                </form>
                <a class="footer__link col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4" href="sitemap.html">Карта сайта</a>
  
            </div>
            <div class="footer__photos col-12 col-sm-12 col-md-12 col-lg-4 col-lx-4">
                <span class="footer__label col-12 col-sm-12 col-md-12 col-lg-4 col-lx-4 ">Галерея</span>
                <div class=" footer__part-photo  col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                    <img class=" col-3 col-sm-3 col-md-1 col-lg-1 col-lx-1 footer__plane" src="${photos[0].path}"
                        alt="">
                    <img class=" col-3 col-sm-3 col-md-1 col-lg-1 col-lx-1 footer__plane" src="${photos[1].path}"
                        alt="">
                    <img class=" col-3 col-sm-3 col-md-1 col-lg-1 col-lx-1 footer__plane" src="${photos[2].path}"
                        alt="">
                </div>
                <div class="footer__part-photo col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                    <img class=" col-3 col-sm-3 col-md-1 col-lg-1 col-lx-1 footer__plane" src="${photos[3].path}"
                        alt="">
                    <img class=" col-3 col-sm-3 col-md-1 col-lg-1 col-lx-1 footer__plane" src="${photos[4].path}"
                        alt="">
                    <img class=" col-3 col-sm-3 col-md-1 col-lg-1 col-lx-1 footer__plane" src="${photos[5].path}"
                        alt="">
                </div>
            </div>
        </div>
    </div>
</body>
<script src="js\page.js"></script>

</html>