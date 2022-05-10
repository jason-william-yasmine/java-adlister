package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

public class User {

    // F
    private long id;
    private String username;
    private String email;
    private String password;
    private String avatar;

    // CON
    public User(String username, String email, String password, String avatar) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.avatar = avatar;
    }

    // GETS
    public long getId() {
        return id;
    }
    public String getUsername() {
        return username;
    }
    public String getEmail() {
        return email;
    }
    public String getPassword() {
        return password;
    }
    public String getAvatar() {
        return avatar;
    }

    // SETS
    public void setId(long id) {
        this.id = id;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }




}  //  <-- END
