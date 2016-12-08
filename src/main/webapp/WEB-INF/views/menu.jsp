<%-- 
    Document   : galeria
    Created on : 2016-11-30, 16:33:41
    Author     : Dominik
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Menu</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <!-- nawigacja -->    
        <nav class="navbar navbar-inverse" style="border-radius: 0px;">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/Paluch/">Strona główna &nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
                        <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Restauracje &nbsp;<span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span>
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/Paluch/info">Informacje &nbsp;<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li>
                                <li><a href="/Paluch/menu">Menu &nbsp;<span class="glyphicon glyphicon-picture" aria-hidden="true"></span></a></li>
                                <li><a href="/Paluch/kontakt">Kontakt &nbsp;<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/Paluch/zarejestruj">Zarejestruj &nbsp;<span class="glyphicon glyphicon-pencil"></span></a>
                        <li><a href="/Paluch/zaloguj">Zaloguj &nbsp;<span class="glyphicon glyphicon-user"></span></a>
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
        </nav>


        <div class="container">
            <h1>Menu</h1>
            <hr />
            <div class="row">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nazwa produktu</th>
                            <th>Cena</th>
                            <th>Ilość</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${menu}" var="m">
                        <tr>
                            <td>${m.menuId}</td>
                            <td>${m.mealName}</td>
                            <td>${m.price}</td>
                            <td>${m.weight}</td> 
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
    </body>
</html>
