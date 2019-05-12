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
        this.historyDataDao = helper.getDao(DeviceHistoryData.class);
    }

    public List<DeviceHistoryData> getAllWithLimit(long limit) {
        List<DeviceHistoryData> deviceInfos = null;
        QueryBuilder queryBuilder = historyDataDao.queryBuilder();
        try {
            deviceInfos = queryBuilder.limit(limit).query();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return deviceInfos;
    }

    public List<DeviceHistoryData> getTHData(String DeviceID) {
        List<DeviceHistoryData> deviceInfos = null;
        QueryBuilder queryBuilder = historyDataDao.queryBuilder();
        try {
            // 不排序图表会乱掉
            if (DeviceID !=null)
            {
                //noinspection unchecked
                deviceInfos = queryBuilder.
                        orderBy("datatime", true)
                        .where().isNotNull("temperIn")
                        .and().eq("deviceid", DeviceID)
                        .query();
            }else {
                //noinspection unchecked
                deviceInfos = queryBuilder.
                        orderBy("datatime", true)
                        .where().isNotNull("temperIn")
                        .query();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return deviceInfos;
    }

    /**
     * 获取所有有外温的数据
     *
     * @return
     */
    public List<DeviceHistoryData> getTempOutData(String DeviceID) {
        List<DeviceHistoryData> deviceInfos = null;
        QueryBuilder queryBuilder = historyDataDao.queryBuilder();
        try {
            // 不排序图表会乱掉
            if (DeviceID !=null)
            {
                //noinspection unchecked
                deviceInfos = queryBuilder.
                        orderBy("datatime", true)
                        .where().isNotNull("temperOut")
                        .and().eq("deviceid", DeviceID)
                        .query();
            }else {
                //noinspection unchecked
                deviceInfos = queryBuilder.
                        orderBy("datatime", true)
                        .where().isNotNull("temperOut")
                        .query();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return deviceInfos;
    }
}
