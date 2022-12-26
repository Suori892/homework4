package com.profitsoft.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebFilter("/*")
public class AuthenticationFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;

        if (checkAuthenticationStatus(httpRequest, httpResponse)) {
            return;
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }

    private boolean checkAuthenticationStatus(HttpServletRequest request,
                                              HttpServletResponse response)
        throws ServletException, IOException {
        Boolean authentication = (Boolean) request.getSession().getAttribute("authentication");
        switch (request.getRequestURI()) {
            case "/login", "/" -> {
                if (authentication != null && authentication) {
                    request.getRequestDispatcher("welcome.jsp").forward(request, response);
                    return true;
                }
            }
            case "/userList", "/welcome" -> {
                if (authentication == null || !authentication) {
                    request.setAttribute("error", "Please login to view this page!");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                    return true;
                }
            }
        }
        return false;
    }

}
