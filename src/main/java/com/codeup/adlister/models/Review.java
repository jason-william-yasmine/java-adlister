package com.codeup.adlister.models;

public class Review {
    private long id;
    private long userReviewId;
    private String reviewName;
    private String description;

    public Ad(long id, long userReviewId, String reviewName, String description) {
        this.id = id;
        this.userReviewId = userReviewId;
        this.reviewName = reviewName;
        this.description = description;
    }

    public Ad(long userReviewId, String reviewName, String description) {
        this.userReviewId = userReviewId;
        this.reviewName = reviewName;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getuserReviewId() {
        return userReviewId;
    }

    public void setuserReviewId(long userReviewId) {
        this.userReviewId = userReviewId;
    }

    public String getreviewName() {
        return reviewName;
    }

    public void setreviewName(String reviewName) {
        this.reviewName = reviewName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
