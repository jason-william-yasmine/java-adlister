package com.codeup.adlister.dao;

public class DaoFactory {

    // F
    private static Users usersDao;
    private static Reviews reviewsDao;
    private static Config config = new Config();


    // METHS
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
