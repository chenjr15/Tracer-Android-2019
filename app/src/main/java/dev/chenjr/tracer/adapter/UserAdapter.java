package dev.chenjr.tracer.adapter;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import dev.chenjr.tracer.R;
import dev.chenjr.tracer.bean.User;
import dev.chenjr.tracer.utils.Util;

public class UserAdapter extends RecyclerView.Adapter<UserAdapter.ViewHolder> {

    private List<User> mUserList;
    static class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.tv_item_user_lastlogin)
        TextView lastlogin;
        @BindView(R.id.tv_item_user_name)
        TextView name;
        @BindView(R.id.tv_item_user_phone)
        TextView phone;
        @BindView(R.id.iv_item_user_avatar)
        ImageView avatar;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            ButterKnife.bind(this,itemView);

        }
    }

    public UserAdapter(List<User> mUserList) {
        this.mUserList = mUserList;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext())
                .inflate(R.layout.item_rv_user, viewGroup, false);
        return new ViewHolder(view);
    }


    public void onBindViewHolder(@NonNull UserAdapter.ViewHolder viewHolder, int i) {
        User user = mUserList.get(i);
        viewHolder.name.setText(user.getName());
        viewHolder.lastlogin.setText(Util.timeago(user.getLastlogin()));
        viewHolder.phone.setText(user.getMobile());
        viewHolder.avatar.setImageResource(R.drawable.ic_avatar_male);

    }

    @Override
    public int getItemCount() {
        return mUserList.size();
    }
}
