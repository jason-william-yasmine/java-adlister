package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {

        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        String q = "SELECT * FROM users WHERE username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(q);
            System.out.println(ps);
            ps.setString(1, username);

            return extractUser(ps.executeQuery());

        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username (findByUsername())", e);
        }
    }

    @Override
    public Long insert(User user) {
        String q = "INSERT INTO tech_tut_db.users (username, email, password, gh_url, profile_pix_url, path) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement s = connection.prepareStatement(q, Statement.RETURN_GENERATED_KEYS);
            s.setString(1, user.getUsername());
            s.setString(2, user.getEmail());
            s.setString(3, user.getPassword());
            s.setString(4, user.getGhUrl());
            s.setString(5, user.getProfilePixUrl());
            s.setString(6, user.getCareerPath() );
            s.executeUpdate();
            ResultSet rs = s.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getString("gh_url"),
                rs.getString("profile_pix_url"),
                rs.getString("path")
        );
    }

}
