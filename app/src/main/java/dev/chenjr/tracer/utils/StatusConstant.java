package dev.chenjr.tracer.utils;

public class StatusConstant {
    public static final int LOGIN_SUCCESS = 0;
    public static final int LOGIN_EXCEPTION_OCCURS = -1;
    public static final int LOGIN_FAIL_USER_NOT_FOUND = 1;
    public static final int LOGIN_FAIL_PASSWORD_MISMATCH = 2;
    public enum FragmentID {
        INDEX,
        USER_MANAGEMENT,
        REAL_TIME_LOCATION,
        DEVICE_INFO_MANAGEMENT,
        DEVICE_CONFIGURE,
        HISTORY_LOCATION,
        EVENT_DATA,
        HUMIDITY_CURVE,
        TEMPERATURE_CURVE,
    }
}
