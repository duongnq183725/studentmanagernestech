package com.studentmanager.student.controller;

import com.studentmanager.student.model.Subject;
import com.studentmanager.student.service.SubjService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@RequestMapping("/subj")
@Controller
public class SubjectController {
    @GetMapping
    public String getList(Model model) {
        ArrayList<Subject> list = SubjService.getList();
        model.addAttribute("list", list);
        Subject subject = list.get(0);
        model.addAttribute("sj", subject);
        return "subject/getList";
    }
}
