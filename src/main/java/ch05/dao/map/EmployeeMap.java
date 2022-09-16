package ch05.dao.map;

import ch05.domain.Employee;

public interface EmployeeMap {
	Employee selectEmployee(int empId); // 한개의 데이터를 읽어오는 메소드, 도메인 객체 하나를 리턴하면 끝
} // 데이터가 없으면 리턴값은 null, 데이터가 n개일 경우에 읽어온 데이터가 없으면 list를 리턴
