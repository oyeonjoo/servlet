package ch03.ex05;

public class User {
	private String name;
	private int age;
	
	public User(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		return name + ", " + age;
	}
} // 웹앱에서는 toString이 의미가 없다(출력이 필요없다), 개발하는 동안 눈으로 확인하기 위해 사용한다
