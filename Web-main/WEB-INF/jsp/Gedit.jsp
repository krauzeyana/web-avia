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
        <c:set var="id" value="${object.id}" />
        <c:set var="name" value="${object.name}" />
        <c:set var="second_name" value="${object.second_name}" />
        <c:set var="last_name" value="${object.last_name}" />
        <c:set var="sex" value="${object.sex}" />
        <c:set var="birthday" value="${object.birthday}" />
        <c:set var="nationality" value="${object.nationality}" />
        <c:set var="passport" value="${object.passport}" />
        <c:set var="passport_date" value="${object.passport_date}" />
        <c:set var="country" value="${object.country}" />
        <c:set var="city" value="${object.city}" />
        <c:set var="index" value="${object.index}" />
        <c:set var="street" value="${object.street}" />
        <c:set var="home" value="${object.home}" />
        <c:set var="flat" value="${object.flat}" />
        <c:set var="phone" value="${object.phone}" />
        <c:set var="email" value="${object.email}" />
        <c:set var="job" value="${object.job}" />
        <c:set var="position" value="${object.position}" />
    </c:when>
    <c:otherwise>
        <c:set var="id" value='' />
        <c:set var="name" value='' />
        <c:set var="second_name" value='' />
        <c:set var="last_name" value='' />
        <c:set var="sex" value='' />
        <c:set var="birthday" value='' />
        <c:set var="nationality" value='' />
        <c:set var="passport" value='' />
        <c:set var="passport_date" value='' />
        <c:set var="country" value='' />
        <c:set var="city" value='' />
        <c:set var="index" value='' />
        <c:set var="street" value='' />
        <c:set var="home" value=''/>
        <c:set var="flat" value='' />
        <c:set var="phone" value='' />
        <c:set var="email" value='' />
        <c:set var="job" value='' />
        <c:set var="position" value=''/>
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
                <form class="form registration" id="form" action="Gsave.html?page=${page}" method="post" onsubmit="return chGuests()">
                    <c:if test="${not empty object}">
                        <INPUT type="hidden" name="id" value="${object.id}">
                    </c:if>
                    <c:if test="${empty object}">
                        <div class="form-group row">
                            <label for="login" class="col-sm-2 col-form-label">Login</label>
                            <div class="col-sm-10">
                                <select class="form-control" id="id" name="id">
                                    <c:if test="${not empty userG}">
                                                <c:set var="i" value="0"></c:set>
                                                <c:forEach var="ob" items="${userG}">
                                                    <option value="${ob.id}">${ob.login}</option>
                                                    <c:set var="i" value="${i+1}"></c:set>
                                                </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                        </div>
                    </c:if>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Sex</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="sex" name="sex">
                                <c:choose>
                                    <c:when test="${not empty object}">
                                        <c:choose>
                                            <c:when test="${sex eq true}">
                                                <option value="true" selected>Man</option>
                                                <option value="false" >Women</option>
                                            </c:when>
                                            <c:otherwise>
                                                    <option value="true" >Man</option>
                                                    <option value="false" selected>Women</option>
                                            </c:otherwise>
                                        </c:choose>
                                        </c:when>
                                        <c:otherwise>
                                                <option value="true" >Man</option>
                                                <option value="false" >Women</option>
                                        </c:otherwise>
                                        </c:choose>
                            </select>
                       </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="name" name="name" value="${name}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Second_name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="second_name" name="second_name" value="${second_name}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Last_name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="last_name" name="last_name" value="${last_name}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Birthday</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="birthday" name="birthday" value="${birthday}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Nationality</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="nationality" name="nationality" value="${nationality}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Passport</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="passport" name="passport" value="${passport}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Passport_date</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="passport_date" name="passport_date" value="${passport_date}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Country</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="country" name="country" value="${country}">
                        </div>
                    </div> <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">City</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="city" name="city" value="${city}">
                        </div>
                    </div> <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Index</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="index" name="index" value="${index}">
                        </div>
                    </div> <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Street</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="street" name="street" value="${street}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Home</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="home" name="home" value="${home}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Flat</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="flat" name="flat" value="${flat}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="email" name="email" value="${email}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Phone</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="phone" name="phone" value="${phone}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Job</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="job" name="job" value="${job}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login" class="col-sm-2 col-form-label">Position</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="position" name="position" value="${position}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <BUTTON class="btn btn-primary" type="submit">Save</BUTTON>
                        </div>
                    </div>



                    <A href="guests.html?page=${page}">Cancel</A>

                </FORM>
                <script src="js/vall.js"></script>
</BODY>

</HTML>