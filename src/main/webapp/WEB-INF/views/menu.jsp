<%-- 
    Document   : menu
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
        <link rel="shortcut icon" href="">
        <jsp:include page="style.jsp" />
    </head>
    <body>

        <!-- nawigacja -->    
        <jsp:include page="navigation.jsp" />


        <div class="container">
            <h1>Menu</h1>
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
                        <c:forEach items="${menus}" var="m">
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
        
        <!-- footer -->
        <jsp:include page="footer.jsp" />
    </body>
</html>
