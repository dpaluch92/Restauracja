<%-- 
    Document   : newjsp
    Created on : 2016-12-07, 20:09:22
    Author     : Dominik
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

        <jsp:include page="nav_logged.jsp" />

        <div class="container">
            <div class="row">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Login</th>
                            <th>Hasło</th>
                            <th>Imie</th>
                            <th>Nazwisko</th>
                            <th>Wiek</th>
                            <th>Płeć</th>
                            <th>Miasto</th>
                            <th>Adres</th>
                            <th>Operacje<th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${users}" var="user">
                            <tr>
                                <td>${user.userLogin}</td>
                                <td>${user.userPassword}</td>
                                <td>${user.userName}</td>
                                <td>${user.userSurname}</td>
                                <td>${user.userAge}</td>
                                <td>${user.userGender}</td>
                                <td>${user.userCity}</td>
                                <td>${user.userAddress}</td>
                                <td><a href="/Paluch/admin/edytuj/${user.userId}" class="btn btn-primary btn-mini btn-box">Edytuj</a></td>
                                <td><a href="/Paluch/admin/usun/${user.userId}" class="btn btn-primary btn-mini btn-box">Usuń</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
