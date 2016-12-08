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
        <jsp:include page="navigation.jsp" />

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
        <jsp:include page="footer.jsp" />

    </body>
</html>