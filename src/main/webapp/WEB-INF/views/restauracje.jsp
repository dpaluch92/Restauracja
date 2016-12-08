<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Restauracja</title>
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
                        <li><a href="index.jsp">Strona główna &nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
                        <li><a class="dropdown-toggle" data-toggle="dropdown" href="kontact.html">Restauracje &nbsp;<span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span>
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="info.html">Informacje &nbsp;<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li>
                                <li><a href="galery.html">Galeria &nbsp;<span class="glyphicon glyphicon-picture" aria-hidden="true"></span></a></li>
                                <li><a href="kontact.html">Kontakt &nbsp;<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="zarejestruj.jsp">Zarejestruj &nbsp;<span class="glyphicon glyphicon-pencil"></span></a>
                        <li><a href="#">Zaloguj &nbsp;<span class="glyphicon glyphicon-user"></span></a>
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
        </nav>

        <div class="container" style="margin: 100px auto;">
            <div class="row">
                <div class="col-sm-4 text-center"> 
                    <h2>Informacje</h2>
                    <p>Chcesz wiedzieć wiecej o nas kliknij tutaj :</p>
                    <a href="info.jsp" class="btn btn-info btn-lg" >Informacja</a>
                </div>
                <div class="col-sm-4 text-center">
                    <h2>Galeria</h2>
                    <p>Zobacz galerie naszych lokali :</p>
                    <a href="galeria.jsp" class="btn btn-info btn-lg">Lokale</a>
                </div>
                <div class="col-sm-4 text-center">
                    <h2>Kontakt</h2>
                    <p>Chcesz nawiązać kontakt? Skontaktuj sie z nami :</p>
                    <a href="kontakt.jsp" class="btn btn-info btn-lg">Kontakt</a>
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