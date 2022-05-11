package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Review;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Long.parseLong;

@WebServlet(name = "EditReviewServlet", urlPatterns = "/reviews/edit/*")
public class EditReviewServlet extends HttpServlet{ protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String reviewId = request.getPathInfo().substring(1);

    Review grabId = DaoFactory.getReviewsDao().getReviewById(Long.parseLong(reviewId));

        request.getSession().setAttribute("review",grabId);

        System.out.println("grabId.getDescription() = " + grabId.getReview());
        System.out.println("grabId.getDescription() = " + grabId.getTitle());


        request.setAttribute("existingTitle", grabId.getTitle());
        request.setAttribute("existingDescription", grabId.getReview());

            request.getRequestDispatcher("/WEB-INF/reviews/edit.jsp").forward(request, response);


}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {




        Review reviewObject = (Review) request.getSession().getAttribute("review");

        System.out.println("singleReview = " + reviewObject);

        request.setAttribute("existingTitle", reviewObject.getTitle());
        request.setAttribute("existingDescription", reviewObject.getReview());

        System.out.println("reviewObject.getTitle() = " + reviewObject.getTitle());
        request.setAttribute("reviewObject", reviewObject);
        request.setAttribute("existingTitle", reviewObject.getTitle());
        request.setAttribute("existingDescription", reviewObject.getReview());


        //======SETTING VALUES IN THE FORM=======//
        String title = request.getParameter("title");
        String description = request.getParameter("description");


        DaoFactory.getReviewsDao().edit(reviewObject, title, description);
        response.sendRedirect("/profile");

    }
}
