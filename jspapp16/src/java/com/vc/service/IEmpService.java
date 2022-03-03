package com.vc.service;

import com.vc.entity.Employee;
import java.util.List;

public interface IEmpService {
    public String addEmp(Employee e);
    public List<Employee> getEmployees();
}
