package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

public class User {

    // F
    private long id;
    private String username;
    private String email;
    private String password;
    private String GhUrl;
    private String profile_pix_url;
    private String path;

    public User() {};

<<<<<<< HEAD
    public User(long id, String username, String email, String password, String ghUrl, String profile_pix_url, String path) {
=======
    public User(long id, String username, String email, String password, String ghUrl, String profile_pix_url, String path, String profilePixUrl, String careerPath) {
>>>>>>> 98cd5440b0432b5f3a5ac5bd3aff5cb89f9b9c46
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
<<<<<<< HEAD
        this.ghUrl = ghUrl;
        this.profile_pix_url = profile_pix_url;
        this.path = path;
    }

    public User(String username, String email, String password, String ghUrl, String profile_pix_url, String path) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.ghUrl = ghUrl;
        this.profile_pix_url = profile_pix_url;
        this.path = path;
    }

    public long getId() {
        return id;
    }
=======
        this.GhUrl = ghUrl;
        this.profile_pix_url = profile_pix_url;
        this.path = path;
        this.profilePixUrl = profilePixUrl;
        this.careerPath = careerPath;
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
    public String getGhUrl() {
        return GhUrl;
    }
    public String getProfilePixUrl() {
        return profilePixUrl;
    }
    public String getCareerPath() {
        return careerPath;
    }
>>>>>>> 98cd5440b0432b5f3a5ac5bd3aff5cb89f9b9c46

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
        this.password = password;
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
}  //  <-- END