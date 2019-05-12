package dev.chenjr.tracer.db;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;

import java.sql.SQLException;
import java.util.List;

import dev.chenjr.tracer.bean.DeviceInfo;

public class DevInfoDao {
    private Dao<DeviceInfo, Long> devInfoDao;
    private DatabaseHelper helper;

    public DevInfoDao() throws SQLException {
        this.helper = DatabaseHelper.getHelper();
        this.devInfoDao = helper.getDao(DeviceInfo.class);
    }
    public List<DeviceInfo> getAllWithLimit(long limit){
        List<DeviceInfo> deviceInfos = null;
        QueryBuilder queryBuilder = devInfoDao.queryBuilder();
        try {
            deviceInfos = queryBuilder.limit(limit).query();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return deviceInfos;
    }
}
