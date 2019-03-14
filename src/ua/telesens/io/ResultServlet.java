package ua.telesens.io;

import ua.telesens.io.tables.ResultTable;
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
public class ResultServlet extends HttpServlet {
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
                ResultSet resultSet = statement.executeQuery("SELECT * FROM result_table");

                List<ResultTable> resultTableList = new ArrayList<>();

                while (resultSet.next()){
                    ResultTable rInfo = new ResultTable();

                    rInfo.setN(resultSet.getInt("N"));
                    rInfo.setLocalTime(resultSet.getDouble("DurationLocal"));
                    rInfo.setDaysIn(resultSet.getInt("DaysInSimulation"));
                    rInfo.setTotalRounds(resultSet.getInt("TotalRounds"));
                    rInfo.setPassTraveled(resultSet.getInt("PassTraveled"));
                    rInfo.setPassLeft(resultSet.getInt("PassLeft"));

                    resultTableList.add(rInfo);

                }

                request.setAttribute("list", resultTableList);
                request.getRequestDispatcher("ResultPage.jsp").forward(request, response);

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
