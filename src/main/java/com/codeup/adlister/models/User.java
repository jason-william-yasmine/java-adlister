package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

public class User {

    // F
    private long id;
    private String username;
    private String email;
    private String password;
    private String ghUrl;
    private String profilePixUrl;
    private String careerPath;

    // CON
    // 1
    public User() {}
    // 2
    public User(long id, String username, String email, String password, String ghUrl, String profilePixUrl, String careerPath) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.ghUrl = ghUrl;
        this.profilePixUrl = profilePixUrl;
        this.careerPath = careerPath;
    }
    // 3
    public User(long id, String username, String email, String password, String profilePixUrl) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.profilePixUrl = profilePixUrl;

    }
    // 4
    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
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
        return ghUrl;
    }
    public String getProfilePixUrl() {
        return profilePixUrl;
    }
    public String getCareerPath() {
        return careerPath;
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
        this.password = Password.hash(password);
    }
    public void setGhUrl(String ghUrl) {
        this.ghUrl = ghUrl;
    }
    public void setProfilePixUrl(String profilePixUrl) {
        this.profilePixUrl = profilePixUrl;
    }
    public void setCareerPath(String careerPath) {
        this.careerPath = careerPath;
    }


}  //  <-- END
