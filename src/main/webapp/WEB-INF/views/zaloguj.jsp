<%-- 
    Document   : zaloguj
    Created on : 2016-11-30, 16:25:54
    Author     : Dominik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns:tiles="http://www.thymeleaf.org">
    <head>
        <title>Logowanie</title>
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

        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 well">

                    <h2>Formularz logowania</h2>
                    <br />
                    <form name="f" th:action="@{/login}" method="post" class="form-horizontal">     
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Login:</label>
                            <div class="col-sm-10">
                                <input type="text" name="username" class="form-control" placeholder="Wpisz login">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Hasło:</label>
                            <div class="col-sm-10">          
                                <input type="password" name="password" class="form-control" placeholder="Wpisz hasło">
                            </div>
                        </div>
                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-3"></div>
            </div>
            
        </div>
                        <jsp:include page="footer.jsp" />
    </body>
</html>
