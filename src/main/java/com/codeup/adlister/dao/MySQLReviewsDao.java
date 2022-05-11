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
            throw new RuntimeException("Error connecting to DB (MySQLReviewsDao())", e);
        }
    }

    // OVR
    @Override
    public List<Review> all() {
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement("SELECT * FROM reviews");
            ResultSet rs = ps.executeQuery();
            return createReviewsFromRS(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all reviews (MySQLReviewsDAO all()", e);
        }
    }

    @Override
    public Long insert(Review r) {
        try {
            String insertQuery = "INSERT INTO reviews(" +
                    "uid, title, review, rating, tutorialURL, thumb, cat) " +
                    " VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, r.getUid());
            ps.setString(2, r.getTitle());
            ps.setString(3, r.getReview());
            ps.setInt(4, r.getRating());
            ps.setString(5, r.getTutorialURL());
            ps.setString(6, r.getThumb());
            ps.setString(7, r.getCat());
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new review (insert(Review r)", e);
        }
    }

    @Override
    public Review getReviewById(long id) {
        String q = "SELECT * FROM reviews WHERE id = ? LIMIT 1";
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
            String deleteQuery = "DELETE FROM reviews WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(deleteQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, (int) review.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
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
                rs.getLong("uid"),
                rs.getString("title"),
                rs.getString("review"),
                rs.getInt("rating"),
                rs.getString("tutorialURL"),
                rs.getString("thumb"),
                rs.getString("cat")
        );
    }

}  //  <--END
