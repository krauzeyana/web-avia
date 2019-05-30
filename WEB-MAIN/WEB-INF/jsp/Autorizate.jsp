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
<html>

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
      <div class="col-8 col-sm-6 col-md-4 col-lg-4">
        <form class="choises" action="#" method="post">
          <div class="form-group row">
            <div class="col-sm-12">
              <a href="users.html" class="choice">Users</a>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-12">
              <a href="guests.html" class="choice">Guests</a>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-12">
              <a href="flight.html" class="choice">Flight</a>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-12">
              <a href="ticket.html" class="choice">Tickets</a>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-12">
              <a href="gallary.html" class="choice">Gallary</a>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-12">
              <a href="news.html" class="choice">News</a>
            </div>
          </div>
        </form>

      </div>
    </div>
  </div>
</body>

</html>