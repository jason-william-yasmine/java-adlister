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
    request.getSession().setAttribute("review", grabId);

    // Test in Term
    System.out.println("grabId.getTitle() = " + grabId.getTitle());
    System.out.println("grabId.getDescription() = " + grabId.getReview());
    System.out.println("grabId.getThumb()= " + grabId.getThumb());
    System.out.println("grabId.getTutorialURL()= " + grabId.getTutorialURL());
    System.out.println("grabId.getRating()= " + grabId.getRating());
    System.out.println("grabId.getCat()= " + grabId.getCat());

    // Set Old data into Session
    request.getSession().setAttribute("existingTitle", grabId.getTitle());
    request.getSession().setAttribute("existingDescription", grabId.getReview());
    request.getSession().setAttribute("existingThumb", grabId.getThumb());
    request.getSession().setAttribute("existingTutorialURL", grabId.getTutorialURL());
    request.getSession().setAttribute("existingRating", grabId.getRating());
    request.getSession().setAttribute("existingCat", grabId.getCat());

    // Stand
    request.getRequestDispatcher("/WEB-INF/reviews/edit.jsp").forward(request, response);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Review reviewObject = (Review) request.getSession().getAttribute("review");

        System.out.println("singleReview = " + reviewObject);

        request.setAttribute("existingTitle", reviewObject.getTitle());
        request.setAttribute("existingReviewComments", reviewObject.getReview());
        request.setAttribute("existingRating", reviewObject.getRating());
        request.setAttribute("existingTutorialURL", reviewObject.getTutorialURL());
        request.setAttribute("existingThumb", reviewObject.getThumb());
        request.setAttribute("existingCat", reviewObject.getCat());

        System.out.println("reviewObject.getTitle() = " + reviewObject.getTitle());

        request.setAttribute("reviewObject", reviewObject);
//
//        request.setAttribute("existingReviewComments", reviewObject.getReview());
//        request.setAttribute("existingTitle", reviewObject.getTitle());
//        request.setAttribute("existingThumb", reviewObject.getThumb());


        //======SETTING VALUES IN THE FORM=======//
        String title = request.getParameter("title");
        String reviewComments = request.getParameter("reviewComments");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String tutorialURL = request.getParameter("tutorialURL");
        String thumb = request.getParameter("thumb");
        String cat = request.getParameter("cat");


        // Run Update
        DaoFactory.getReviewsDao().edit(reviewObject,
                title,
                reviewComments,
                rating,
                tutorialURL,
                thumb,
                cat);


        // Redirect
        response.sendRedirect("/profile");

    }
}
