import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { Employee } from 'src/app/model/Employee';
import { EmployeeService } from 'src/app/services/employee.service';

@Component({
  selector: 'app-create-employee',
  templateUrl: './create-employee.component.html',
  styleUrls: ['./create-employee.component.scss']
})
export class CreateEmployeeComponent implements OnInit {

  employee: Employee = new Employee();

  constructor(private employeeService:EmployeeService, private router:Router) { }

  ngOnInit(): void {
  }

  saveEmployee(){
    this.employeeService.createEmployee(this.employee).subscribe((data: any) => {
      console.log(data);
      this.goToEmployeeList;
    });
  }

  goToEmployeeList(){
    this.router.navigate(['/employees']);
  }

  onSubmit(){
    console.log(this.employee);
    this.saveEmployee();
  }

  CreateForm = new FormGroup({
    firstName: new FormControl('', Validators.pattern('[a-zA-Z]+ [a-zA-Z]+')),
    lastName: new FormControl('', Validators.pattern('[a-zA-Z]+ [a-zA-Z]+')),
    emailId: new FormControl('', Validators.pattern('[a-zA-Z]+ [a-zA-Z]+')),
    position: new FormControl('', Validators.pattern('[a-zA-Z]+ [a-zA-Z]+'))
  });

  get firstName(){
    return this.CreateForm.get('firstName');
  }
  get lastName(){
    return this.CreateForm.get('lastName');
  }
  get emailId(){
    return this.CreateForm.get('emailId');
  }
  get position(){
    return this.CreateForm.get('position');
  }
}
