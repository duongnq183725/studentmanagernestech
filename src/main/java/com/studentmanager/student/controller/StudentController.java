package com.studentmanager.student.controller;

import com.studentmanager.student.model.Score;
import com.studentmanager.student.model.Student;
import com.studentmanager.student.service.ScoreService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
@RequestMapping(value ="/student")
public class StudentController {
    @GetMapping
    public String Home(Model model){
        String msg = "hello";
        model.addAttribute("message", msg);
        return "home";
    }

    @GetMapping("/create")
    public String Create(Model model){
        Student student = new Student();
        model.addAttribute("student", student);
        return "create";
    }

    @GetMapping("/profile/{id}/{name}")
    public String Details(@PathVariable int id, @PathVariable String name, Model model){
        System.out.println(name);
        model.addAttribute("name", name);
        return "details";
    }

    @GetMapping("/comm")
    public String comm(){
        return "comm/comm";
    }

    @GetMapping("/edit")
    public String edit(@RequestParam int x, @RequestParam String y){
        System.out.println(y+x);
        return "update";
    }

    @PostMapping("/save")
    public String comm(@ModelAttribute Student student){
        System.out.println(student);
        return "redirect:/student/comm";
    }

    @GetMapping("/score")
    public String scoreList(Model model){
        ArrayList<Score> list = ScoreService.getList();
        model.addAttribute("list",list);
        return "/score/list";
    }
    @GetMapping("/score/create")
    public String createScore(Model model){
        Score score = new Score();
        model.addAttribute(score);
        return "/score/scoreCreate";
    }
}
