package com.profitsoft.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {

        String login = req.getParameter("login");
        String password = req.getParameter("password");
        checkFields(req, resp, login, password);
    }

    private void checkFields(HttpServletRequest req, HttpServletResponse resp,
                             String login, String password) throws ServletException, IOException {
        if (login.isEmpty() || password.isEmpty()) {
            req.setAttribute("error", "You have empty fields");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else if (login.equals("admin") && password.equals("admin")) {
            req.getSession().setAttribute("authentication", true);
            req.getRequestDispatcher("welcome.jsp").forward(req, resp);
        } else {
            req.setAttribute("error", "Oops invalid login or password");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
