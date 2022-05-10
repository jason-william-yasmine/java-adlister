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

@WebServlet(name = "IndexHomeServlet", urlPatterns = "/index-home")
public class IndexHomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("reviews", DaoFactory.getReviewsDao().all());

        List<Review> reviews = DaoFactory.getReviewsDao().all();
        System.out.println(reviews);

        req.getRequestDispatcher("index-home.jsp").forward(req, resp);
    }

}
