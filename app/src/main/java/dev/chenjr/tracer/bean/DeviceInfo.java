package dev.chenjr.tracer.bean;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

import java.sql.Date;

@DatabaseTable(tableName = "dev_info")
public class DeviceInfo {

    @DatabaseField(generatedId = true)
    private long id;

    @DatabaseField()
    private String serialNumber;

    @DatabaseField()
    private String deviceid;


    @DatabaseField()
    private long uid;


    @DatabaseField()
    private String containerNo;


    @DatabaseField()
    private Date registerTime;


    @DatabaseField()
    private String model;


    @DatabaseField()
    private String devSimNo;


    @DatabaseField()
    private String devIccid;


    @DatabaseField()
    private String createUser;


    @DatabaseField()
    private Date createTime;


    @DatabaseField()
    private String updateUser;


    @DatabaseField()
    private Date updateTime;


    @DatabaseField()
    private String remark;


    @DatabaseField()
    private long isdel;


    @DatabaseField()
    private String blank1;


    @DatabaseField()
    private String blank2;


    @DatabaseField()
    private String blank3;


    public long getId() {

        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getSerialNumber() {
        return this.serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    public long getUid() {
        return this.uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public String getContainerNo() {
        return this.containerNo;
    }

    public void setContainerNo(String containerNo) {
        this.containerNo = containerNo;
    }

    public Date getRegisterTime() {
        return this.registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getDevSimNo() {
        return this.devSimNo;
    }

    public void setDevSimNo(String devSimNo) {
        this.devSimNo = devSimNo;
    }

    public String getDevIccid() {
        return this.devIccid;
    }

    public void setDevIccid(String devIccid) {
        this.devIccid = devIccid;
    }

    public String getCreateUser() {
        return this.createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateUser() {
        return this.updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public Date getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public long getIsdel() {
        return this.isdel;
    }

    public void setIsdel(long isdel) {
        this.isdel = isdel;
    }

    public String getBlank1() {
        return this.blank1;
    }

    public void setBlank1(String blank1) {
        this.blank1 = blank1;
    }

    public String getBlank2() {
        return this.blank2;
    }

    public void setBlank2(String blank2) {
        this.blank2 = blank2;
    }

    public String getBlank3() {
        return this.blank3;
    }

    public void setBlank3(String blank3) {
        this.blank3 = blank3;
    }
}
