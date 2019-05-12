package dev.chenjr.tracer.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import dev.chenjr.tracer.R;
import dev.chenjr.tracer.utils.StatusConstant;

/**
 * A simple {@link Fragment} subclass.
 * Activities that contain this fragment must implement the
 * {@link IndexFragment.OnFragmentInteractionListener} interface
 * to handle interaction events.
 * Use the {@link IndexFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class IndexFragment extends BaseFragment {
    private Unbinder unbinder;
//    public static StatusConstant.FragmentID selfFragmentID = StatusConstant.FragmentID.INDEX;


    @BindView(R.id.iv_frag_index_user_manage)
    ImageView userManage;
    @BindView(R.id.iv_frag_index_realtime_loc)
    ImageView realtimeLoc;
    @BindView(R.id.iv_frag_index_dev_info)
    ImageView deviceInfo;
    @BindView(R.id.iv_frag_index_dev_conf)
    ImageView deviceConf;



    public IndexFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @return A new instance of fragment IndexFragment.
     */
    public static IndexFragment newInstance() {
        IndexFragment fragment = new IndexFragment();
        return fragment;
    }



    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_index, container, false);
        unbinder = ButterKnife.bind(this, view);
        return view;
    }

    @OnClick({R.id.iv_frag_index_user_manage, R.id.iv_frag_index_dev_conf, R.id.iv_frag_index_realtime_loc, R.id.iv_frag_index_dev_info})
    public void onIconClick(View v) {
        int id = v.getId();

        if (id == R.id.iv_frag_index_user_manage) {
            onCallActivity(StatusConstant.FragmentID.USER_MANAGEMENT);

        } else if (id == R.id.iv_frag_index_realtime_loc) {


        } else if (id == R.id.iv_frag_index_dev_info) {
            onCallActivity(StatusConstant.FragmentID.DEVICE_INFO_MANAGEMENT);

        } else if (id == R.id.iv_frag_index_dev_conf) {

        }

    }





    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();//视图销毁时必须解绑
    }
}
