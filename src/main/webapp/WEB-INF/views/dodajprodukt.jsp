<%-- 
    Document   : dodajprodukt
    Created on : 2017-01-16, 12:10:47
    Author     : Dominik
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Administrator</title>
    <jsp:include page="style.jsp" />
</head>
<div class="container">
<div class="row">
    <div class="col-sm-2">
        <form:form commandName="product" method="post" action="/Paluch/dba" id="productForm" > 
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input path="mealName" id="mealName" class="form-control" type="text" placeholder="Nazwa" />
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-hourglass"></i></span>
                    <form:input type="number" path="weight" id="weight" class="form-control" placeholder="Waga" />
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-hourglass"></i></span>
                    <form:input type="number" path="price" id="price" class="form-control" placeholder="Cena" />
            </div>
            <br />
            <input type="submit" class="btn btn-default  btn-lg col-sm-offset-10"  name="saveProduct" value="Zapisz" />
        </form:form>
    </div>
</div>
</div>
