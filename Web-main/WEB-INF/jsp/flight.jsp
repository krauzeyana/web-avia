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
    <div class=" container-fluid align-items-center ">
        <div class="User">
            <h2>Flight</h2>
        </div>

        <FORM method="post" class="bigTable">
            <TABLE id="example" class="table table-bordered ">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Number</th>
                        <th scope="col">From</th>
                        <th scope="col">To</th>
                        <th scope="col">Date</th>
                        <th scope="col">Time</th>
                        <th scope="col">Travel time</th>
                        <th scope="col">Count place</th>
                        <th scope="col">Free place</th>
                        <th scope="col">Price</th>
                        <c:if test="${role eq 1}">
                        <th scope="col">Change</th>
                        <th scope="col">Delete</th></c:if>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="object" items="${objects}">
                        <TR>
                            <th scope="row">${object.number}</th>
                            <td>${object.from}</td>
                            <td>${object.to}</td>
                            <td>${object.date}</td>
                            <td>${object.time}</td>
                            <td>${object.travel_time}</td>
                            <td>${object.count_place}</td>
                            <td>${object.free_place}</td>
                            <td>${object.price}</td>
                            <c:if test="${role eq 1}"> 
                            <TD><A href="Fedit.html?number=${object.number}&page=${page}">&#128393;</A></TD>

                            <td><a href="Fdelete.html?number=${object.number}&page=${page}">&#128937;</a></td></c:if>
                        </tr>
                    </c:forEach>
            </TABLE>
        </FORM>
        <div class="col-3 col-sm-2 col-md-2 col-lg-1">
            <select onchange="window.location.href=this.options[this.selectedIndex].value" class="form-control"
                id="Select" name="type">
                <c:set var="i" value="0" />
                <c:choose>
                    <c:when test="${allId!=0}">
                        <c:set var="i" value="1" />
                        <c:forEach var="id" begin="0" end="${allId-1}" step="5">

                            <c:choose>
                                <c:when test="${i eq page}">
                                    <option selected value='flight.html?page=${i}'>${i}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value='flight.html?page=${i}'>${i}</option>
                                </c:otherwise>
                            </c:choose>
                            <c:set var="i" value="${i+1}" />
                        </c:forEach>
                    </c:when>

                    <c:otherwise>
                        <option value='flight.html?page=1'>1</option>
                    </c:otherwise>
                </c:choose>

            </select>
        </div>
        <br>
        <c:if test="${role eq 1}"> 
        <div class="col-3 col-sm-2 col-md-2 col-lg-2"><A href="Fedit.html?page=${page}">Add</A></div>
        </c:if>
</BODY>

</HTML>