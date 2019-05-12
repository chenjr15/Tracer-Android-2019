package dev.chenjr.tracer.db;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;

import java.sql.SQLException;
import java.util.List;

import dev.chenjr.tracer.bean.DeviceHistoryData;

public class DeviceHistoryDataDao {
    private Dao<DeviceHistoryData, String> historyDataDao;
    private DatabaseHelper helper;

    public DeviceHistoryDataDao() throws SQLException {
        this.helper = DatabaseHelper.getHelper();
        this.historyDataDao = helper.getDao(DeviceHistoryDataDao.class);
    }
    public List<DeviceHistoryDataDao> getAllWithLimit(long limit){
        List<DeviceHistoryDataDao> deviceInfos = null;
        QueryBuilder queryBuilder = historyDataDao.queryBuilder();
        try {
            deviceInfos = queryBuilder.limit(limit).query();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return deviceInfos;
    }
}
