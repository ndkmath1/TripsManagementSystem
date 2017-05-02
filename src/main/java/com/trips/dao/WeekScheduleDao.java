package com.trips.dao;

import java.util.List;

import com.trips.entity.WeekSchedule;

public interface WeekScheduleDao {
	
	public void addWeekSchedule(WeekSchedule weekSchedule);
	
	public void updateWeekSchedule(WeekSchedule weekSchedule);
	
	public List<WeekSchedule> listWeekSchedule();
	
	public WeekSchedule getWeekScheduleById(int id);
	
	public void removeWeekSchedule(int id);
	
}
