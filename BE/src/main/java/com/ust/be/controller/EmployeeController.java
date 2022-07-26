package com.ust.be.controller;

import com.ust.be.exception.ResourceNotFoundException;
import com.ust.be.model.Employee;
import com.ust.be.repo.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.ust.be.model.Employee.updatedEmployee;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("api/")
public class EmployeeController {

    private final EmployeeRepo employeeRepo;

    public EmployeeController(EmployeeRepo employeeRepo) {
        this.employeeRepo = employeeRepo;
    }

    //    http://localhost:8080/api/employees
    @GetMapping("/employees")
    public List<Employee> getAllEmployees(){
        return employeeRepo.findAll();
    }

//    http://localhost:8080/api/employees
    @PostMapping("/employees")
    public Employee createEmployee(@RequestBody Employee employee){
        return employeeRepo.save(employee);
    }

//    http://localhost:8080/api/employees/{employeeId}
    @GetMapping("/employees/{id}")
    public ResponseEntity<Employee> getEmployeeById(@PathVariable Long id){
        Employee employee = employeeRepo.findById(id)
                .orElseThrow(()-> new ResourceNotFoundException("Employee does not exist with that ID"));
        return ResponseEntity.ok(employee);
    }

//    http://localhost:8080/api/employees/{employeeId}
    @PutMapping("/employees/{id}")
    public ResponseEntity<Employee> updateEmployee(@PathVariable Long id, @RequestBody Employee employeeDetails){
        Employee employee = employeeRepo.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Employee does not exist with that ID"));
        employee.setFirstName(employeeDetails.getFirstName());
        employee.setLastName(employeeDetails.getLastName());
        employee.setEmailId(employeeDetails.getEmailId());
        employee.setPosition(employeeDetails.getPosition());

        //note: updatedEmployee does not exist issue --> fixed by declaring the field in the model
        updatedEmployee = employeeRepo.save(employee);
        return ResponseEntity.ok(updatedEmployee);
    }

//    http://localhost:8080/api/employees/{employeeId}
    @DeleteMapping("/employees/{id}")
    public ResponseEntity<Map<String, Boolean>> deleteEmployee(@PathVariable Long id){
        Employee employee = employeeRepo.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Employee does not exist with that ID"));
        employeeRepo.delete(employee);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return ResponseEntity.ok(response);
    }

}
