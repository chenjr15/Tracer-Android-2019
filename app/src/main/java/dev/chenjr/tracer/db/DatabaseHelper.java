package dev.chenjr.tracer.db;

import android.util.Log;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.jdbc.JdbcConnectionSource;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import dev.chenjr.tracer.bean.User;


public class DatabaseHelper {
    private final static String DATABASE_URL = "jdbc:mysql://119.23.34.173/Tracer";
    private final static String DB_USER = "tracer";
    private final static String DB_PASSWORD = "tracer_db";
    private static final String TAG = "DatabaseHelper";
    private static DatabaseHelper instance;
    private JdbcConnectionSource connectionSource = null;

    private Map<String, Dao> daos = new HashMap<String, Dao>();
    private User currentUser;

    private DatabaseHelper() throws IOException {

        try {
            // create our data source
            connectionSource = new JdbcConnectionSource(DATABASE_URL, DB_USER, DB_PASSWORD);
//            // setup our database and DAOs
//            setupDatabase(connectionSource);

            Log.d(TAG, "DatabaseHelper: DB init success");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // destroy the data source which should close underlying connections
            if (connectionSource != null) {
                connectionSource.close();
            }
        }

    }



    /**
     * 单例获取该Helper
     *
     * @return
     */
    public static synchronized DatabaseHelper getHelper() {
        if (instance == null) {
            synchronized (DatabaseHelper.class) {
                if (instance == null) {
                    try {
                        instance = new DatabaseHelper();
                    } catch (IOException e) {
                        // 请注意, 这玩意儿能返回空值
                        instance = null;
                    }
                }
            }
        }

        return instance;
    }

    public synchronized Dao getDao(Class clazz) throws SQLException {
        Dao dao = null;
        String className = clazz.getSimpleName();

        if (daos.containsKey(className)) {
            dao = daos.get(className);
        }
        if (dao == null) {
            dao = DaoManager.createDao(connectionSource, clazz);
            daos.put(className, dao);
        }
        return dao;
    }


    /**
     *
     */
    public void close() throws IOException {
        if (connectionSource != null) {
            connectionSource.close();
        }
    }

    public User getCurrentUser() {
        return currentUser;
    }

    public void setCurrentUser(User currentUser) {
        this.currentUser = currentUser;
    }
}
