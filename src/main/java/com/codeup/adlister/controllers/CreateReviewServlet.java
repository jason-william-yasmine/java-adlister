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
//
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Get data from jsp form
        int uid = 1;                            // <-- REPLACE WITH USER SESSION
        System.out.println(uid);

        String title = req.getParameter("title");
        String reviewComment = req.getParameter("review");
        int rating = Integer.parseInt(req.getParameter("rating"));
        String tutorialURL = req.getParameter("tutorialURL");
        String thumb = req.getParameter("thumb");
        String cat = req.getParameter("cat");

        // validate input
        boolean inputHasErrors = title.isEmpty() ||
                tutorialURL.isEmpty() || rating < 0 || reviewComment.isEmpty() ||
                cat.isEmpty();


        if (inputHasErrors) {
            req.getSession().setAttribute("title", title);
            req.getSession().setAttribute("review", reviewComment);
            req.getSession().setAttribute("rating", rating);
            req.getSession().setAttribute("tutorialURL", tutorialURL);
            req.getSession().setAttribute("thumb", thumb);
            req.getSession().setAttribute("cat", cat);
            resp.sendRedirect("/reviews/create?error");
            return;
        }

        req.setAttribute("title", title);
        req.setAttribute("reviewComment", reviewComment);
        req.setAttribute("rating", rating);
        req.setAttribute("tutorialURL", tutorialURL);
        req.setAttribute("thumb", thumb);
        req.setAttribute("cat", cat);

        // Create and Save new Review
        Review review = new Review(uid, title, reviewComment, rating, tutorialURL, thumb, cat);

        DaoFactory.getReviewsDao().insert(review);

        req.getSession().setAttribute("review", review);

        resp.sendRedirect("/profile");


    }
}
