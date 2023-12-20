package com.studentmanager.student.controller;

import com.studentmanager.student.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
}
