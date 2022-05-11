package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Reviews;
import com.codeup.adlister.models.Review;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexHomeServlet", urlPatterns = "/index-home")
public class IndexHomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Used for Search by title
        String title = req.getParameter("title");
        String cat = req.getParameter("cat");
        System.out.println(cat);

        if (title != null){
            req.getSession().setAttribute("reviews", DaoFactory.getReviewsDao().getReviewByTitle(title));
            req.getSession().removeAttribute("title");
        } else if(cat != null) {
            req.getSession().setAttribute("reviews", DaoFactory.getReviewsDao().getReviewByCat(cat));
            req.getSession().removeAttribute("title");
        } else {
            req.getSession().setAttribute("reviews", DaoFactory.getReviewsDao().all());
        }

        // Counting Reviews
        List<Review> reviews = DaoFactory.getReviewsDao().all();
        req.setAttribute("rNumber", reviews.size());

        // Counting Users
        List<User> users = DaoFactory.getUsersDao().all();
        req.setAttribute("uNumber", users.size());

        // Stand
        req.getRequestDispatcher("index-home.jsp").forward(req, resp);
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
