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
    <title>Новости компании - Глобал - Авиакомпания Республики Беларусь</title>
    <meta name="description" content="Новости Глобал"/>
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
                    <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a
                            href="index.html">Главная</a></li>
                    <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a
                            href="timetable.html">Расписание</a></li>
                    <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a
                            href="news.html">Новости</a></li>
                    <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a
                            href="gallary.html">Галерея</a></li>
                    <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a
                            href="about.html">О нас</a></li>
                    <li class="container_header__item col-12 col-sm-12 col-md-12 col-lg-1 col-lx-1"><a
                            href="contact.html">Контакты</a></li>
                </ul>

            </div>
            <div class="container_header__menu__collapse not-display">
                <div class="container_header__logo col-7 col-sm-7 col-md-7 col-lg-3 col-lx-3"><img src="src/logo.png"
                        alt=""></div>
                <div class="header__burger col-4 col-sm-4 col-md-4"><span style="zoom: 150%">&#9776;</span></div>
                <div class="header__burger-close col-4 col-sm-4 col-md-4 not-display"><span
                        style="zoom: 150%">&#10006;</span></div>
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
                <h1 class="content__text col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">Новости компании</h1>
                <h3 class="content__text__sm col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">Всё самое интересное и
                    важное</h3>

            </div>
            <div class="content__all-news">
                <p>
                        В данном разделе публикуются свежие новости авиакомпании «Глобал». Вы можете узнать самую актуальную и полную информацию о последних событиях в мире авиаперелетов. Мы ежедневно размещаем информацию, посвященную маршрутам, мероприятиям, акциям и специальным предложениям, как Беларуси, так и других стран.
                </p>
                <div class="content__news col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                    <img src="${objects[0].image}" alt=""
                        class="content__photo-news col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                    <div class="content__news-name col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                        <h2>${objects[0].name}</h2>
                    </div>
                    <div class="content__news-text col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                        ${objects[0].text}
                    </div>
                </div>
                <c:if test="${not empty objects[1]}">
                    <div class="content__news col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                        <img src="${objects[1].image}" alt=""
                            class="content__photo-news col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                        <div class="content__news-name col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                            <h2>${objects[1].name}</h2>
                        </div>
                        <div class="content__news-text col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                            ${objects[1].text}
                        </div>
                    </div>
                </c:if>
                <c:if test="${not empty objects[2]}">
                    <div class="content__news col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                        <img src="${objects[2].image}" alt=""
                            class="content__photo-news col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                        <div class="content__news-name col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                            <h2>${objects[2].name}</h2>
                        </div>
                        <div class="content__news-text col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                            ${objects[2].text}
                        </div>
                    </div>
                </c:if>

                <div class="content__paggination col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                    <ul class="pag">
                    <c:if test="${allId > 3}">
                        <c:if test="${page eq 1}">
                            <li><a  class="disabled" href=''><<</a></li>
                        </c:if>
                        <c:if test="${page != 1}">
                            <li><a href='news.html?page=${page-1}'><<</a></li>
                        </c:if>
                    </c:if>
                    <c:if test="${allId!=0}">
                        <c:set var="i" value="1" />
                        <c:forEach var="id" begin="0" end="${allId-1}" step="3">
                            <c:choose>
                                <c:when test="${i eq page}">
                                        <li class="pagAct"> <a  href='news.html?page=${i}'>${i}</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li> <a href='news.html?page=${i}'>${i}</a></li>
                                </c:otherwise>
                            </c:choose>
                            <c:set var="i" value="${i+1}" />
                        </c:forEach>
                    </c:if>
                    <c:if test="${allId > 3}">
                        <c:if test="${page eq endP}">
                            <li ><a  class="disabled" href=''>>></a></li>
                        </c:if>
                        <c:if test="${page != endP}">
                            <li><a href='news.html?page=${page+1}'>>></a></li>
                        </c:if>
                    </c:if>
                </ul>
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