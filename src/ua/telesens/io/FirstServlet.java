package ua.telesens.io;

import java.io.IOException;
import java.io.PrintWriter;

public class FirstServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String name = request.getParameter("uname");
        String password = request.getParameter("upassword");

        PrintWriter pw = response.getWriter();

        if((name == null)&(password == null)){
            response.sendRedirect("/");
        }
        else if((name.equals("admin"))&(password.equals("123"))){
            response.sendRedirect("/connectionForStart");
//            pw.println("<html>");
//            pw.println("<title>");
//            pw.println("SomeOtherPage");
//            pw.println("</title>");
//            pw.println("<body background=\"\\images\\buss.jpg\">");
//            pw.println("<h1 style=\"color: azure\">Hello " + name + "!</h1>");
//            pw.println("</body>");
//            pw.println("</html>");
        }
        else{
            pw.println("<html>");
            pw.println("<title>");
            pw.println("SomeOtherPage");
            pw.println("</title>");
            pw.println("<body background=\"\\images\\buss.jpg\">");
            pw.println("<p align=\"center\" style=\"color: azure\">No user found!</p>");
            pw.println("<div>");
            pw.println("<p align=\"center\"><button onclick=\"location.href='/'\" align=\"center\">Back to main</button></p>");
            pw.println("</div>");
            pw.println("</body>");
            pw.println("</html>");
        }

    }
}
