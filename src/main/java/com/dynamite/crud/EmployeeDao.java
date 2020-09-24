package com.dynamite.crud;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("employeeDao")
public class EmployeeDao {
		@Autowired
	   private  JdbcTemplate jdbcTemplate;

	public int insertEmployees(Employee employee) {
		
			String INSERT_QUERY="INSERT INTO employee(firstName, lastName,email,address,city,state,zip) VALUES (?,?,?,?,?,?,?)";
			return jdbcTemplate.update(INSERT_QUERY, employee.getFirstName(), employee.getLastName(), employee.getEmail(),employee.getAddress(),employee.getCity(),employee.getState(),employee.getZip());
	}

	public List<Employee> findAllEmployees() {
	String LIST_QUERY="Select * from employee order by id desc";
	List<Employee> employee = jdbcTemplate.query(LIST_QUERY, new BeanPropertyRowMapper(Employee.class));
    return employee;
	}

	public Employee findAllEmployee(String id) {
		if(id != null)
		{
			String sql = "SELECT * FROM employee WHERE id = ? ";
			 return (Employee) jdbcTemplate.queryForObject(
						sql,
						new Object[]{id},
						new BeanPropertyRowMapper(Employee.class));
		}else {
			String sql = "SELECT * FROM employee ";
			 return (Employee) jdbcTemplate.queryForObject(
						sql,
						new Object[]{},
						new BeanPropertyRowMapper(Employee.class));
		}
	

	}

	public int insertUpdate(Employee employee) {
		String INSERT_QUERY="update employee set firstName=?,lastName =?, email=?,address=?, city=?, state=?, zip=? where id = ? ";
		return jdbcTemplate.update(INSERT_QUERY, employee.getFirstName(), employee.getLastName(), employee.getEmail(),employee.getAddress(),employee.getCity(),employee.getState(),employee.getZip(), employee.getId());
	}
	
	
	
	
	public int deleteEmployee(int id) {
		String INSERT_QUERY="delete from employee  where id = ? ";
		return jdbcTemplate.update(INSERT_QUERY, id);
	}
	

}
