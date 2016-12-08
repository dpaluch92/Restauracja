<%-- 
    Document   : info
    Created on : 2016-11-30, 16:33:34
    Author     : Dominik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Informajce</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <!-- nawigacja -->    
        <jsp:include page="navigation.jsp" />

        <div class="container">
            <h1>Położenie</h1>
            <hr />
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1522.2259572461226!2d19.997250069013038!3d50.085000582937326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47165ac9795f0271%3A0xcbc750f9aa91fd22!2zU3RhbmlzxYJhd2EgU2thcsW8ecWEc2tpZWdvLCBLcmFrw7N3!5e0!3m2!1spl!2spl!4v1480521509104" width="600" height="450" 
                                frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
    </body>
</html>