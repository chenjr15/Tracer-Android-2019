package dev.chenjr.tracer.fragment;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.button.MaterialButton;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import dev.chenjr.tracer.R;
import dev.chenjr.tracer.adapter.DeviceInfoAdapter;
import dev.chenjr.tracer.bean.DeviceInfo;
import dev.chenjr.tracer.db.DevInfoDao;

public class DevInfoFragment extends BaseFragment {

    private static final String TAG = "DevInfoFragment";
    private Unbinder unbinder;
    @BindView(R.id.rv_fragment_user)
    RecyclerView recyclerView;
    @BindView(R.id.et_fragment_user_manage_account_search)
    EditText searchContent;
    @BindView(R.id.btn_frag_user_manage_account_search)
    MaterialButton searchBtn;
    String filterString;
    List<DeviceInfo> deviceInfoList;

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_user_manage, container, false);
        unbinder = ButterKnife.bind(this, view);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        new QueryDevInfoTask().execute();
        return view;
    }

    public static DevInfoFragment newInstance() {

        return new DevInfoFragment();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();//视图销毁时必须解绑
    }

    @SuppressLint("StaticFieldLeak")
    class QueryDevInfoTask extends AsyncTask<Void, Boolean, List<DeviceInfo>> {

        @Override
        protected void onPostExecute(List<DeviceInfo> deviceInfosQuery) {
            super.onPostExecute(deviceInfosQuery);
            Log.d(TAG, "onPostExecute: Query Success :" + deviceInfosQuery);
            if (filterString != null && !"".equals(filterString)) {
                DevInfoFragment.this.deviceInfoList = new ArrayList<>();
                for (DeviceInfo u : deviceInfosQuery) {
                    if (u.getDeviceid().startsWith(filterString)) {
                        DevInfoFragment.this.deviceInfoList.add(u);
                    }
                }
            } else {
                DevInfoFragment.this.deviceInfoList = deviceInfosQuery;
            }

            updateList();
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

    private void updateList() {

        recyclerView.setAdapter(new DeviceInfoAdapter(deviceInfoList));
    }


}
