package com.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.model.Employee;
import com.crud.service.EmployeeService;

@RestController
@RequestMapping("/restCont")
public class EmployeeRestController {

	@Autowired
	private EmployeeService employeeService;

	@GetMapping("/index")
	public List<Employee> viewHomePage() {
		List<Employee> emplist = employeeService.getAllEmployee();
		return emplist;
	}

	@PostMapping("/save")
	public String Save(@ModelAttribute("employee") Employee employee) {
		employeeService.saveEmployee(employee);
//		List<Employee> emplist = employeeService.getAllEmployee();
//		model.addAttribute("model", emplist);
		return employee.toString()+" has been saved.";
	}

	@PostMapping("/delete/{id}")
	public String Delete(@ModelAttribute("employee") Employee employee ,@PathVariable("id") Long id) {
		employeeService.deleteEmployeeById(id);
//		List<Employee> emplist = employeeService.getAllEmployee();
//		model.addAttribute("model", emplist);
		return employee.toString()+" has been deleted.";
	}

	@PostMapping("/update")
	public String Update(@ModelAttribute("employee") Employee employee) {
		employeeService.saveEmployee(employee);
//		List<Employee> emplist = employeeService.getAllEmployee();
//		model.addAttribute("model", emplist);
		return employee.toString()+" has been updated.";
	}
	@PostMapping("/search")
	public String Search(String name) {
//		List<Employee> emplist =employeeService.searchEmployeeByName(name);
//		model.addAttribute("model", emplist);
		return employeeService.searchEmployeeByName(name) +" has been searched.";
	}
}
	

