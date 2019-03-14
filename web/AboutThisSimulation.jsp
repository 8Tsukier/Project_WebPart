<%--
  Created by IntelliJ IDEA.
  User: Илья
  Date: 26.02.2019
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>About my simulation</title>
        <link rel="stylesheet" type="text/css" href="w3.css" media="screen" />
    </head>

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

        body{
            margin-right: 25%;
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

    <body background="\images\buss.jpg">

        <h1 align="center" style="color: azure">Welcome!</h1>
        <p style="color: azure" align="left">This program simulates the bus traffic by the weeks. You can minimum simulates one week.
            Maximum range is not determined, but you have to wait a little bit for the results.</p>
        <p style="color: azure" align="left"></p>

        <p style="color: azure" align="left">This is the simulation of bus traffic in some city. The bus is moving along its route between the stations.
            The passengers are coming to these stations and get on the bus only if it can deliver them to the station they need. Some passengers can leave
            if they had waited for too long. The amount of passengers at the station is different according to the day time and day of the week.</p>
        <p style="color: azure" align="left">Input data about the routes and the stations are taken from the .xml files.</p>
        <p style="color: azure" align="left">Results of simulations are written to DB. Also, all the movements of each bus are written to log file.</p>
        <p align="center"><button onclick=history.back()>Back</button></p>
    </body>

    <div id="footer">
        <footer>
            <p align="left" style="color: azure">&copy; All rights reserved</p>
        </footer>
    </div>

</html>
