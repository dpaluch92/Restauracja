<%-- 
    Document   : profile
    Created on : 2016-12-11, 23:28:25
    Author     : Dominik
--%>

<%@page contentType="text/html" pageEncoding="windows-1250"%>

<div class="row">
    <h3>Twoje dane:</h3>
    <hr />
    <div class="col-sm-6">
        <p>Login : ${user.userLogin}</p>
        <p>Has³o : ${user.userPassword}</p>
        <p>Imie : ${user.userName}</p>
        <p>Nazwisko : ${user.userSurname}</p>
    </div>
    <div class="col-sm-6">
        <p>Wiek : ${user.userAge}</p>
        <p>P³eæ : ${user.userGender}</p>
        <p>Miasto : ${user.userCity}</p>
        <p>Adres : ${user.userAddress}</p>
    </div>
</div>