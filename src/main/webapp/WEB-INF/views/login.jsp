<%-- 
    Document   : login
    Created on : 2016-12-10, 18:05:30
    Author     : Dominik
--%>

<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns:tiles="http://www.thymeleaf.org">
    <head>
        <title tiles:fragment="title">Messages : Create</title>
    </head>
    <body>
        <div tiles:fragment="content">
            <form name="f" th:action="@{/login}" method="post">               
                <fieldset>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <legend>Please Login</legend>
                    <div th:if="${param.error}" class="alert alert-error">    
                        Invalid username and password.
                    </div>
                    <div th:if="${param.logout}" class="alert alert-success"> 
                        You have been logged out.
                    </div>
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username"/>        
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password"/>    
                    <div class="form-actions">
                        <button type="submit" class="btn">Log in</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
</html>