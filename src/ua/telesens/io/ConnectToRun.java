package ua.telesens.io;

import ua.telesens.io.tables.RouteGeneralInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ConnectToRun")
public class ConnectToRun extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
                ResultSet resultSet = statement.executeQuery("SELECT * FROM routegeneralinfo");

                List<RouteGeneralInfo> routeGeneralInfoList = new ArrayList<>();

                while (resultSet.next()){
                    RouteGeneralInfo rInfo = new RouteGeneralInfo();

                    rInfo.setId(resultSet.getInt("Route_id"));
                    rInfo.setRouteNumber(resultSet.getInt("RouteNumber"));
                    rInfo.setNumberOfStations(resultSet.getInt("NumberOfStations"));
                    rInfo.setNumberOfBuses(resultSet.getInt("NumberOfBusses"));

                    routeGeneralInfoList.add(rInfo);
                }

                request.setAttribute("list", routeGeneralInfoList);
                request.getRequestDispatcher("ControlPage.jsp").forward(request, response);

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
