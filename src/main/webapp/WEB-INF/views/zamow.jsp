<%-- 
    Document   : zamow
    Created on : 2017-01-12, 16:28:24
    Author     : Dominik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Menu</h1>
<div class="row">
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Id</th>
                <th>Nazwa produktu</th>
                <th>Cena</th>
                <th>Ilość</th>
                <th>Zamów</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${menus}" var="m">
            <tr>
                <td>${m.menuId}</td>
                <td>${m.mealName}</td>
                <td>${m.price}</td>
                <td>${m.weight}</td> 
                <td><a href="/Paluch/user/zamow/${user.userId}" class="btn btn-primary btn-mini btn-box">Zamów</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
