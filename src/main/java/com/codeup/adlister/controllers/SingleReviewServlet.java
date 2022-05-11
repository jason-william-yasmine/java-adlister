package com.codeup.adlister.controllers;

import com.codeup.adlister.models.Review;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(displayName = "SingleReviewServlet", urlPatterns = "/reviews/single")
public class SingleReviewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Review review = (Review) req.getSession().getAttribute("review");
        System.out.println(review);

        req.getRequestDispatcher("/WEB-INF/reviews/single.jsp").forward(req, resp);
    }
}
