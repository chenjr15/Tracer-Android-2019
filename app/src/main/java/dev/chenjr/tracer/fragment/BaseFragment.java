package dev.chenjr.tracer.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;

import dev.chenjr.tracer.utils.StatusConstant;

public class  BaseFragment  extends Fragment {

    private static final String FRAG_ID = "FragID";


    private OnFragmentInteractionListener mListener;
    public static StatusConstant.FragmentID selfFragmentID;
    /**
     * This interface must be implemented by activities that contain this
     * fragment to allow an interaction in this fragment to be communicated
     * to the activity and potentially other fragments contained in that
     * activity.
     * <p>
     * See the Android Training lesson <a href=
     * "http://developer.android.com/training/basics/fragments/communicating.html"
     * >Communicating with Other Fragments</a> for more information.
     */
    public interface OnFragmentInteractionListener {
        void onFragmentInteraction(StatusConstant.FragmentID fragment);
    }
    public void onCallActivity(StatusConstant.FragmentID fragment) {
        if (mListener != null) {
            mListener.onFragmentInteraction(fragment);
        }
    }

//    /**
//     * Use this factory method to create a new instance of
//     * this fragment using the provided parameters.
//     *
//     * @return A new instance of fragment BlankFragment.
//     */
//    // TODO: Rename and change types and number of parameters
//    public static  BaseFragment newInstance() {
//        BaseFragment fragment = new BaseFragment();
//
//        return fragment;
//    }
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            selfFragmentID = (StatusConstant.FragmentID) getArguments().get(FRAG_ID);
        }
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnFragmentInteractionListener) {
            mListener = (OnFragmentInteractionListener) context;
        } else {
            throw new RuntimeException(context.toString()
                    + " must implement OnFragmentInteractionListener");
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        mListener = null;
    }
}
