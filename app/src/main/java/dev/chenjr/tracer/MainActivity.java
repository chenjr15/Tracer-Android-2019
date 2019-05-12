package dev.chenjr.tracer;

import android.os.Bundle;
import android.support.design.widget.NavigationView;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import dev.chenjr.tracer.db.DatabaseHelper;
import dev.chenjr.tracer.fragment.BaseFragment;
import dev.chenjr.tracer.fragment.DevInfoFragment;
import dev.chenjr.tracer.fragment.IndexFragment;
import dev.chenjr.tracer.fragment.UserManageFragment;
import dev.chenjr.tracer.utils.StatusConstant;

public class MainActivity extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener, BaseFragment.OnFragmentInteractionListener {


    TextView headerUsername;

    TextView headerUserEmail;
    @BindView(R.id.toolbar)
    Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);
//        Toolbar toolbar = findViewById();
        setSupportActionBar(toolbar);
        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        NavigationView navigationView = findViewById(R.id.nav_view);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();
        navigationView.setNavigationItemSelectedListener(this);
        // 先获取HeaderView才能获取HeaderView的子控件
        View nav_header = navigationView.getHeaderView(0);
        headerUsername = nav_header.findViewById(R.id.tv_main_nav_header_username);
        headerUserEmail = nav_header.findViewById(R.id.tv_main_nav_header_useremail);
        // 设置侧边抽屉顶栏的当前用户和邮箱
        headerUserEmail.setText(DatabaseHelper.getHelper().getCurrentUser().getEmail());
        headerUsername.setText(DatabaseHelper.getHelper().getCurrentUser().getName());
    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        // Handle navigation view item clicks here.
        int id = item.getItemId();
        StatusConstant.FragmentID fragmentID = StatusConstant.FragmentID.INDEX;
        if (id == R.id.nav_user_management) {
            fragmentID = StatusConstant.FragmentID.USER_MANAGEMENT;

            // Handle the camera action
        } else if (id == R.id.nav_realtime_loc) {
            fragmentID = StatusConstant.FragmentID.REAL_TIME_LOCATION;

        } else if (id == R.id.nav_device_info_management) {
            fragmentID = StatusConstant.FragmentID.DEVICE_INFO_MANAGEMENT;

        } else if (id == R.id.nav_device_config) {
            fragmentID = StatusConstant.FragmentID.DEVICE_CONFIGURE;

        } else if (id == R.id.nav_history_loc) {
            fragmentID = StatusConstant.FragmentID.HISTORY_LOCATION;

        } else if (id == R.id.nav_event_data) {
            fragmentID = StatusConstant.FragmentID.EVENT_DATA;

        } else if (id == R.id.nav_wet_chart) {
            fragmentID = StatusConstant.FragmentID.HUMIDITY_CURVE;

        } else if (id == R.id.nav_temp_chart) {
            fragmentID = StatusConstant.FragmentID.TEMPERATURE_CURVE;

        }
        replaceFragment(fragmentID);

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }

    /**
     * 替换当前显示的Fragment
     */
    private void replaceFragment(StatusConstant.FragmentID fragmentID) {
        Fragment fragmentObj = null;
        switch (fragmentID) {
            case INDEX:
                fragmentObj = IndexFragment.newInstance();
                toolbar.setTitle(R.string.item_nav_index);

                break;
            case USER_MANAGEMENT:
                fragmentObj = UserManageFragment.newInstance();
                toolbar.setTitle(R.string.item_nav_user_management);

                break;
            case DEVICE_INFO_MANAGEMENT:
                toolbar.setTitle(R.string.item_nav_device_config);
                fragmentObj = DevInfoFragment.newInstance();
                break;
            default:
                toolbar.setTitle(R.string.app_name);
                fragmentObj = IndexFragment.newInstance();

        }
        if (fragmentObj != null)
            replaceFragment(fragmentObj);
    }

    /**
     * 替换当前显示的Fragment
     *
     * @param fragment 要显示的Fragment
     */
    private void replaceFragment(Fragment fragment) {
        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction transaction = fragmentManager.beginTransaction();
        transaction.replace(R.id.fragment_main_container, fragment);
        transaction.commit();

    }


    @Override
    public void onFragmentInteraction(StatusConstant.FragmentID fragmentID) {
        replaceFragment(fragmentID);
    }
}
