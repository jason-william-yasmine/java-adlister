package com.codeup.adlister.models;

public class Review {

    // F
    private long id;
    private long userReviewId;
    private int userRating;
    private String tutUrl;
    private String tutThumbUrl;
    private String tutDescription;
    private double tutCost;
    private String reviewName;
    private int reviewViews;
    private int reviewUpVotes;

    // CON
    // 1
    public Review() {
    }
    // 2
    public Review(long id, long userReviewId, int userRating, String tutUrl, String tutThumbUrl, String tutDescription, double tutCost, String reviewName, int reviewViews, int reviewUpVotes) {
        this.id = id;
        this.userReviewId = userReviewId;
        this.userRating = userRating;
        this.tutUrl = tutUrl;
        this.tutThumbUrl = tutThumbUrl;
        this.tutDescription = tutDescription;
        this.tutCost = tutCost;
        this.reviewName = reviewName;
        this.reviewViews = reviewViews;
        this.reviewUpVotes = reviewUpVotes;
    }
    // 3
    public Review(long userReviewId, int userRating, String tutUrl, String tutThumbUrl, String tutDescription, double tutCost, String reviewName, int reviewViews, int reviewUpVotes) {
        this.userReviewId = userReviewId;
        this.userRating = userRating;
        this.tutUrl = tutUrl;
        this.tutThumbUrl = tutThumbUrl;
        this.tutDescription = tutDescription;
        this.tutCost = tutCost;
        this.reviewName = reviewName;
        this.reviewViews = reviewViews;
        this.reviewUpVotes = reviewUpVotes;
    }


    // GETS
    public long getId() {
        return id;
    }
    public long getUserReviewId() {
        return userReviewId;
    }
    public int getUserRating() {
        return userRating;
    }
    public String getTutUrl() {
        return tutUrl;
    }
    public String getTutThumbUrl() {
        return tutThumbUrl;
    }
    public String getTutDescription() {
        return tutDescription;
    }
    public double getTutCost() {
        return tutCost;
    }
    public String getReviewName() {
        return reviewName;
    }
    public int getReviewViews() {
        return reviewViews;
    }
    public int getReviewUpVotes() {
        return reviewUpVotes;
    }

    // SETS
    public void setId(long id) {
        this.id = id;
    }
    public void setUserReviewId(long userReviewId) {
        this.userReviewId = userReviewId;
    }
    public void setUserRating(int userRating) {
        this.userRating = userRating;
    }
    public void setTutUrl(String tutUrl) {
        this.tutUrl = tutUrl;
    }
    public void setTutThumbUrl(String tutThumbUrl) {
        this.tutThumbUrl = tutThumbUrl;
    }
    public void setTutDescription(String tutDescription) {
        this.tutDescription = tutDescription;
    }
    public void setTutCost(double tutCost) {
        this.tutCost = tutCost;
    }
    public void setReviewName(String reviewName) {
        this.reviewName = reviewName;
    }
    public void setReviewViews(int reviewViews) {
        this.reviewViews = reviewViews;
    }
    public void setReviewUpVotes(int reviewUpVotes) {
        this.reviewUpVotes = reviewUpVotes;
    }

}  //  <--END
