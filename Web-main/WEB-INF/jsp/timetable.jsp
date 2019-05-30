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

    <title>Расписание - Глобал - Авиакомпания Республики Беларусь</title>
    <meta name="description" content="Расписание рейсов авиакомпании Глобал"/>

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
                <h1 class="content__text col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">Расписание рейсов</h1>
                <h3  class="content__text__sm col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">Мы поможем вам выбрать оптимальный вариант</h3>
            </div>
            <div class="content__find-t col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">

                <form class="content__form-t col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12" action="timetable.html" method="post">

                    <div class="content__from-t col-12 col-sm-12 col-md-6 col-lg-5 col-lx-5">
                        <label for="from">Откуда</label>
                        <br>
                        <br>
                        <select class=" col-11 col-sm-11 col-md-5 col-lg-4 col-lx-4" id="from" name="from">
                            <c:if test="${not empty flightsFrom}">
                                <c:forEach var="ob" items="${flightsFrom}">
                                    <c:if test="${not empty from}">
                                        <c:if test="${from eq ob}">
                                                <option selected value="${ob}">${ob}</option>
                                            
                                        </c:if>
                                        <c:if test="${from != ob}">
                                                <option value="${ob}">${ob}</option>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${empty from}">
                            
                                    <option value="${ob}">${ob}</option>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>

                    <div class="content__to-t col-12 col-sm-12 col-md-6 col-lg-5 col-lx-5">
                        <label for="to">Куда</label>
                        <br>
                        <br>
                        <select class="col-11 col-sm-11 col-md-5 col-lg-4 col-lx-4" id="to" name="to">
                            <c:if test="${not empty flightsTo}">
                                <c:forEach var="ob" items="${flightsTo}">
                                        <c:if test="${not empty to}">
                                                <c:if test="${to eq ob}">
                                                        <option selected value="${ob}">${ob}</option>
                                                    
                                                </c:if>
                                                <c:if test="${to != ob}">
                                                        <option value="${ob}">${ob}</option>
                                                </c:if>
                                            </c:if>
                                            <c:if test="${empty to}">
                                    
                                            <option value="${ob}">${ob}</option>
                                            </c:if>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>
                    <br>
                    <br>
                    <button type="submit" class="content__button_find-t col-10 col-sm-10 col-md-2 col-lg-1 col-lx-1">Показать</button>
                </form>


            </div>
            <c:if test="${not empty objects}">
            <div class="content__result-search col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                <table cellspacing="0" cellpadding="10px"
                    class="content__table-t col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                    <tr>
                        <th>Рейс</th>
                        <th>Вылет</th>
                        <th>Прилет</th>
                        <th>Дата</th>
                        <th>Время в пути</th>
                    </tr>
                    <c:set var="i" value="0"></c:set>
                    <c:forEach var="ob" items="${objects}">
                    <tr>
                        <td>${ob.number}</td>
                        <td>${ob.time}</td>
                        <td>${tt[i]}</td>
                        <td>${ob.date}</td>
                        <td>${ob.travel_time}</td>
                    </tr>
                    <c:set var="i" value="${i+1}"></c:set>
                </c:forEach>
                  
                </table>
            </div>
        </c:if>
        <c:if test="${empty objects}">
        <br>
        <h2>Рейсов не найдено</h2>
        </c:if>

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