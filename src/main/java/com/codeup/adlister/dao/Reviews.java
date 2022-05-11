package com.codeup.adlister.dao;

import com.codeup.adlister.models.Review;

import java.util.List;

public interface Reviews {

    /**
     *      Following Meths will be found in MySQLReviewsDao
     * @return
     */

    // Gens Review List
    List<Review> all();

    // Gen Review
    Long insert(Review review);

    // Find Review by id
    Review getReviewById(long id);

    // Delete Review
    void delete(Review review);


    void edit(Review reviewObject, String title, String description);
}
