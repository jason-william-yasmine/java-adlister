package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

public class User {
    private long id;
    private String username;
    private String email;
    private String password;
    private String ghUrl;
    private String profile_pix_url;
    private String path;

    public User() {}

    public User(String username, String email, String password, String ghUrl, String profilePixUrl, String path) {
        this.username = username;
        this.email = email;
        setPassword(password);
        this.ghUrl = ghUrl;
        this.profile_pix_url = profilePixUrl;
        this.path = path;

    }

    public User(long id, String username, String email, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public User(long id, String username, String email, String password, String ghUrl, String profilePixUrl, String path) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.ghUrl = ghUrl;
        this.profile_pix_url = profilePixUrl;
        this.path = path;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = Password.hash(password);
    }

    public String getGhUrl() {
        return ghUrl;
    }

    public void setGhUrl(String ghUrl) {
        this.ghUrl = ghUrl;
    }

    public String getProfile_pix_url() {
        return profile_pix_url;
    }

    public void setProfile_pix_url(String profile_pix_url) {
        this.profile_pix_url = profile_pix_url;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
