<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>DBA page</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="nav_logged.jsp" />
        <div class="container">
        <div class="row">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Nazwa Produktu</th>
                            <th>Cena</th>
                            <th>Waga</th>
                            <th>Operacje<th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${menus}" var="menu">
                            <tr>
                                <td>${menu.mealName}</td>
                                <td>${menu.price}</td>
                                <td>${menu.weight}</td>
                                <td><a href="/Paluch/dba/usun/${menu.menuId}" class="btn btn-primary btn-mini btn-box">Usuń</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>