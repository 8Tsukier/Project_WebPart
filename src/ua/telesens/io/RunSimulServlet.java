package ua.telesens.io;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RunSimulServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nWeeks = request.getParameter("nweeks");
        int numberOfWeeks = Integer.valueOf(nWeeks);

        if(numberOfWeeks <= 0){
            response.sendRedirect("/");
        }else {
        Process proc = Runtime.getRuntime().exec("java -jar D:\\FinalTask.jar " + numberOfWeeks);
        synchronized (proc) {
            try {
                proc.waitFor();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("/ResultServlet");
    }
    }
}
