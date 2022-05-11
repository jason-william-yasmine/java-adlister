package com.codeup.adlister.dao;

import com.codeup.adlister.models.Review;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    public List<User> all();
    User findByUsername(String username);

    User findByEmail(String email);

    Long insert(User user);
}
