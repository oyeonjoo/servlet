package ch05.dao.map;

import ch05.domain.Employee;

public interface EmployeeMap {
	Employee selectEmployee(int empId); // �Ѱ��� �����͸� �о���� �޼ҵ�, ������ ��ü �ϳ��� �����ϸ� ��
} // �����Ͱ� ������ ���ϰ��� null, �����Ͱ� n���� ��쿡 �о�� �����Ͱ� ������ list�� ����
