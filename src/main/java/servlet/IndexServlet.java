package servlet;

import java.io.IOException;

import bean.ExampleFormularBean;
import manager.ExampleFormularDataManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String vorname = request.getParameter("vorname");
        String nachname = request.getParameter("nachname");
        int alter = Integer.parseInt(request.getParameter("alter"));

        ExampleFormularDataManager manager =
                new ExampleFormularDataManager();

        ExampleFormularBean bean =
                manager.getBean(vorname, nachname, alter);

        request.getSession().setAttribute("person", bean);

        response.sendRedirect("ExampleFormular.jsp");
    }
}
