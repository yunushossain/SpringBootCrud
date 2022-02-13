package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.StudentModel;
import com.example.repository.StudentRepository;

@Controller
public class StudentController {
	@Autowired
	StudentRepository studentRepository;

	@GetMapping("/")
	public ModelAndView index() {
		return new ModelAndView("create_page");
	}

	@PostMapping("/save")
	public ModelAndView saveData(@ModelAttribute StudentModel studentModel) {
		studentRepository.save(studentModel);
		return new ModelAndView("create_page");
	}

	@GetMapping("/show")
	 public ModelAndView showData() {
		 
		 Map<String,Object> map= new HashMap<String, Object>();
		 List<StudentModel> st = (List<StudentModel>) studentRepository.findAll();
		 map.put("st", st);
		 return new ModelAndView("show_page", "data",map); 
	 }
	
	@GetMapping("/edit/{id}")
	 public ModelAndView editData(@PathVariable(value="id") long id) {
		 
		 Map<String,Object> map= new HashMap<String, Object>();
		 StudentModel student = studentRepository.findById(id).get();
		 map.put("student", student);
		 return new ModelAndView("edit_page", "data",map); 
	 }

	@GetMapping("/delete/{id}")
	public ModelAndView deleteData(@PathVariable(value="id") long id) {
		studentRepository.deleteById(id);
		return new ModelAndView("redirect:/show");
	}
	
	

}
