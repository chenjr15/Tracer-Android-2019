package dev.chenjr.tracer.adapter;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import dev.chenjr.tracer.R;
import dev.chenjr.tracer.bean.DeviceInfo;
import dev.chenjr.tracer.utils.Util;

public class DeviceInfoAdapter extends RecyclerView.Adapter<DeviceInfoAdapter.ViewHolder> {
    List<DeviceInfo> deviceInfoList;



    static class ViewHolder  extends RecyclerView.ViewHolder{
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
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            ButterKnife.bind(this,itemView);
        }
    }

    public DeviceInfoAdapter(List<DeviceInfo> deviceInfoList) {
        this.deviceInfoList = deviceInfoList;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext())
                .inflate(R.layout.item_rv_dev_info, viewGroup, false);
        return new DeviceInfoAdapter.ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull DeviceInfoAdapter.ViewHolder viewHolder, int i) {
        DeviceInfo deviceInfo = deviceInfoList.get(i);
        viewHolder.tvConNo.setText(deviceInfo.getContainerNo());
        viewHolder.tvDevId.setText(deviceInfo.getDeviceid());
        viewHolder.tvLastModTime.setText(Util.timeago(deviceInfo.getCreateTime()));
        viewHolder.tvLastModUser.setText(deviceInfo.getCreateUser());
        viewHolder.tvModel.setText(deviceInfo.getModel());
        viewHolder.tvICCID.setText(deviceInfo.getDevIccid());
        viewHolder.tvSn.setText(deviceInfo.getSerialNumber());
        viewHolder.tvRemark.setText(deviceInfo.getRemark());


    }

    @Override
    public int getItemCount() {
        return deviceInfoList.size();
    }


}
