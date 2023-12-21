package com.studentmanager.student.service;

import com.studentmanager.student.config.JDBCCon;
import com.studentmanager.student.model.Score;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ScoreService {
    public static ArrayList<Score> getList() {
        try{
            PreparedStatement statement = JDBCCon.connection().prepareStatement("SELECT s.scid, s.score, sj.sj_name, t.type_name\n" +
                    "from scores s, subjects sj, type_score t\n" +
                    "where s.sj_id = sj.sjid\n" +
                    "and s.type_id = t.type_id order by s.scid;");
            ResultSet resultSet = statement.executeQuery();
            ArrayList<Score> list = new ArrayList<>();
            while(resultSet.next()) {
                Score score = new Score();
                int id = resultSet.getInt("scid");
                score.setScid(id);
                float diem = resultSet.getFloat("score");
                score.setScore(diem);
                String tName = resultSet.getString("type_name");
                String sjName = resultSet.getString("sj_name");
                score.setTypeName(tName);
                score.setSjName(sjName);
                list.add(score);
            }
            return list;
        }catch(Exception e) {
            throw new RuntimeException(e);
        }

    }
}
