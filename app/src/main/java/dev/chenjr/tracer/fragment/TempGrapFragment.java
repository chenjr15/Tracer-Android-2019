package dev.chenjr.tracer.fragment;

import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;

import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import dev.chenjr.tracer.R;
import dev.chenjr.tracer.bean.DeviceHistoryData;
import dev.chenjr.tracer.bean.DeviceInfo;
import dev.chenjr.tracer.db.DevInfoDao;
import dev.chenjr.tracer.db.DeviceHistoryDataDao;
import dev.chenjr.tracer.utils.Util;

import static com.github.mikephil.charting.components.XAxis.XAxisPosition.BOTTOM_INSIDE;

public class TempGrapFragment extends BaseFragment {
    private Unbinder unbinder;
    @BindView(R.id.chart_temp)
    LineChart chart;
    String selectedDevId;
    List<DeviceInfo> allDevice;
    private List<DeviceHistoryData> tempInList;
    private List<DeviceHistoryData> tempOutList;
    LineData lineData;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_temp_curve, container, false);
        unbinder = ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onStart() {
        super.onStart();


        chart.getXAxis().setValueFormatter(new Util.DateFormater());
        chart.getXAxis().setDrawGridLines(false);

        lineData = new LineData();
        new QueryAllDevice().execute();

    }
    void queryCurrentDev(){
        new QueryDeviceHistoryDataTask().execute();
        new QueryTempOutTask().execute();
    }

    public void updateChart() {
        if (tempInList == null || tempOutList == null) {
            return;
        }

        List<Entry> tempInList = new ArrayList<>();
        List<Entry> tempOutList = new ArrayList<>();

        for (DeviceHistoryData data : this.tempInList) {
            if (data.getTemperIn() > 0) {
                tempInList.add(new Entry((data.getDatatime().getTime() / 1000.0f), data.getTemperIn()));

            }

        }
        for (DeviceHistoryData data : this.tempOutList) {

            if (data.getTemperOut() > 0) {
                tempOutList.add(new Entry((data.getDatatime().getTime() / 1000.0f), data.getTemperOut()));
                Log.d("Outside", "updateChart: " + data.getTemperOut());
            }
        }
        XAxis xAxis = chart.getXAxis();
        xAxis.setPosition(BOTTOM_INSIDE);
        xAxis.setValueFormatter(new Util.DateFormater());


        LineDataSet tempInDataSet = new LineDataSet(tempInList, "Temperature Inside");
        LineDataSet tempOutDataSet = new LineDataSet(tempOutList, "Temperature Outside");
        tempInDataSet.setMode(LineDataSet.Mode.CUBIC_BEZIER);
        tempOutDataSet.setMode(LineDataSet.Mode.CUBIC_BEZIER);
        tempOutDataSet.setColor(Color.BLACK);
        tempOutDataSet.setCircleColor(Color.BLACK);
        lineData.removeDataSet(0);
        lineData.removeDataSet(1);

        lineData.addDataSet(tempOutDataSet);
        lineData.addDataSet(tempInDataSet);
        chart.notifyDataSetChanged();
        chart.setData(lineData);
        chart.invalidate(); // refresh
    }

    class QueryDeviceHistoryDataTask extends AsyncTask<Void, Boolean, List<DeviceHistoryData>> {

        @Override
        protected void onPostExecute(List<DeviceHistoryData> deviceHistoryDatas) {
            super.onPostExecute(deviceHistoryDatas);

            tempInList = deviceHistoryDatas;
            updateChart();

        }

        @Override
        protected List<DeviceHistoryData> doInBackground(Void... voids) {
            List<DeviceHistoryData> deviceHistoryDatas = null;
            try {
                deviceHistoryDatas = new DeviceHistoryDataDao().getTHData(selectedDevId);
            } catch (SQLException e) {
                e.printStackTrace();
            }


            return deviceHistoryDatas;
        }
    }

    class QueryTempOutTask extends AsyncTask<Void, Boolean, List<DeviceHistoryData>> {

        @Override
        protected void onPostExecute(List<DeviceHistoryData> deviceHistoryDatas) {
            super.onPostExecute(deviceHistoryDatas);

            tempOutList = deviceHistoryDatas;
            updateChart();

        }

        @Override
        protected List<DeviceHistoryData> doInBackground(Void... voids) {
            List<DeviceHistoryData> deviceHistoryDatas = null;
            try {
                deviceHistoryDatas = new DeviceHistoryDataDao().getTempOutData(selectedDevId);
            } catch (SQLException e) {
                e.printStackTrace();
            }


            return deviceHistoryDatas;
        }
    }
    class QueryAllDevice extends AsyncTask<Void, Boolean, List<DeviceInfo>> {

        @Override
        protected void onPostExecute(List<DeviceInfo> deviceHistoryDatas) {
            super.onPostExecute(deviceHistoryDatas);

            allDevice = deviceHistoryDatas;
            // Update View
            if (allDevice!=null && !allDevice.isEmpty()){
                selectedDevId = allDevice.get(0).getDeviceid();
                queryCurrentDev();
            }

        }

        @Override
        protected List<DeviceInfo> doInBackground(Void... voids) {
            List<DeviceInfo> deviceInfos = null;
            try {
                deviceInfos = new DevInfoDao().getAllWithLimit(100);
            } catch (SQLException e) {
                e.printStackTrace();
            }


            return deviceInfos;
        }
    }
    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();//视图销毁时必须解绑
    }
}
