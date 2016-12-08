
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Strona domowa</title>
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


        <!-- content -->
        <div class="container">

            <!-- karuzela -->
            <div class="row">
                <div class="col-sm-12">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img class="img-responsive center-block" src="http://placehold.it/1200x250" />
                            </div>
                            <div class="item">
                                <img class="img-responsive center-block" src="http://placehold.it/1200x250" />
                            </div>
                            <div class="item">
                                <img class="img-responsive center-block" src="http://placehold.it/1200x250" />
                            </div>
                            <div class="item">
                                <img class="img-responsive center-block" src="http://placehold.it/1200x250" />
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" role="button"
                           data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Poprzedni</span>
                        </a> 
                        <a class="right carousel-control" href="#myCarousel" role="button"
                           data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Następny</span>
                        </a>
                    </div>
                </div>
            </div>

            <hr />
            <div class="container">
                <div class="row text-center">
                    <a href="#" class="btn btn-success btn-lg">Zamów z dostawą</a>
                </div>
            </div>

            <hr />

            <!-- promocje -->
            <div class="container">
                <h2>Promocje</h2>
                <div class="row">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Nazwa produktu</th>
                                <th>Cena</th>
                                <th>Ilość</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${promo}" var="menu">
                            <tr>
                                <td>${menu.mealName}</td>
                                <td>${menu.price}</td>
                                <td>${menu.weight}</td>
                                <td><a href="#" class="btn btn-primary btn-mini btn-box">Zamów teraz!</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


        <!-- footer -->
        <div class="container">
            <hr />
            <div class="row">
                <div class="col-sm-4">
                    <h3>Menu</h3>
                    <ul class="nav">
                        <li><a href="#">Menu na wynos</a></li>
                        <li><a href="#">Menu z dostawą</a></li>
                        <li><a href="#">Menu w restauracji</a></li>
                    </ul>
                </div>
                <div class="col-sm-4">
                    <h3>Szybkie zamówienie</h3>
                    <ul class="nav">
                        <li><a href="#">Zamów już teraz!</a></li>
                        <li><a href="#">Zamówienie z dostawą</a></li>
                    </ul>
                </div>
                <div class="col-sm-4">
                    <h3>Informacje</h3>
                    <ul class="nav">
                        <li><a href="restauracje.jsp">Restauracje</a></li>
                        <li><a href="#">Regulamin</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>