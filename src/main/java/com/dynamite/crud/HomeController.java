package com.dynamite.crud;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class HomeController {
	
	@Autowired
	EmployeeService employeeService;
	

	
	@RequestMapping("/")
	public String home(Map<String, Object> model, Model m) {
		List<Employee> employeeList = employeeService.findAllEmployees();
		m.addAttribute("employeeList",employeeList);
		m.addAttribute("Employee", new Employee());
		return "index";
		
	}
	
	
	//Mapping for redirecting after completing any operation
	@RequestMapping("/employeeList")
	public String employeeList(Map<String, Object> model, Model m) {
		List<Employee> employeeList = employeeService.findAllEmployees();
		m.addAttribute("employeeList",employeeList);
		return "index";
		
	}
	
	
	
	
	
	
	//Mapping for binding form
	@RequestMapping("/addEmployeeForm")
	public String addNewEmployee(Map<String, Object> model, Model m) {
	
		m.addAttribute("Employee", new Employee());
		return "addPage";
		
	}
	
	
	//Mapping for inserting value
	@RequestMapping(value = "/addEmployee", method = {RequestMethod.POST,RequestMethod.GET})
    public String addEmployee( @ModelAttribute("Employee") Employee employee, ModelMap model,Model m,
    		BindingResult result) {
	int status = 	employeeService.insertEmplyees(employee);
	System.out.println("status-------"+status);
	
	
	return "redirect:/employeeList";

    }
	
	
	
	
	@RequestMapping("/editEmployeeForm")
	public String editEmployeeForm(Map<String, Object> model, Model m,
			@RequestParam (name="Id",required = true)String id) {

			System.out.println("id---------->"+id);
			Employee employee =  employeeService.findAllEmployee(id);
		 	m.addAttribute("Employee", employee);
		 
			return "editPage";
		
	}
	
	
	@RequestMapping(value = "/editEmployees", method = {RequestMethod.POST,RequestMethod.GET})
    public String editEmployee(Model m,@ModelAttribute("Employee") Employee employee) {
		System.out.println("Update Employee-------------->"+employee);
		int status = 	employeeService.insertUpdate(employee);
		return "redirect:/employeeList";
    }

	
	
	
	@RequestMapping("/deleteEmployeeForm")
	public String deleteEmployeeForm(Map<String, Object> model, Model m,
			@RequestParam (name="Id",required = true)int id) {

			System.out.println("id---------->"+id);
			int status  =  employeeService.deleteEmployee(id);
			
			System.out.println("Delete status---------->"+status);
			return "redirect:/employeeList";
		
	}
		
	
	
	@RequestMapping("/about")
	public String about(Map<String, Object> model, Model m) {

			return "about";
		
	}
	
	
	
}
