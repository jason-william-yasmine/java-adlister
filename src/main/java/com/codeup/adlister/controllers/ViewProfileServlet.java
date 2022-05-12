package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Review;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Review> reviews = DaoFactory.getReviewsDao().all();
        request.setAttribute("reviews", reviews );

        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //  Used for Search
        String title = req.getParameter("title");
        System.out.println(title);

        //  Used for "Read More" Buttons
        int id = Integer.parseInt(req.getParameter("id"));
        Review review = DaoFactory.getReviewsDao().getReviewById(id);

        if(review != null) {
            req.getSession().setAttribute("review", review);
            resp.sendRedirect("/reviews/single");
        }
    }
}
