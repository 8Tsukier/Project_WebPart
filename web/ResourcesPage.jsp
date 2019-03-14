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
    <title>Resourse Info</title>
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

        .hide {
            display: none;
        }
        .hide + label ~ div{
            display: none;
        }
        /* оформляем текст label */
        .hide + label {
            border-bottom: 1px dotted green;
            padding: 0;
            color: green;
            cursor: pointer;
            display: inline-block;
        }
        /* вид текста label при активном переключателе */
        .hide:checked + label {
            color: red;
            border-bottom: 0;
        }
        /* когда чекбокс активен показываем блоки с содержанием  */
        .hide:checked + label + div {
            display: block;
            /*background: #efefef;
            -moz-box-shadow: inset 3px 3px 10px #7d8e8f;
            -webkit-box-shadow: inset 3px 3px 10px #7d8e8f;
            box-shadow: inset 3px 3px 10px #7d8e8f;*/
            padding-left: 25%;
            padding-right: 25%;
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

    <p style="color: azure">Here you can see general information resourses used in simulation!</p>

    <div class="demo">
        <input type="checkbox" id="hd-1" class="hide"/>
        <label for="hd-1" style="color: aliceblue" >See the list of all routes.</label>
            <div>

                <table style="color: azure" border="3">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>Roundabout</th>
                        <th>N-Busses</th>
                        <th>N-Stations</th>
                        <th>Stations</th>
                    </tr>
                    </thead>
                    <tbody>

                    <%--@elvariable id="listRoute" type="ua.telesens.io.tables.RouteT"--%>
                    <c:forEach items="${listRoute}" var="routesList">
                        <tr>
                            <td><c:out value="${routesList.getRouteNumber()}"/></td>
                            <td><c:out value="${routesList.getRoundAbout()}"/></td>
                            <td><c:out value="${routesList.getNumberOfBusses()}"/></td>
                            <td><c:out value="${routesList.getNumberOfStations()}"/></td>
                            <td><c:out value="${routesList.getAllStations()}"/></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>

            </div>
        <br/>
        <br/>
        <input type="checkbox" id="hd-2" class="hide"/>
        <label for="hd-2" style="color: aliceblue" >See the list of all stations.</label>
        <div>

            <table style="color: azure" border="3">
                <thead>
                <tr>
                    <th>id</th>
                    <th>Station Name</th>
                    <th>Big Station</th>
                    <th>Passing routes</th>
                </tr>
                </thead>
                <tbody>

                <%--@elvariable id="listStation" type="ua.telesens.io.tables.StationT"--%>
                <c:forEach items="${listStation}" var="stationsList">
                    <tr>
                        <td><c:out value="${stationsList.getId()}"/></td>
                        <td><c:out value="${stationsList.getName()}"/></td>
                        <td><c:out value="${stationsList.getBig()}"/></td>
                        <td><c:out value="${stationsList.getBelongToRoutes()}"/></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>

        </div>
    </div>

    <p align="center"><button onclick=history.back() align="center">Back</button></p>
</body>

<div id="footer">
    <footer>
        <p align="left" style="color: azure">&copy; All rights reserved</p>
    </footer>
</div>

</html>