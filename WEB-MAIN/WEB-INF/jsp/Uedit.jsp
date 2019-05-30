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
        <c:set var="id" value="${object.id}"/>
        <c:set var="login" value="${object.login}"/>
        <c:set var="password" value="${object.password}"/>
        <c:set var="role" value="${object.role}"/>

    </c:when>
    <c:otherwise>
        <c:set var="id" value=''/>
        <c:set var="login" value=''/>
        <c:set var="password" value=''/>
        <c:set var="role" value='-1'/>
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
                <c:set var="page" value="${page}"/>
                <form class="form registration" id="form" action="Usave.html?page=${page}"  method="post" onsubmit="return chUser()">
                <c:if test="${not empty object}">
                    <INPUT type="hidden" name="id" value="${object.id}" >
                </c:if>
                <div class="form-group row">
                    <label for="login" class="col-sm-2 col-form-label">Login</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="login" name="login" value="${login}" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="password" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="password" name="password" value="${password}">
                    </div>
                </div>
                <div class="form-group row">
                        <label for="Select" class="col-sm-2 col-form-label">Role</label>
                        <div class="col-sm-10">
                                <select class="form-control" id="Select" name="role">
                                <c:choose>
                                    <c:when test="${role eq 0}">
                                        <c:choose>
                                            <c:when test="${not empty object}">

                                                <option selected value="0">admin</option>
                                                <option value="1">manager</option>
                                            <option value="2">user</option>
                                            </c:when>
                                            <c:otherwise>
                                                    <option value="0">admin</option>
                                                    <option value="1">manager</option>
                                            <option value="2">user</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                    <c:when test="${role eq 1}">
                                            <c:choose>
                                                    <c:when test="${not empty object}">
                                                            <option value="0">admin</option>
                                                            <option selected value="1">manager</option>
                                                            <option value="2">user</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                            <option value="0">admin</option>
                                                            <option  value="1">manager</option>
                                                            <option value="2">user</option>
                                                    </c:otherwise>
                                                </c:choose>
                                    </c:when>
                                    <c:when test="${role eq 2}">
                                            <c:choose>
                                                    <c:when test="${not empty object}">
                                                            <option value="0">admin</option>
                                                            <option value="1">manager</option>
                                                            <option selected value="2">user</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                            <option value="0">admin</option>
                                                            <option value="1">manager</option>
                                                            <option  value="2">user</option>
                                                    </c:otherwise>
                                                </c:choose>
                                    </c:when>
                                    <c:otherwise>
                                            <option value="0">admin</option>
                                            <option value="1">manager</option>
                                            <option value="2">user</option>
                                    </c:otherwise>
                                </c:choose>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                            <div class="col-sm-10">
                                    <BUTTON class="btn btn-primary" type="submit">Save</BUTTON>
                                </div></div>



                                <A href="users.html?page=${page}">Cancel</A>

            </FORM>
        <script src="js/vall.js"></script>
    </BODY>
</HTML>