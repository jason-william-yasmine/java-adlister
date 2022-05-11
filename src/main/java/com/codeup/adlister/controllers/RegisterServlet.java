package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        // Get data from jsp form
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm-password");
        String avatar = request.getParameter("avatar");


        User user1 = DaoFactory.getUsersDao().findByUsername(username);

        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(passwordConfirmation))
                || (user1 != null);

        System.out.println(user1);

        if (inputHasErrors) {


            request.getSession().setAttribute("registerUsername", username);
            response.sendRedirect("/register?error");

            return;
        }

        // create and save a new user
        User user = new User(username, email, password, avatar);
        DaoFactory.getUsersDao().insert(user);
        request.getSession().setAttribute("user", user);
        response.sendRedirect("/profile");
    }
}
