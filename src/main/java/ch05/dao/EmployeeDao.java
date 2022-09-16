package ch05.dao;

import ch05.domain.Employee;

public interface EmployeeDao { // Employee는 데이터명
	Employee selectEmployee(int empId);
}
