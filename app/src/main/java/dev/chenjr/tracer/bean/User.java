package dev.chenjr.tracer.bean;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

import java.sql.Date;

@DatabaseTable(tableName = "sys_user")
public class User {

    @DatabaseField(generatedId = true)
    private long id;

    @DatabaseField
    private String account;

    @DatabaseField
    private String name;

    @DatabaseField
    private String pswd;

    @DatabaseField
    private String telephone;

    @DatabaseField
    private String mobile;

    @DatabaseField
    private String email;

    @DatabaseField
    private String picurl;

    @DatabaseField
    private Date createtime;

    @DatabaseField
    private Date lastlogin;

    @DatabaseField
    private long isdel;

    @DatabaseField
    private String blank1;

    @DatabaseField
    private String blank2;

    @DatabaseField
    private String blank3;


    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPswd() {
        return this.pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }

    public String getTelephone() {
        return this.telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getMobile() {
        return this.mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPicurl() {
        return this.picurl;
    }

    public void setPicurl(String picurl) {
        this.picurl = picurl;
    }

    public Date getCreatetime() {
        return this.createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getLastlogin() {
        return this.lastlogin;
    }

    public void setLastlogin(Date lastlogin) {
        this.lastlogin = lastlogin;
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