package dev.chenjr.tracer.fragment;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.button.MaterialButton;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import dev.chenjr.tracer.R;
import dev.chenjr.tracer.adapter.UserAdapter;
import dev.chenjr.tracer.bean.User;
import dev.chenjr.tracer.db.UserDao;

/**
 * A simple {@link Fragment} subclass.
 * Activities that contain this fragment must implement the
 * {@link UserManageFragment.OnFragmentInteractionListener} interface
 * to handle interaction events.
 * Use the {@link UserManageFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class UserManageFragment extends BaseFragment {

    private Unbinder unbinder;

    @BindView(R.id.rv_fragment_user)
    RecyclerView recyclerView;
    @BindView(R.id.et_fragment_user_manage_account_search)
    EditText searchContent;
    @BindView(R.id.btn_frag_user_manage_account_search)
    MaterialButton searchBtn;
    String filterString;
    List<User> userList;

    public UserManageFragment() {
        // Required empty public constructor
    }

    public static UserManageFragment newInstance() {
        return  new UserManageFragment();
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_user_manage, container, false);
        unbinder = ButterKnife.bind(this, view);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        new QueryUserTask().execute();
        return view;
    }
    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();//视图销毁时必须解绑
    }

    @OnClick(R.id.btn_frag_user_manage_account_search)
    public void onSearch() {
        filterString = searchContent.getText().toString();
        new QueryUserTask().execute();


    }




    class QueryUserTask extends AsyncTask<Void, Boolean, List<User>> {

        @Override
        protected void onPostExecute(List<User> users) {
            super.onPostExecute(users);
            if (filterString != null && !"".equals(filterString)) {
                userList = new ArrayList<>();
                for (User u : users) {
                    if (u.getAccount()!=null && u.getAccount().startsWith(filterString)){
                        userList.add(u);
                    }
                }
            } else {
                userList = users;
            }

            updateList();
        }

        @Override
        protected List<User> doInBackground(Void... voids) {
            List<User> users = null;
            try {
                users = new UserDao().getAllWithLimit(100);
            } catch (SQLException e) {
                e.printStackTrace();
            }


            return users;
        }
    }

    private void updateList() {

        recyclerView.setAdapter(new UserAdapter(userList));
    }
}
