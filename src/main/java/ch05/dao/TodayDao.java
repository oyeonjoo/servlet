package ch05.dao;

import java.time.LocalDate;

public interface TodayDao {
	LocalDate selectToday(); // 메소드는 select로 시작한다
}
