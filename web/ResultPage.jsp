<%--
  Created by IntelliJ IDEA.
  User: Илья
  Date: 28.02.2019
  Time: 09:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Results</title>
    <link rel="stylesheet" type="text/css" href="w3.css" media="screen" />
</head>

<body background="\images\buss.jpg">

<header>

    <style>
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

<p style="color: azure">Simulation finished with the following results (last row of the table = last run of simulation)</p>

<table style="color: azure" border="3">
    <thead>
    <tr>
        <th>N</th>
        <th>Duration</th>
        <th>DaysInSimulation</th>
        <th>TotalRounds</th>
        <th>PassengerTraveled</th>
        <th>PassengersLeft</th>
    </tr>
    </thead>
    <tbody>

    <%--@elvariable id="list" type="ua.telesens.io.tables.ResultTable"--%>
    <c:forEach items="${list}" var="ResultTableList">
        <tr>
            <td><c:out value="${ResultTableList.getN()}"/></td>
            <td><c:out value="${ResultTableList.getLocalTime()}"/></td>
            <td><c:out value="${ResultTableList.getDaysIn()}"/></td>
            <td><c:out value="${ResultTableList.getTotalRounds()}"/></td>
            <td><c:out value="${ResultTableList.getPassTraveled()}"/></td>
            <td><c:out value="${ResultTableList.getPassLeft()}"/></td>
        </tr>
    </c:forEach>

    </tbody>
</table>

<p align="center"><button onclick="location.href='/connectionForStart'" align="center">To control page</button></p>
<p align="center"><button onclick="location.href='/'" align="center">Back to main</button></p>
</body>

<div id="footer">
    <footer>
        <p align="left" style="color: azure">&copy; All rights reserved</p>
    </footer>
</div>

</html>