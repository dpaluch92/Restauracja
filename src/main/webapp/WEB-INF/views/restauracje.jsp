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
        <jsp:include page="style.jsp" />
    </head>
    <body>

        <!-- nawigacja -->    
        <jsp:include page="navigation.jsp" />

        <div class="container" style="margin: 100px auto;">
            <div class="row">
                <div class="col-sm-4 text-center"> 
                    <h2>Informacje</h2>
                    <p>Chcesz wiedzieć wiecej o nas kliknij tutaj :</p>
                    <a href="info" class="btn btn-info btn-lg" >Informacja</a>
                </div>
                <div class="col-sm-4 text-center">
                    <h2>Menu</h2>
                    <p>Zobacz Menu naszych lokali :</p>
                    <a href="menu" class="btn btn-info btn-lg">Menu</a>
                </div>
                <div class="col-sm-4 text-center">
                    <h2>Kontakt</h2>
                    <p>Chcesz nawiązać kontakt? Skontaktuj sie z nami :</p>
                    <a href="kontakt" class="btn btn-info btn-lg">Kontakt</a>
                </div>
            </div>
        </div>

        <!-- footer -->
        <jsp:include page="footer.jsp" />

    </body>
</html>