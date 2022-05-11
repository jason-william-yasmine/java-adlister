package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Review;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "DeleteReviewServlet", urlPatterns = "/reviews/delete")
public class DeleteReviewServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("WEB-INF/reviews/profile.jsp").forward(request, response);

        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
            //retrieve ad
            int reviewId = Integer.parseInt(request.getParameter("singleReview"));
            Review singleReview = DaoFactory.getReviewsDao().getReviewById(reviewId);
            DaoFactory.getReviewsDao().delete(singleReview);
            response.sendRedirect("/profile");
            //delete ad


        }
    }


@WebServlet(displayName = "DeleteReviewServlet", urlPatterns = "/reviews/delete")
public class DeleteReviewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("Visited the Delete Servlet");

        resp.sendRedirect("/index-home");
    }
}

