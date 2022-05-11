package com.codeup.adlister.models;

public class Review {

    // F
    private long id;
    private long uid;
    private String title;
    private String review;
    private int rating;
    private String tutorialURL;
    private String thumb;
    private String cat;


    // CON
    // 1

    public Review(long id, long uid, String title, String review, int rating, String tutorialURL, String thumb, String cat) {
        this.id = id;
        this.uid = uid;
        this.title = title;
        this.review = review;
        this.rating = rating;
        this.tutorialURL = tutorialURL;
        this.thumb = thumb;
        this.cat = cat;
    }
    public Review(int uid, String title, String review, int rating, String tutorialURL, String thumb, String cat) {
        this.uid = uid;
        this.title = title;
        this.review = review;
        this.rating = rating;
        this.tutorialURL = tutorialURL;
        this.thumb = thumb;
        this.cat = cat;
    }

    // GETS
    public long getId() {
        return id;
    }
    public long getUid() {
        return uid;
    }
    public String getTitle() {
        return title;
    }
    public String getReview() {
        return review;
    }
    public int getRating() {
        return rating;
    }
    public String getTutorialURL() {
        return tutorialURL;
    }
    public String getThumb() {
        return thumb;
    }
    public String getCat() {
        return cat;
    }

    // SETS
    public void setId(long id) {
        this.id = id;
    }
    public void setUid(long uid) {
        this.uid = uid;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public void setReview(String review) {
        this.review = review;
    }
    public void setRating(int rating) {
        this.rating = rating;
    }
    public void setTutorialURL(String tutorialURL) {
        this.tutorialURL = tutorialURL;
    }
    public void setThumb(String thumb) {
        this.thumb = thumb;
    }
    public void setCat(String cat) {
        this.cat = cat;
    }

}  //  <--END
