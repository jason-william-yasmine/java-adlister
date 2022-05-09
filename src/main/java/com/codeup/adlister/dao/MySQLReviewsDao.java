package com.codeup.adlister.dao;

import com.codeup.adlister.models.Review;
import java.util.List;
import com.mysql.cj.jdbc.Driver;                                //  <--IMPORTANT
import java.sql.*;
import java.util.ArrayList;                                     //  <--IMPORTANT

public class MySQLReviewsDao implements Reviews{

    // F
    private Connection connection;

    // CON
    public MySQLReviewsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to DB (MySQLReviewsDao");
        }
    }

    // OVR
    @Override
    public List<Review> all() {
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement("SELECT * FROM tech_tut_db.Tech_Tut_Reviews");
            ResultSet rs = ps.executeQuery();
            return createReviewsFromRS(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all reviews (MySQLReviewsDAO all()", e);
        }
    }

    @Override
    public Long insert(Review review) {
        try {
            String insertQuery = "INSERT INTO tech_tut_db.Tech_Tut_Reviews(" +
                    "user_review_id, user_review, user_rating, tut_url, " +
                    "tut_thumb_url, tut_description, tut_cost, review_title, " +
                    "review_views, review_upvotes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, review.getId());
            stmt.setLong(2, review.getUserReviewId());
            stmt.setInt(3, review.getUserRating());
            stmt.setString(4, review.getTutUrl());
            stmt.setString(5, review.getTutUrl());
            stmt.setString(6, review.getTutThumbUrl());
            stmt.setString(7, review.getTutDescription());
            stmt.setDouble(8, review.getTutCost());
            stmt.setString(9, review.getReviewName());
            stmt.setInt(10, review.getReviewViews());
            stmt.setInt(3, review.getReviewUpVotes());

            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public Review getReviewById(long id) {
        String q = "SELECT * FROM tech_tut_db.Tech_Tut_Reviews WHERE id = ? LIMIT 1";
        try {
            PreparedStatement s = connection.prepareStatement(q);
            s.setLong(1, id);
            ResultSet rs = s.executeQuery();
            if (! rs.next()) {
                return null;
            }
            return extractReview(rs);
        } catch(SQLException e) {
            throw new RuntimeException("Error finding Review by ID (getReviewById()) ", e);
        }    }

    @Override
    public void delete(Review review) {
        try {
            String deleteQuery = "DELETE FROM tech_tut_db.Tech_Tut_Reviews WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(deleteQuery, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, review.getId());
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    // HELP METHS
    private List<Review> createReviewsFromRS(ResultSet rs) throws SQLException {
        List<Review> reviews = new ArrayList<>();
        while (rs.next()) {
            reviews.add(extractReview(rs));
        }
        return reviews;
    }


    private Review extractReview(ResultSet rs) throws SQLException {
        return new Review(
                rs.getLong("id"),
                rs.getLong("user_review_id"),
                rs.getInt("user_rating"),
                rs.getString("tut_url"),
                rs.getString("tut_thumb_url"),
                rs.getString("tut_description"),
                rs.getDouble("tut_cost"),
                rs.getString("review_name"),
                rs.getInt("review_views"),
                rs.getInt("review_up_votes")
        );
    }

}  //  <--END
