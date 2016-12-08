<%-- 
    Document   : newjsp
    Created on : 2016-12-07, 20:09:22
    Author     : Dominik
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Administrator</title>
    </head>
    <body>

        <jsp:include page="navigation.jsp" />

        <div class="container">
            <div class="row">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Login</th>
                            <th>Has³o</th>
                            <th>Imie</th>
                            <th>Nazwisko</th>
                            <th>Wiek</th>
                            <th>P³eæ</th>
                            <th>Miasto</th>
                            <th>Adres</th>
                            <th>Operacje<th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${users}" var="user">
                            <tr>
                                <td>${user.userId}</td>
                                <td>${user.userLogin}</td>
                                <td>${user.userPassword}</td>
                                <td>${user.userName}</td>
                                <td>${user.userSurname}</td>
                                <td>${user.userAge}</td>
                                <td>${user.userGender}</td>
                                <td>${user.userCity}</td>
                                <td>${user.userAddress}</td>
                                <td><a href="#" class="btn btn-primary btn-mini btn-box">Edytuj</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
