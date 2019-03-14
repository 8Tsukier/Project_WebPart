<%--
  Created by IntelliJ IDEA.
  User: Илья
  Date: 26.02.2019
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />

  <title>Welcome</title>

    <meta name="description" content="Описание страницы" />
    <meta name="keywords" content="Ключевые слова" />
    <link rel="stylesheet" type="text/css" href="w3.css" media="screen" />
  </head>

  <body background="\images\buss.jpg">
    <div id="page">
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

  <section id="content">

    <h1 align="center" style="color: azure">Welcome to the bus traffic simulation!</h1>

    <p align="center" style="color: azure">Welcome at bus traffic simulation site. Please login to start new simulation.</p>

    <FORM action="/hello-moto" method="GET">
    <p align="center"><INPUT type="text" id="uname" name="uname" placeholder="LogIn" align="center"></p>
    <p align="center"><INPUT type="password" align="center" id="upassword" name="upassword" placeholder="Password"></p>

      <p align="center"><INPUT type="submit" value="LogIn" align="center"></p>
    </FORM>

  </section>
<div id="footer">
    <footer>
    <p align="left" style="color: azure">&copy; All rights reserved</p>
  </footer>
</div>
</div>

</body>

</html>
