package dev.chenjr.tracer.fragment;

import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;


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
import butterknife.OnClick;
import butterknife.Unbinder;
import dev.chenjr.tracer.R;
import dev.chenjr.tracer.bean.DeviceHistoryData;
import dev.chenjr.tracer.bean.DeviceInfo;
import dev.chenjr.tracer.db.DevInfoDao;
import dev.chenjr.tracer.db.DeviceHistoryDataDao;
import dev.chenjr.tracer.utils.Util;
import in.galaxyofandroid.spinerdialog.OnSpinerItemClick;
import in.galaxyofandroid.spinerdialog.SpinnerDialog;

import static com.github.mikephil.charting.components.XAxis.XAxisPosition.BOTTOM_INSIDE;

public class TempGrapFragment extends BaseFragment implements OnSpinerItemClick {
    private Unbinder unbinder;
    @BindView(R.id.chart_temp)
    LineChart chart;
    @BindView(R.id.btn_frag_temp_chose_another)
    Button choseAnother;
    @BindView(R.id.tv_item_dev_info_dev_id)
    TextView tvDevId;
    @BindView(R.id.tv_item_dev_info_cno)
    TextView tvConNo;
    @BindView(R.id.tv_item_dev_info_sn)
    TextView tvSn;
    @BindView(R.id.tv_item_dev_info_model)
    TextView tvModel;
    @BindView(R.id.tv_item_dev_info_iccid_no)
    TextView tvICCID;
    @BindView(R.id.tv_item_dev_info_remark)
    TextView tvRemark;
    @BindView(R.id.tv_item_dev_info_create_time)
    TextView tvLastModTime;
    @BindView(R.id.tv_item_dev_info_create_user)
    TextView tvLastModUser;
    DeviceInfo selectedDevice;
    String selectedDevId;
    List<DeviceInfo> allDevice;
    private List<DeviceHistoryData> tempInList;
    private List<DeviceHistoryData> tempOutList;
    LineData lineData;
    QueryAllDevice queryAllDeviceTask;
    QueryDeviceHistoryDataTask queryDeviceHistoryTask;
    QueryTempOutTask queryTempOutTask;

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
        queryAllDeviceTask = new QueryAllDevice();
        queryAllDeviceTask.execute();

    }

    @OnClick(R.id.btn_frag_temp_chose_another)
    public void onChoseAnother(View view) {
        ArrayList<String> items = new ArrayList<>();
        for (DeviceInfo selectedDevice : allDevice) {
            items.add(selectedDevice.getDeviceid());
        }

        SpinnerDialog spinnerDialog =
                new SpinnerDialog(
                        getActivity(),
                        items,
                        getString(R.string.select_by_id),
                        R.style.DialogAnimations_SmileWindow,
                        getString(R.string.cnacel));// With No Animation
        spinnerDialog.setCancellable(true); // for cancellable
//        spinnerDialog.setShowKeyboard(false);
        spinnerDialog.bindOnSpinerListener(this);
        spinnerDialog.showSpinerDialog();
    }

    void queryCurrentDev() {

        if (selectedDevice != null) {
            selectedDevId = selectedDevice.getDeviceid();
            tvConNo.setText(selectedDevice.getContainerNo());
            tvDevId.setText(selectedDevice.getDeviceid());
            tvLastModTime.setText(Util.timeago(selectedDevice.getCreateTime()));
            tvLastModUser.setText(selectedDevice.getCreateUser());
            tvModel.setText(selectedDevice.getModel());
            tvICCID.setText(selectedDevice.getDevIccid());
            tvSn.setText(selectedDevice.getSerialNumber());
            tvRemark.setText(selectedDevice.getRemark());
        }
        queryDeviceHistoryTask = new QueryDeviceHistoryDataTask();
        queryTempOutTask = new QueryTempOutTask();
        queryDeviceHistoryTask.execute();
        queryTempOutTask.execute();
    }

    public void updateChart() {
        if (tempInList == null || tempOutList == null) {
            return;
        }

        List<Entry> tempInList = new ArrayList<>();
        List<Entry> tempOutList = new ArrayList<>();
        lineData = new LineData();


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

    @Override
    public void onClick(String item, int position) {
        selectedDevice = allDevice.get(position);
        queryCurrentDev();

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
            if (allDevice != null && !allDevice.isEmpty()) {
                selectedDevId = allDevice.get(0).getDeviceid();
                selectedDevice = allDevice.get(0);
                queryCurrentDev();
            }

        }

        @Override
        protected List<DeviceInfo> doInBackground(Void... voids) {
            List<DeviceInfo> selectedDevices = null;
            try {
                selectedDevices = new DevInfoDao().getAllWithLimit(100);
            } catch (SQLException e) {
                e.printStackTrace();
            }


            return selectedDevices;
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();//视图销毁时必须解绑

        if (queryAllDeviceTask.getStatus() != AsyncTask.Status.FINISHED) {
            queryAllDeviceTask.cancel(true);
        }
        if (queryTempOutTask.getStatus() != AsyncTask.Status.FINISHED) {
            queryTempOutTask.cancel(true);
        }
        if (queryDeviceHistoryTask.getStatus() != AsyncTask.Status.FINISHED) {
            queryDeviceHistoryTask.cancel(true);
        }
        if (chart != null) {
            chart.clear();
        }


    }
}
