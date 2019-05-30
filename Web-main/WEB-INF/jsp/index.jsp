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
    <meta name="robots" content="index,follow">
    <title>Авиабилеты онлайн - Глобал - Авиакомпания Республики Беларусь</title>
    <meta name="description"
        content="Авиакомпания Глобал предлагает купить билеты на самолет по различным направлениям. Авиабилеты онлайн у нас! " />
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
                    <label onclick='location.href="home.html"'>Войти</label>
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
            <div class="content__logo-i">
                <div> <img class="content__back-i col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12" src="src/fly.png"
                        alt="">
                    <div class=" col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                        <div class="content__text-i col-12 col-sm-12 col-md-12 col-lg-5 col-lx-5">
                            <h1>«Глобал»</h1>
                            <h3>Наша авиакомпания седелает ваш полет безопастным и удобным</h3>
                            <button class="content__more-i" onclick='location.href="./about.html"'>Подробнее</button>
                        </div>

                        <form class="content__form-main col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6" action="main.html"
                            method="get">
                            <div class="content__direction-i col-12 col-sm-12 col-md-12 col-lg-6 col-lx-6">
                                <input class="content__direction-one-i" name="direction" type="radio" value="1"
                                    checked>В
                                одну
                                сторону
                                <input class="content__direction-two-i" name="direction" type="radio"
                                    value="2">Туда-обратно
                            </div>
                            <div class="content__from-i col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                                <label class="content__label-i" for="from">Откуда</label>
                                <br>
                                <select class=" col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2" id="from" name="from">
                                    <c:if test="${not empty flightsFrom}">
                                        <c:forEach var="ob" items="${flightsFrom}">
                                            <option value="${ob}">${ob}</option>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                            <div class="content__to-i col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                                <label class="content__label-i" for="to">Куда</label>
                                <br>
                                <select class="col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2" id="to" name="to">
                                    <c:if test="${not empty flightsTo}">
                                        <c:forEach var="ob" items="${flightsTo}">
                                            <option value="${ob}">${ob}</option>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                            <div class="content__data-from-i col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                                <label class="content__label-i" for="data-from">Дата туда</label>
                                <br>
                                <input type="date" class=" col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2" name="date-from"
                                    id="date-from" value="2019-03-20">
                            </div>
                            <div class="content__data_to-i col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                                <label class="content__label-i" for="data-to">Дата обратно</label>
                                <br>
                                <input type="date" class=" col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2" name="date-to"
                                    id="date-to" value="2019-03-21">
                            </div>
                            <div class="content__type-i col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                                <label class="content__label-i" for="type">Тип места</label>
                                <br>
                                <select class=" col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2" id="type" name="type">
                                    <option value="1">эконом</option>
                                    <option value="2">бизнес</option>
                                </select>
                            </div>
                            <div class="content__old-i col-6 col-sm-6 col-md-3 col-lg-1 col-lx-1">
                                <label class="content__label-i  content__old-label-i" class="content__old-label"
                                    for="old">Взрослых</label>
                                <br>
                                <select class=" col-5 col-sm-5 col-md-2 col-lg-1 col-lx-1" id="old" name="old">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </div>
                            <div class="content__child-i col-6 col-sm-6 col-md-3 col-lg-1 col-lx-1">
                                <label class="content__label-i" for="child">Детей</label>
                                <br>
                                <select class="content__child-select-i col-5 col-sm-5 col-md-2 col-lg-1 col-lx-1"
                                    id="child" name="child">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                            <button type="submit"
                                class="content__button-main col-10 col-sm-10 col-md-10 col-lg-2 col-lx-2">Поиск билетов
                            </button>
                        </form>
                    </div>

                </div>
            </div>

            <div class="content__information-items  col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                    <p>
                            На сайте global.com вы можете купить авиабилеты из Москвы, Минска, Киева по выгодной цене. Также
                            для людей, не желающих покупать билеты онлайн, доступно бронирование авиабилета с последующим
                            выкупом в аэропорту. У нас вы можете просмотреть расписание авиарейсов на 2019 год, которое
                            обновляется ежедневно. На странице «Расписание» доступно расписание прямых авиарейсов.
                            </p><p>Многие пассажиры путешествуют и перемещаются на самолетах с детьми. Если вы попадаете в эту
                            категорию людей, то на сайте «global.com» можно купить авиабилеты для детей. Для самых маленьких
                            пассажиров мы предоставим на борту люльку, которая крепится на стенку перед вашим сидением.
                            </p><p>На сайте доступна покупка авиабилетов бизнес-класса. Бизнес-класс предоставит путешественнику
                            ряд преимуществ, начиная с отдельной стойки регистрации, отдельного зала ожидания повышенной
                            комфортности до приоритетной посадки, расширенного меню и большего личного пространства вокруг
                            сидения.
                            </p><p>Каждый месяц на сайте “global.com” проводятся акции и специальные предложения для выгодного
                            приобретения билетов на привлекательной цене.
                            </p><p>Мы будем рады видеть Вас нашим клиентом! Приятной покупки!
    
                        </p>
                <div class="content__information-item  col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                  
                    <img class="content__information-logo " src="src/item-1.png" alt="">
                    <span class="col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2">Каждый веб-разработчик знает, что такое
                        текст-«рыба». Текст этот, несмотря на название, не
                        имеет никакого отношения к обитателям водоемов. </span>
                </div>
                <div class="content__information-item  col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                    <img class="content__information-logo " src="src/item-2.png" alt="">
                    <span class="col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2">Каждый веб-разработчик знает, что такое
                        текст-«рыба». Текст этот, несмотря на название, не
                        имеет никакого отношения к обитателям водоемов. </span>
                </div>
                <div class="content__information-item  col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                    <img class="content__information-logo " src="src/item-3.png" alt="">
                    <span class="col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2">Каждый веб-разработчик знает, что такое
                        текст-«рыба». Текст этот, несмотря на название, не
                        имеет никакого отношения к обитателям водоемов. </span>
                </div>
                <div class="content__information-item  col-12 col-sm-12 col-md-6 col-lg-3 col-lx-3">
                    <img class="content__information-logo " src="src/item-4.png" alt="">
                    <span class="col-11 col-sm-11 col-md-5 col-lg-2 col-lx-2">Каждый веб-разработчик знает, что такое
                        текст-«рыба». Текст этот, несмотря на название, не
                        имеет никакого отношения к обитателям водоемов. </span>
                </div>
            </div>

            <div class="content__callcenter  col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12 ">
                <div class="content__callcenter-photos col-12 col-sm-12 col-md-12 col-lg-5 col-lx-5">
                    <img class="content__callcenter-photo sm-not-display col-lg-2 col-lx-2" src="src/call.jpg" alt="">
                </div>
                <div class="content__callcenter-texts col-12 col-sm-12 col-md-12 col-lg-7 col-lx-7">
                    <h4 class="content__callcenter-time">Работаем 24/7</h4>

                    <h3 class="content__callcenter-text col-11 col-sm-11 col-md-11 col-lg-5 col-lx-5">Если у вас
                        возникли какие-то вопросы, мы всегда готовы ответить на них.</h3>

                    <h1 class="content__callcenter-number col-11 col-sm-11 col-md-11 col-lg-5 col-lx-5 ">+375 (55)
                        555-55-55</h1>

                    <button class="content__call">Связаться с нами</button>
                </div>
            </div>

            <div class="content__last-news">
                <h1 class="content__last-news__h">Последние новости компании</h1>
                <div class="content__last-new col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                    <img src="${news[0].image}" alt=""
                        class="content__last-photo-news col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                    <div class="content__last-news-name col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                        <h2>${news[0].name}</h2>
                    </div>
                    <span class="content__last-news-text col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                        ${news[0].text}
                    </span>
                </div>
                <div class="content__last-new col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                    <img src="${news[1].image}" alt=""
                        class="content__last-photo-news col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                    <div class="content__last-news-name col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                        <h2>${news[1].name}</h2>
                    </div>
                    <span class="content__last-news-text col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                        ${news[1].text}
                    </span>
                </div>
                <div class="content__last-new col-12 col-sm-12 col-md-6 col-lg-4 col-lx-4">
                    <img src="${news[2].image}" alt=""
                        class="content__last-photo-news col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                    <div class="content__last-news-name col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                        <h2>${news[2].name}</h2>
                    </div>
                    <span class="content__last-news-text col-11 col-sm-11 col-md-5 col-lg-3 col-lx-3">
                        ${news[2].text}
                    </span>
                </div>
                <div class="content__last-news-buttons col-12 col-sm-12 col-md-12 col-lg-12 col-lx-12">
                    <button class="content__last-news-button " onclick='location.href="news.html"'>Перейти ко всем
                        новостям</button>
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
<script src="js/page.js"></script>

</html>