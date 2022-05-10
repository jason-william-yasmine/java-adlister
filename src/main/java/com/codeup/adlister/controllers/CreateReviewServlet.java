package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Review;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateReviewServlet", urlPatterns = "/reviews/create")
public class CreateReviewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;
        }

        req.getRequestDispatcher("/WEB-INF/reviews/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Get data from jsp form
//        long userReviewId = Long.parseLong(req.getParameter("user_review_id"));
        int userRating = Integer.parseInt(req.getParameter("tut-rating"));
        String tutUrl = req.getParameter("tut-url");
        String tutThumbLogo = req.getParameter("tut-thumb-logo");
        String tutDescription = req.getParameter("tut-description");
        double tutCost = Double.parseDouble(req.getParameter("tut-cost"));
        String  revName = req.getParameter("rev-name");
        String tutReview = req.getParameter("rev-comments");
        String tutCat = req.getParameter("tut-cat");

        // validate input
        boolean inputHasErrors = revName.isEmpty() ||
                tutUrl.isEmpty() || userRating < 0 || tutDescription.isEmpty() ||
                tutCat.isEmpty();

        if (inputHasErrors) {
            resp.sendRedirect("/reviews/create");
            return;
        }

        // Create and Save new Review
        Review review = new Review(userRating, tutUrl, tutThumbLogo, tutDescription, tutCost, tutCat, tutReview, revName);
        DaoFactory.getReviewsDao().insert(review);
        req.getSession().setAttribute("review", review);
        resp.sendRedirect("/profile");


    }
}
