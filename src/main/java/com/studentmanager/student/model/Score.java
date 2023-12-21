package com.studentmanager.student.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Score {
    private int scid;
    private float score;
    private int typeId;
    private int sjId;
    private String typeName;
    private String sjName;
}
