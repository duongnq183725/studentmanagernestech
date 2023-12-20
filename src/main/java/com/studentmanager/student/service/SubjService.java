package com.studentmanager.student.service;

import com.studentmanager.student.model.Subject;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.studentmanager.student.config.JDBCCon;

public class SubjService {
    public static ArrayList<Subject> getList(){
        try{
            PreparedStatement statement = JDBCCon.connection().prepareStatement("SELECT * FROM subjects");
            ResultSet resultSet = statement.executeQuery();
            ArrayList<Subject> list = new ArrayList();
            while (resultSet.next()){
                Subject subject = new Subject();
                int id = resultSet.getInt("sjid");
                String name = resultSet.getString("sj_name");
                subject.setSjId(id);
                subject.setSjName(name);
                list.add(subject);
            }
            return list;
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }
    public static void create(Subject subject){
        try{
            PreparedStatement statement = JDBCCon.connection().
                    prepareStatement("INSERT INTO subjects(sj_name) values ('" + subject.getSjName()+"')");
            statement.execute();
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }
}
