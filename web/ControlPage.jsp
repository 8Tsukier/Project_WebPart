<%--
  Created by IntelliJ IDEA.
  User: Илья
  Date: 28.02.2019
  Time: 09:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>

    <head>
        <title>Command Center</title>
        <link rel="stylesheet" type="text/css" href="w3.css" media="screen" />
    </head>

    <body background="\images\buss.jpg">

    <header>

        <style>

            .bordright{
                position: fixed; /* Фиксированное положение */
                right: 0; top: 0;
                padding-top: 3%;
                padding-right: 3%;
            }

            .leftimg {
                float:left; /* Выравнивание по левому краю */
                margin: 10px 30px 1000px 10px; /* Отступы вокруг картинки */
            }
            .rightimg  {
                float: right; /* Выравнивание по правому краю  */
                margin: 7px 0 7px 7px; /* Отступы вокруг картинки */
            }
            .centrimg{
                float: bottom;
                margin: 20px 100px 0px 0px;
            }
            .fig{
                text-align: center;
            }

            #footer {
                position: fixed; /* Фиксированное положение */
                left: 0; bottom: 0; /* Левый нижний угол */
                padding: 10px; /* Поля вокруг текста */
                color: azure; /* Цвет текста */
                width: 100%; /* Ширина слоя */
            }

        </style>

        <a title="" class="logo"><INPUT type="image" src="images/simulation.png" alt="My simulation" height="100" width="100" class="leftimg" /></a>
        <div class="Date: " style="color: azure"> <%= new java.util.Date()%> </div>
        <div class="bordright"><button onclick="location.href='/'" align="center" style="color: red">LogOut</button></div>

        <nav>
            <ul id="top_menu">
                <li><a href="https://en.wikipedia.org/wiki/Traffic_simulation" style="color: azure">About traffic simulation wiki</a></li>
                <li><a href="\AboutThisSimulation.jsp" style="color: azure">About this simulation</a></li>
                <li><a href="/connectionForInfo" style="color: azure">Resources</a></li>
            </ul>

        </nav>

        <div class="header_img">

        </div>
    </header>


        <p style="color: azure">You are about to start the simulation!</p>

        <p style="color: azure">The simulation will run with the following parameters:</p>

        <table style="color: azure" border="3">
            <thead>
            <tr>
                <th>id</th>
                <th>RouteNumber</th>
                <th>N-Stations</th>
                <th>N-Buses</th>
            </tr>
            </thead>
            <tbody>

            <%--@elvariable id="list" type="ua.telesens.io.tables.RouteGeneralInfo"--%>
            <c:forEach items="${list}" var="RouteGeneralInfoList">
                <tr>
                    <td><c:out value="${RouteGeneralInfoList.getId()}"/></td>
                    <td><c:out value="${RouteGeneralInfoList.getRouteNumber()}"/></td>
                    <td><c:out value="${RouteGeneralInfoList.getNumberOfStations()}"/></td>
                    <td><c:out value="${RouteGeneralInfoList.getNumberOfBuses()}"/></td>
                </tr>
            </c:forEach>

            </tbody>
        </table>

        <FORM action="/RunSimul" method="GET">
            <p style="color: azure" align="center">How many weeks simulate: </p>
            <p align="center"><INPUT type="text" id="nweeks" name="nweeks" placeholder="weeks" align="center"></p>

            <p align="center"><INPUT id="button" type="submit" value="StartSimulation" align="center" style="background: aqua"></p>
        </FORM>

    </body>

    <div id="footer">
        <footer>
            <p align="left" style="color: azure">&copy; All rights reserved</p>
        </footer>
    </div>

</html>
