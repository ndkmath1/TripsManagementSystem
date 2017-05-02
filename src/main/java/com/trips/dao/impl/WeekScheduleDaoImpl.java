package com.trips.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trips.dao.WeekScheduleDao;
import com.trips.entity.WeekSchedule;

@Repository
public class WeekScheduleDaoImpl implements WeekScheduleDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addWeekSchedule(WeekSchedule weekSchedule) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(weekSchedule);
	}

	@Override
	public void updateWeekSchedule(WeekSchedule weekSchedule) {
		Session session = sessionFactory.getCurrentSession();
		session.update(weekSchedule);
	}

	@Override
	public List<WeekSchedule> listWeekSchedule() {
		Session session = sessionFactory.getCurrentSession();
		List<WeekSchedule> weekScheduleList = session.createQuery("from WeekSchedule").list();
		return weekScheduleList;
	}

	@Override
	public WeekSchedule getWeekScheduleById(int id) {
		Session session = sessionFactory.getCurrentSession();
		WeekSchedule weekSchedule = (WeekSchedule) session.load(WeekSchedule.class, new Integer(id));
		return weekSchedule;
	}

	@Override
	public void removeWeekSchedule(int id) {
		Session session = sessionFactory.getCurrentSession();
		WeekSchedule weekSchedule = (WeekSchedule) session.load(WeekSchedule.class, new Integer(id));
		if (null != weekSchedule) {
			session.delete(weekSchedule);
		}
	}
	
}
