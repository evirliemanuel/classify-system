package com.remswork.project.alice.android;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

import com.remswork.project.alice.model.Activity;
import com.remswork.project.alice.model.Assignment;
import com.remswork.project.alice.model.AssignmentResult;
import com.remswork.project.alice.model.Formula;
import com.remswork.project.alice.model.Grade;
import com.remswork.project.alice.model.Teacher;
import com.remswork.project.alice.service.ActivityService;
import com.remswork.project.alice.service.AssignmentService;
import com.remswork.project.alice.service.GradeService;
import com.remswork.project.alice.service.impl.ActivityServiceImpl;
import com.remswork.project.alice.service.impl.AssignmentServiceImpl;
import com.remswork.project.alice.service.impl.FormulaServiceImpl;
import com.remswork.project.alice.service.impl.GradeServiceImpl;
import com.remswork.project.alice.service.impl.StudentServiceImpl;
import com.remswork.project.alice.service.impl.SubjectServiceImpl;
import com.remswork.project.alice.service.impl.TeacherServiceImpl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

import static android.R.attr.id;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        try {
            ActivityService activityService = new ActivityServiceImpl();
//            Activity activity = activityService.addActivity(new Activity("TItle", "date", 12), 22, 1);
//            Log.i("Title", activity.getTitle());
//            //activity = activityService.updateActivityById(activity.getId(),
////          new Activity("TItle", "date", 12, 10), 87, 10101);
//            Log.i("Title", activity.getTitle());
//            activity = activityService.getActivityById(activity.getId());
//            Log.i("Title", activity.getTitle());
//            int size = activityService.getActivityList().size();
//            Log.i("Size", size + "");
//            //size = activityService.getActivityListByStudentAndSubjectId(87, 10101).size();
//            Log.i("Size", size + "");
//            //size = activityService.getActivityListByStudentAndSubjectId(87, 10212).size();
//            Log.i("Size", size + "");
//            //activityService.deleteActivityById(activity.getId());
//            size = activityService.getActivityList().size();
//            Log.i("Size", size + "");
//            activityService.addActivityResult(10, 122, 20170001);
//            Log.i("Title", activityService.getActivityResultByActivityAndStudentId(122, 20170001).getScore() + "");
//            Log.i("Title", activityService.updateActivityResultByActivityAndStudentId(5, 122, 20170001).getScore() + "");
            //AssignmentService assignmentService = new AssignmentServiceImpl();
            //Assignment assign = assignmentService.addAssignment(new Assignment("verlietitle","dateate",45), 40, 1);
//            AssignmentResult result = assignmentService.getAssignmentResultByAssignmentAndStudentId(499, 20170010);
            //AssignmentResult result = assignmentService.addAssignmentResult(70, 499, 20170010);
            //Log.i("MAINTAG", result + "");
//            new GradeServiceImpl().updateGrade(1268, new Grade(),0, 428, 2);
//            FormulaServiceImpl formulaService = new FormulaServiceImpl();
//            Formula formula = formulaService.getFormulaById(110);
//            formula.setExamPercentage(100);
//            Log.i("mtAG", formulaService.updateFormulaById(110, formula, 0, 0, 0).getSubject().getName());

//            TeacherServiceImpl teacherService = new TeacherServiceImpl();
//            for (Teacher teacher : teacherService.getTeacherList()) {
//                Log.i("YourTag", teacher.getFirstName());
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
