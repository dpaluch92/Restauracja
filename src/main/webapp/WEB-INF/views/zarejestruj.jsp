<%-- 
    Document   : rejestracja
    Created on : 2016-12-05, 18:48:31
    Author     : Dominik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>                   
            <input type="text" placeholder="Login">
            <input type="password" placeholder="Password">
            <input type="text" placeholder="Imie">
            <input type="text" placeholder="Nazwisko">
            <input type="date" placeholder="Wiek">
            <select>
                <option>Mężczyzna</option>
                <option>Kobieta</option>
            </select>
            <input type="text" placeholder="Miasto">
            <input type="text" placeholder="Adress">
             <button type="submit">Submit</button>
        </form>
    </body>
</html>
