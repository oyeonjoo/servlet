package ch05.service;

import ch05.domain.Employee;

public interface EmployeeService { // Employee는 업무명이다
	Employee getEmployee(int empId); // 쓰기 메소드-add, fix, del
}
