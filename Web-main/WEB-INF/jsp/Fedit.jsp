<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>


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

<c:choose>
    <c:when test="${not empty object}">
        <c:set var="number" value="${object.number}" />
        <c:set var="from" value="${object.from}" />
        <c:set var="to" value="${object.to}" />
        <c:set var="date" value="${object.date}" />
        <c:set var="time" value="${object.time}" />
        <c:set var="travel_time" value="${object.travel_time}" />
        <c:set var="count_place" value="${object.count_place}" />
        <c:set var="price" value="${object.price}" />
    </c:when>
    <c:otherwise>
        <c:set var="number" value="" />
        <c:set var="from" value="" />
        <c:set var="to" value="" />
        <c:set var="date" value="" />
        <c:set var="time" value="" />
        <c:set var="travel_time" value="" />
        <c:set var="count_place" value="" />
        <c:set var="price" value="" />
    </c:otherwise>
</c:choose>
<HTML>

    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>Admin</TITLE>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/Style.css">
    </HEAD>
    
    <BODY>
        <script type="text/javascript" src="js/jquery-latest.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #6EA5CF;">
            <a class="navbar-brand" href="#">
                Admin
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
                aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="Autorizate.html">Main<span class="sr-only">(current)</span></a>
                    </li>
                </ul>

      <li>
        <c:choose>
          <c:when test="${not empty user}">
            ${user.login}&nbsp;&mdash; <A href="logout.html">выйти</A>
          </c:when>
          <c:otherwise>
            <A href="login.html">войти</A>
          </c:otherwise>
        </c:choose>

      </li>

            </div>
        </nav>

    <div class=" container-fluid align-items-center">
        <div class="row justify-content-center ">
            <div class="col-12 col-sm-10 col-md-8 col-lg-6">
                <c:set var="page" value="${page}" />
                <form class="form registration" id="form" action="Fsave.html?page=${page}" method="post" onsubmit="return chFlight()">
                    <c:if test="${not empty object}">
                        <INPUT type="hidden" name="free_place" value="${object.free_place}" >
                    </c:if>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Number</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="number" name="number" value="${number}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="Select" class="col-sm-2 col-form-label">From</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="from" name="from">
                                <c:choose>
                                    <c:when test="${from eq 'Minsk'}">
                                        <option selected value="Minsk">Minsk</option>
                                        <option value="Moskow">Moskow</option>
                                        <option value="Kiev">Kiev</option>

                                    </c:when>
                                    <c:when test="${from eq 'Moskow'}">
                                        <option value="Minsk">Minsk</option>
                                        <option selected value="Moskow">Moskow</option>
                                        <option value="Kiev">Kiev</option>
                                    </c:when>
                                    <c:when test="${from eq 'Kiev'}">
                                        <option value="Minsk">Minsk</option>
                                        <option value="Moskow">Moskow</option>
                                        <option selected value="Kiev">Kiev</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="Minsk">Minsk</option>
                                        <option value="Moskow">Moskow</option>
                                        <option value="Kiev">Kiev</option>
                                    </c:otherwise>
                                </c:choose>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="Select" class="col-sm-2 col-form-label">To</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="to" name="to">
                                <c:choose>
                                    <c:when test="${to eq 'Minsk'}">
                                        <option selected value="Minsk">Minsk</option>
                                        <option value="Moskow">Moskow</option>
                                        <option value="Kiev">Kiev</option>

                                    </c:when>
                                    <c:when test="${to eq 'Moskow'}">
                                        <option value="Minsk">Minsk</option>
                                        <option selected value="Moskow">Moskow</option>
                                        <option value="Kiev">Kiev</option>
                                    </c:when>
                                    <c:when test="${to eq 'Kiev'}">
                                        <option value="Minsk">Minsk</option>
                                        <option value="Moskow">Moskow</option>
                                        <option selected value="Kiev">Kiev</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="Minsk">Minsk</option>
                                        <option value="Moskow">Moskow</option>
                                        <option value="Kiev">Kiev</option>
                                    </c:otherwise>
                                </c:choose>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Date</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="date" name="date" value="${date}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Time</label>
                        <div class="col-sm-10">
                            <input type="time" class="form-control" id="time" name="time" value="${time}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Travel time</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="travel_time" name="travel_time" value="${travel_time}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Count place</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="count_place" name="count_place" value="${count_place}">
                        </div>
                    </div>
                   <!--<div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Free place</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="free_place" name="free_place" value="${free_place}">
                        </div>
                    </div>-->
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Price</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="price" name="price" value="${price}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <BUTTON class="btn btn-primary" type="submit">Save</BUTTON>
                        </div>
                    </div>



                    <A href="flight.html?page=${page}">Cancel</A>

                </FORM>
                <script src="js/vall.js"></script>
</BODY>

</HTML>