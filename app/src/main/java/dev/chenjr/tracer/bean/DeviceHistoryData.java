package dev.chenjr.tracer.bean;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

import java.sql.Date;

@DatabaseTable(tableName = "dev_hi_data")
public class DeviceHistoryData {

    @DatabaseField(id = true)
    private String id;
    @DatabaseField
    private String deviceid;
    @DatabaseField
    private long uid;
    @DatabaseField
    private Date datatime;
    @DatabaseField
    private String type;
    @DatabaseField
    private long mode;
    @DatabaseField
    private String latitude;
    @DatabaseField
    private String longitude;
    @DatabaseField
    private long satellite;
    @DatabaseField
    private long devSignal;
    @DatabaseField
    private long battery;
    @DatabaseField
    private String statuscode;
    @DatabaseField
    private String alarmcode;
    @DatabaseField
    private long temperOut;
    @DatabaseField
    private long temperIn;
    @DatabaseField
    private long humidity;
    @DatabaseField
    private long onOff;
    @DatabaseField
    private long isdel;
    @DatabaseField
    private String blank1;
    @DatabaseField
    private String blank2;
    @DatabaseField
    private String blank3;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDeviceid() {
        return deviceid;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public Date getDatatime() {
        return datatime;
    }

    public void setDatatime(Date datatime) {
        this.datatime = datatime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getMode() {
        return mode;
    }

    public void setMode(long mode) {
        this.mode = mode;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public long getSatellite() {
        return satellite;
    }

    public void setSatellite(long satellite) {
        this.satellite = satellite;
    }

    public long getDevSignal() {
        return devSignal;
    }

    public void setDevSignal(long devSignal) {
        this.devSignal = devSignal;
    }

    public long getBattery() {
        return battery;
    }

    public void setBattery(long battery) {
        this.battery = battery;
    }

    public String getStatuscode() {
        return statuscode;
    }

    public void setStatuscode(String statuscode) {
        this.statuscode = statuscode;
    }

    public String getAlarmcode() {
        return alarmcode;
    }

    public void setAlarmcode(String alarmcode) {
        this.alarmcode = alarmcode;
    }

    public long getTemperOut() {
        return temperOut;
    }

    public void setTemperOut(long temperOut) {
        this.temperOut = temperOut;
    }

    public long getTemperIn() {
        return temperIn;
    }

    public void setTemperIn(long temperIn) {
        this.temperIn = temperIn;
    }

    public long getHumidity() {
        return humidity;
    }

    public void setHumidity(long humidity) {
        this.humidity = humidity;
    }

    public long getOnOff() {
        return onOff;
    }

    public void setOnOff(long onOff) {
        this.onOff = onOff;
    }

    public long getIsdel() {
        return isdel;
    }

    public void setIsdel(long isdel) {
        this.isdel = isdel;
    }

    public String getBlank1() {
        return blank1;
    }

    public void setBlank1(String blank1) {
        this.blank1 = blank1;
    }

    public String getBlank2() {
        return blank2;
    }

    public void setBlank2(String blank2) {
        this.blank2 = blank2;
    }

    public String getBlank3() {
        return blank3;
    }

    public void setBlank3(String blank3) {
        this.blank3 = blank3;
    }
}
