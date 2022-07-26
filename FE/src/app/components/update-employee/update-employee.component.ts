import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Employee } from 'src/app/model/Employee';
import { EmployeeService } from 'src/app/services/employee.service';

@Component({
  selector: 'app-update-employee',
  templateUrl: './update-employee.component.html',
  styleUrls: ['./update-employee.component.scss']
})
export class UpdateEmployeeComponent implements OnInit {

  id!: number;
  employee: Employee = new Employee();

  constructor(private employeeService: EmployeeService, private router: Router, private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.id = this.route.snapshot.params['id'];

    this.employeeService.getEmployeeById(this.id).subscribe(data => {
      this.employee = data; 
    }, error => console.log(error));
  }

  onSubmit(){
    this.employeeService.updateEmployee(this.id, this.employee).subscribe(data =>{
      this.goToEmployeeList();
    }, error => console.log(error));
    console.log(this.UpdateForm.value);
    alert("Submitted");
    return true;
  }

  goToEmployeeList(){
    this.router.navigate(['/employees']);
  }

  UpdateForm = new FormGroup({
    firstName: new FormControl('', Validators.pattern('[a-zA-Z]+ [a-zA-Z]+')),
    lastName: new FormControl('', Validators.pattern('[a-zA-Z]+ [a-zA-Z]+')),
    emailId: new FormControl('', Validators.pattern('[a-zA-Z]+ [a-zA-Z]+')),
    position: new FormControl('', Validators.pattern('[a-zA-Z]+ [a-zA-Z]+'))
  });

  get firstName(){
    return this.UpdateForm.get('firstName');
  }
  get lastName(){
    return this.UpdateForm.get('lastName');
  }
  get emailId(){
    return this.UpdateForm.get('emailId');
  }
  get position(){
    return this.UpdateForm.get('position');
  }
}
