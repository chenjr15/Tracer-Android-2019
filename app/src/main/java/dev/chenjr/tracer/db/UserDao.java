package dev.chenjr.tracer.db;

import android.util.Log;

import com.j256.ormlite.dao.Dao;

import java.sql.SQLException;
import java.util.List;

import dev.chenjr.tracer.bean.User;

import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_EXCEPTION_OCCURS;
import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_FAIL_PASSWORD_MISMATCH;
import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_FAIL_USER_NOT_FOUND;
import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_SUCCESS;

/**
 * 大概是所有用户数据的操作
 */
public class UserDao {

    private static final String TAG = "UserDao";
    private Dao<User, Integer> userDao;
    private DatabaseHelper helper;

    public UserDao() throws SQLException {
        helper = DatabaseHelper.getHelper();
        this.userDao = helper.getDao(User.class);
    }

    public Integer authUser(String user, String passwordMD5) {
        try {
//            helper = DatabaseHelper.getHelper();
            List<User> account = userDao.queryForEq("account", user);

            if (account == null || account.isEmpty()) {
                return LOGIN_FAIL_USER_NOT_FOUND;
            }
            User currentUser = account.get(0);
            helper.setCurrentUser(currentUser);
            Log.d(TAG, "authUser: " + passwordMD5 + "\n" + account.get(0).getPswd());
            return passwordMD5.equals(currentUser.getPswd()) ? LOGIN_SUCCESS : LOGIN_FAIL_PASSWORD_MISMATCH;

        } catch (SQLException e) {
            e.printStackTrace();
            return LOGIN_EXCEPTION_OCCURS;
        }

    }
}
