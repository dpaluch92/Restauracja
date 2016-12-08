<%-- 
    Document   : navigation
    Created on : 2016-12-08, 03:00:53
    Author     : Dominik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse" style="border-radius: 0px;">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/Paluch/">Strona główna &nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
                <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Restauracje &nbsp;<span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span>
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/Paluch/info">Informacje &nbsp;<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li>
                        <li><a href="/Paluch/menu">Menu &nbsp;<span class="glyphicon glyphicon-picture" aria-hidden="true"></span></a></li>
                        <li><a href="/Paluch/kontakt">Kontakt &nbsp;<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/Paluch/zarejestruj">Zarejestruj &nbsp;<span class="glyphicon glyphicon-pencil"></span></a>
                <li><a href="/Paluch/zaloguj">Zaloguj &nbsp;<span class="glyphicon glyphicon-user"></span></a>
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</nav>

