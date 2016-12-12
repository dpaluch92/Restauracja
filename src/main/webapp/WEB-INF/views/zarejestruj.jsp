<%-- 
    Document   : zaloguj
    Created on : 2016-11-30, 15:40:35
    Author     : Dominik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Rejestracja</title>
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

        <!-- content -->
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 well">
                    <h2>Formularz rejestracji</h2>
                    <p>- Wszystkie pola muszą być wypełnione.</p>
                    <p>- Wszystkie pola tekstowe muszą mieć co najmniej pięć znaków.</p>
                    <p>- Login musi być unikatowy.</p>
                    <form:form commandName="userz" method="post" action="/Paluch/zarejestruj" id="userForm" >   
                        <form:hidden path="userId" id="userId" />
                        <form:hidden path="userRole" id="userRole" value="3" />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-log-in"></i></span>
                                <form:input path="userLogin" id="userLogin" class="form-control" type="text" placeholder="Login"/>
                        </div>
                        <br />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <form:input path="userPassword" id="userPassword" class="form-control" type="password" placeholder="Hasło"/>
                        </div>
                        <br />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <form:input path="userName" id="userName" class="form-control" type="text" placeholder="Imie" />
                        </div>
                        <br />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <form:input path="userSurname" id="userSurname" class="form-control" placeholder="Nazwisko" />
                        </div>
                        <br />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-hourglass"></i></span>
                                <form:input type="number" path="userAge" id="userAge" class="form-control" placeholder="Wiek" />
                        </div>
                        <br />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <form:select class="form-control" path="userGender" id="userGender" form="userForm">
                                    <form:option value="M">M</form:option>
                                <form:option value="K">K</form:option>
                            </form:select>
                        </div>
                        <br />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <form:input path="userCity" id="userCity" class="form-control" placeholder="Miasto"/>
                        </div>
                        <br />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                                <form:input type="text" path="userAddress" id="userAddress" class="form-control"  placeholder="Adres"/>
                        </div>
                        <br />
                        <input type="submit" class="btn btn-default  btn-lg col-sm-offset-9"  name="saveUser" value="Zarejestruj" />
                    </form:form>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div> 
        
        <!-- footer -->
        <jsp:include page="footer.jsp" />
    </body>
</html>