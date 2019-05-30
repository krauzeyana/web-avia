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
            <h2>Guests</h2>
        </div>

        <FORM method="post" class="bigTable">
            <TABLE id="example" class="table table-bordered ">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">id</th>
                        <th scope="col">Sex</th>
                        <th scope="col">Name</th>
                        <th scope="col">Second name</th>
                        <th scope="col">Last name</th>
                        <th scope="col">Birthday</th>
                        <th scope="col">Nationality</th>
                        <th scope="col">Passport</th>
                        <th scope="col">Passport date</th>
                        <th scope="col">Country</th>
                        <th scope="col">City</th>
                        <th scope="col">Index</th>
                        <th scope="col">Street</th>
                        <th scope="col">Home</th>
                        <th scope="col">Flat</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Email</th>
                        <th scope="col">Job</th>
                        <th scope="col">Position</th>
                        <th scope="col">Change</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="object" items="${objects}">
                        <TR>
                            <th scope="row">${object.id}</th>
                            <td>${object.sex}</td>
                            <td>${object.name}</td>
                            <td>${object.second_name}</td>
                            <td>${object.last_name}</td>
                            <td>${object.birthday}</td>
                            <td>${object.nationality}</td>
                            <td>${object.passport}</td>
                            <td>${object.passport_date}</td>
                            <td>${object.country}</td>
                            <td>${object.city}</td>
                            <td>${object.index}</td>
                            <td>${object.street}</td>
                            <td>${object.home}</td>
                            <td>${object.flat}</td>
                            <td>${object.phone}</td>
                            <td>${object.email}</td>
                            <td>${object.job}</td>
                            <td>${object.position}</td>

                            <TD><A href="Gedit.html?id=${object.id}&page=${page}">&#128393;</A></TD>

                            <td><a href="Gdelete.html?id=${object.id}&page=${page}">&#128937;</a></td>
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
                                    <option selected value='guests.html?page=${i}'>${i}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value='guests.html?page=${i}'>${i}</option>
                                </c:otherwise>
                            </c:choose>
                            <c:set var="i" value="${i+1}" />
                        </c:forEach>
                    </c:when>

                    <c:otherwise>
                        <option value='guests.html?page=1'>1</option>
                    </c:otherwise>
                </c:choose>

            </select>
        </div>
        <br>
        <div class="col-3 col-sm-2 col-md-2 col-lg-2"><A href="Gedit.html?page=${page}">Add</A></div>

</BODY>

</HTML>