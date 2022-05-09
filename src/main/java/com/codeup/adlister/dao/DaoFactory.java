package com.codeup.adlister.dao;

public class DaoFactory {

    // F
    private static Ads adsDao;
    private static Users usersDao;
    private static Reviews reviewsDao;
    private static Config config = new Config();


    // METHS
    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Reviews getReviewsDao() {
        if (reviewsDao == null) {
            reviewsDao = new MySQLReviewsDao(config);
        }
        return reviewsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
