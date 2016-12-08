
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
        <jsp:include page="navigation.jsp" />


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
        <jsp:include page="footer.jsp" />
        
    </body>
</html>