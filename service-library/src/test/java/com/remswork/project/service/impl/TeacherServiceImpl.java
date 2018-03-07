//package com.remswork.project.service.impl;
//
//import android.content.Context;
//import android.os.AsyncTask;
//import android.util.Log;
//
//import com.google.gson.Gson;
//import com.remswork.project.alice.android.R;
//import com.remswork.project.alice.exception.TeacherException;
//import com.remswork.project.alice.model.Teacher;
//import com.remswork.project.alice.service.TeacherService;
//
//import org.json.JSONArray;
//import org.json.JSONException;
//
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.OutputStreamWriter;
//import java.net.HttpURLConnection;
//import java.net.MalformedURLException;
//import java.net.URL;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.concurrent.ExecutionException;
//
//public class TeacherServiceImpl implements TeacherService {
//
//    private String baseUri = "http://alice-rafaelmanuel.rhcloud.com/api";
//    private String teacherServiceUri = "/teacher";
//
//    public TeacherServiceImpl() {
//        super();
//        baseUri += teacherServiceUri;
//    }
//
//    public TeacherServiceImpl(final String baseUri) {
//        this.baseUri = baseUri;
//        this.baseUri += teacherServiceUri;
//    }
//
//    public TeacherServiceImpl(final Context context) {
//        baseUri = context.getString(R.string.app_baseUri);
//        baseUri += teacherServiceUri;
//    }
//
//    @Override
//    public Teacher getTeacherById(final long id){
//        try {
//            return (Teacher) new AsyncTask<Long, Teacher, Teacher>() {
//                @Override
//                protected Teacher doInBackground(Long... params) {
//                    try {
//                        URL url = new URL(baseUri + "/" + params[0]);
//                        HttpURLConnection httpURLConnection =
//                                (HttpURLConnection) url.openConnection();
//                        httpURLConnection.setRequestMethod("GET");
//                        httpURLConnection.setRequestProperty("Content-Type", "application/json");
//                        httpURLConnection.connect();
//
//                        InputStream inputStream = httpURLConnection.getInputStream();
//                        String stringData = "";
//                        int data;
//                        while ((data = inputStream.read()) != -1) {
//                            stringData += (char) data;
//                        }
//                        Gson gson = new Gson();
//                        return gson.fromJson(stringData, Teacher.class);
//                    } catch (TeacherException e) {
//                        e.printStackTrace();
//                        return null;
//                    } catch (IOException e) {
//                        e.printStackTrace();
//                        return null;
//                    }
//                }
//            }.execute(id).get();
//        }catch (InterruptedException e){
//            e.printStackTrace();
//            return null;
//        }catch (ExecutionException e){
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    @Override
//    public List<Teacher> getTeacherList() {
//        try {
//            return (List<Teacher>) new AsyncTask<String, List<Teacher>, List<Teacher>>(){
//                @Override
//                protected List<Teacher> doInBackground(String... params) {
//                    List<Teacher> teacherList = new ArrayList<>();
//                    try{
//                        Gson gson = new Gson();
//                        URL url = new URL(baseUri);
//                        HttpURLConnection httpURLConnection =
//                                (HttpURLConnection) url.openConnection();
//                        httpURLConnection.setRequestMethod("GET");
//                        httpURLConnection.setRequestProperty("Content-Type","application/json");
//                        httpURLConnection.setRequestProperty("Accept","application/json");
//                        httpURLConnection.connect();
//                        if(httpURLConnection.getResponseCode() == 200) {
//                            InputStream inputStream = httpURLConnection.getInputStream();
//                            String jsonData = "";
//                            int data;
//                            while ((data = inputStream.read()) != -1) {
//                                jsonData += (char) data;
//                            }
//                            JSONArray jsonArray = new JSONArray(jsonData);
//                            for (int ctr = 0; ctr < jsonArray.length(); ctr++) {
//                                teacherList.add(gson.fromJson(
//                                        jsonArray.get(ctr).toString(), Teacher.class));
//                            }
//                        }else if(httpURLConnection.getResponseCode() == 404) {
//
//                        }
//
//                        return teacherList;
//                    }catch (TeacherException e){
//                        e.printStackTrace();
//                        return teacherList;
//                    }catch (MalformedURLException e) {
//                        e.printStackTrace();
//                        return teacherList;
//                    }catch (IOException e) {
//                        e.printStackTrace();
//                        return teacherList;
//                    }catch (JSONException e) {
//                        e.printStackTrace();
//                        return teacherList;
//                    }
//                }
//            }.execute("").get();
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//            return new ArrayList<Teacher>();
//        } catch (ExecutionException e) {
//            e.printStackTrace();
//            return new ArrayList<Teacher>();
//        }
//    }
//
//    @Override
//    public Teacher addTeacher(final Teacher teacher) {
//        try {
//            if(teacher.getDepartment() != null) {
//                teacher.getDepartment().setId(0);
//            }
//
//            return (Teacher) new AsyncTask<Teacher, Teacher, Teacher>() {
//                @Override
//                protected Teacher doInBackground(Teacher... params) {
//                    try {
//                        Gson gson = new Gson();
//                        URL url = new URL(baseUri);
//                        HttpURLConnection httpURLConnection =
//                                (HttpURLConnection) url.openConnection();
//                        httpURLConnection.setRequestMethod("POST");
//                        httpURLConnection.setRequestProperty("Content-Type", "application/json");
//                        httpURLConnection.setDoOutput(true);
//
//                        OutputStreamWriter writer =
//                                new OutputStreamWriter(httpURLConnection.getOutputStream());
//                        writer.write(gson.toJson(teacher).toString());
//                        writer.flush();
//                        writer.close();
//                        httpURLConnection.connect();
//
//                        InputStream inputStream = httpURLConnection.getInputStream();
//                        String stringData = "";
//                        int data;
//                        while ((data = inputStream.read()) != -1) {
//                            stringData += (char) data;
//                        }
//                        return gson.fromJson(stringData, Teacher.class);
//                    } catch (TeacherException e) {
//                        e.printStackTrace();
//                        return null;
//                    } catch (IOException e) {
//                        e.printStackTrace();
//                        return null;
//                    }
//                }
//            }.execute(teacher).get();
//        }catch (InterruptedException e){
//            e.printStackTrace();
//            return null;
//        }catch (ExecutionException e){
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    @Override
//    public Teacher updateTeacherById(final long id, final Teacher teacher) {
//        return null;
//    }
//
//    @Override
//    public Teacher deleteTeacherById(long id) {
//        try {
//            return (Teacher) new AsyncTask<Long, Teacher, Teacher>() {
//                @Override
//                protected Teacher doInBackground(Long... params) {
//                    try {
//                        Gson gson = new Gson();
//                        URL url = new URL(baseUri + "/" + params[0]);
//                        HttpURLConnection httpURLConnection =
//                                (HttpURLConnection) url.openConnection();
//                        httpURLConnection.setRequestMethod("DELETE");
//                        httpURLConnection.setRequestProperty("Content-Type", "application/json");
//                        httpURLConnection.connect();
//
//                        InputStream inputStream = httpURLConnection.getInputStream();
//                        String stringData = "";
//                        int data;
//                        while ((data = inputStream.read()) != -1) {
//                            stringData += (char) data;
//                        }
//                        return gson.fromJson(stringData, Teacher.class);
//                    } catch (TeacherException e) {
//                        e.printStackTrace();
//                        return null;
//                    } catch (IOException e) {
//                        e.printStackTrace();
//                        return null;
//                    }
//                }
//            }.execute(id).get();
//        }catch (InterruptedException e){
//            e.printStackTrace();
//            return null;
//        }catch (ExecutionException e){
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//}
