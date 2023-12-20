package com.studentmanager.student.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value ="/student")
public class StudentController {
    @GetMapping
    public String Home(){
    return "home";
    }

    @GetMapping("/create")
    public String Create(){
        return "create";
    }

    @GetMapping("/profile")
    public String Details(){
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
    public String comm(@RequestParam String name, @RequestParam int age){
        System.out.println(name+" " + age);
        return "redirect:/student/comm";
    }
}
