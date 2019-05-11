package dev.chenjr.tracer.db;

import android.util.Log;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.jdbc.JdbcConnectionSource;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import dev.chenjr.tracer.Bean.User;

import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_EXCEPTION_ACCURS;
import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_FAIL_PASSWORD_MISMATCH;
import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_FAIL_USER_NOT_FOUND;
import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_SUCCESS;

public class DatabaseHelper {
    private final static String DATABASE_URL = "jdbc:mysql://119.23.34.173/Tracer";
    private final static String DB_USER = "tracer";
    private final static String DB_PASSWORD = "tracer_db";
    private static final String TAG = "DatabaseHelper";
    private static DatabaseHelper instance;

    private Dao<User, Integer> userDao;
    private User currentUser;
//    private Dao<Order, Integer> orderDao;

    private DatabaseHelper() throws IOException {
        JdbcConnectionSource connectionSource = null;
        try {
            // create our data source
            connectionSource = new JdbcConnectionSource(DATABASE_URL, DB_USER, DB_PASSWORD);
            // setup our database and DAOs
            setupDatabase(connectionSource);

            System.out.println("\n\nIt seems to have worked\n\n");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // destroy the data source which should close underlying connections
            if (connectionSource != null) {
                connectionSource.close();
            }
        }

    }

    private void setupDatabase(JdbcConnectionSource connectionSource) throws SQLException {
        userDao = DaoManager.createDao(connectionSource, User.class);
    }

    public Integer authUser(String user, String passwordMD5) {
        try {

            List<User> account = userDao.queryForEq("account", user);

            if (account == null || account.isEmpty()){
                return LOGIN_FAIL_USER_NOT_FOUND;
            }
            currentUser = account.get(0);
            Log.d(TAG, "authUser: "+passwordMD5+"\n"+account.get(0).getPswd());
            return passwordMD5.equals(currentUser.getPswd())?LOGIN_SUCCESS:LOGIN_FAIL_PASSWORD_MISMATCH;

        } catch (SQLException e) {
            e.printStackTrace();
            return LOGIN_EXCEPTION_ACCURS;
        }

    }

    /**
     * 单例获取该Helper
     *
     * @return
     */
    public static synchronized DatabaseHelper getHelper() throws IOException {
        if (instance == null) {
            synchronized (DatabaseHelper.class) {
                if (instance == null)
                    instance = new DatabaseHelper();
            }
        }

        return instance;
    }

    public User getCurrentUser() {
        return currentUser;
    }
}
