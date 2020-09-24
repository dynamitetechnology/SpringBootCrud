package com.dynamite.crud;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("employeeService")
public class EmployeeService {
	
	@Autowired
	EmployeeDao employeeDao;

	public int insertEmplyees(Employee employee) {
		return employeeDao.insertEmployees(employee);
		
	}

	public List<Employee> findAllEmployees() {
		return employeeDao.findAllEmployees();
	}

	public Employee findAllEmployee(String id) {
		return employeeDao.findAllEmployee(id);
	}

	public int insertUpdate(Employee employee) {
		return employeeDao.insertUpdate(employee);
	}

	public int deleteEmployee(int id) {
		return employeeDao.deleteEmployee(id);

	}

}
