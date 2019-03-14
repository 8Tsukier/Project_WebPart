package ua.telesens.io;

import ua.telesens.io.tables.RouteGeneralInfo;
import ua.telesens.io.tables.RouteT;
import ua.telesens.io.tables.StationT;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConnectToBD extends javax.servlet.http.HttpServlet{

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException{

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3306/trafficsimulation" +
               "?verifyServerCertificate=false" + "&useSSL=false" +
               "&requireSSL=false" + "&useLegacyDatetimeCode=false" +
               "&amp"+ "&serverTimezone=UTC";

        try {
           Connection connection = DriverManager.getConnection(url,"root","root");
           if(!connection.isClosed()){
               System.out.println("Connected!");

               Statement statement = connection.createStatement();
               ResultSet resultSet = statement.executeQuery("SELECT * FROM routes_table");
//Reading all routes
               List<RouteT> routesList = new ArrayList<>();

               while (resultSet.next()){
                   RouteT rInfo = new RouteT();

                   rInfo.setRouteNumber(resultSet.getInt("RouteNumber"));
                   rInfo.setRoundAbout(resultSet.getString("Roundabout"));
                   rInfo.setNumberOfBusses(resultSet.getInt("NumberOfBuses"));
                   rInfo.setNumberOfStations(resultSet.getInt("NumberOfStations"));
                   rInfo.setAllStations(resultSet.getString("ListOfStations"));

                   routesList.add(rInfo);
               }

               resultSet = statement.executeQuery("SELECT * FROM stations_table");

               List<StationT> stationsList = new ArrayList<>();

               while (resultSet.next()){
                   StationT rInfo = new StationT();

                   rInfo.setId(resultSet.getInt("Id"));
                   rInfo.setName(resultSet.getString("Name"));
                   rInfo.setBig(resultSet.getString("Big"));
                   rInfo.setBelongToRoutes(resultSet.getString("BelongToRoutes"));

                   stationsList.add(rInfo);
               }

               request.setAttribute("listStation", stationsList);
               request.setAttribute("listRoute", routesList);
               request.getRequestDispatcher("ResourcesPage.jsp").forward(request, response);
           }
           connection.close();
           if(connection.isClosed()){
               System.out.println("Connection was closed. Bye, bye...");
           }
       } catch (SQLException e) {
           System.out.println(e);
       }
    }
}
