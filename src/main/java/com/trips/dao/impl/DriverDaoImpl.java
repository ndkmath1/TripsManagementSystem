package com.trips.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trips.dao.DriverDao;
import com.trips.entity.Driver;
import com.trips.model.DriverForm;

@Repository
public class DriverDaoImpl implements DriverDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addDriver(Driver driver) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(driver);
		
	}

	@Override
	public void updateDriver(Driver driver) {
		Session session = sessionFactory.getCurrentSession();
		session.update(driver);
		
	}

	@Override
	public List<Driver> listDriver() {
		Session session = sessionFactory.getCurrentSession();
		List<Driver> driveList = session.createQuery("from Driver").list();
		for (Driver driver: driveList){
			
		}
		return driveList;
	}

	@Override
	public Driver getDriverById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Driver driver = (Driver) session.load(Driver.class, new Integer(id));
		/*if(driver != null){
			session.delete(driver);
		}*/
		return driver;
	}

	@Override
	public void removeDriver(int id) {
		Session session = sessionFactory.getCurrentSession();
		Driver driver = (Driver) session.load(Driver.class, new Integer(id));
		if(driver != null){
			session.delete(driver);
		}
				
		
	}

	//code tiep theo o7planing
	@Override
	public Driver findDriver(int id) {
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Driver.class);
		crit.add(Restrictions.eq("id", id));
		return (Driver) crit.uniqueResult();
	}

	@Override
	public void saveDriver(DriverForm driverForm) {
		int id = driverForm.getId();
		Driver driver = null;
		if (id != 0){
			driver = this.findDriver(id);
		}
		boolean isNew = false;
		if(driver == null){
			isNew = true;
			driver = new Driver();
			driverForm.setId(100);
		}
		driver.setDriverName(driverForm.getName());
		driver.setPhoneNumber(driverForm.getPhoneNumber());
		if(isNew){
			Session session = this.sessionFactory.getCurrentSession();
			session.persist(driver);
		}
	}

	@Override
	public DriverForm findDriverForm(int id) {
		Driver driver = this.findDriver(id);
		if(driver == null){
			return null;
		}
		return new DriverForm(driver.getDriverId(), driver.getDriverName(), driver.getPhoneNumber());
	}

	@Override
	public void deleteDriver(int id) {
		Driver driver = this.findDriver(id);
		if(driver != null){
			this.sessionFactory.getCurrentSession().delete(id);
		}
		
	}

}
