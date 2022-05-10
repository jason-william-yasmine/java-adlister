package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {

    // F
    private Connection connection;

    // CON
    public MySQLUsersDao(Config config) {

        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database! MySQLUsersDao()", e);
        }
    }

    // OVR
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
    public Long insert(User u) {
        String q = "INSERT INTO tech_tut_db.users (username, email, password, avatar) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement s = connection.prepareStatement(q, Statement.RETURN_GENERATED_KEYS);
            s.setString(1, u.getUsername());
            s.setString(2, u.getEmail());
            s.setString(3, u.getPassword());
            s.setString(4, u.getAvatar());

            s.executeUpdate();
            ResultSet rs = s.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user (insert()) ", e);
        }
    }

    // HELPER METHS
    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getString("avatar")
        );
    }

}
