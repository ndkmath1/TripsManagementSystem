package com.trips.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trips.dao.CarDao;
import com.trips.entity.Car;

@Repository
public class CarDaoImpl implements CarDao {
	
	//private static final Logger logger = LoggerFactory.getLogger(CarDaoImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addCar(Car car) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(car);
		//logger.info("Car saved successfully, car detail: {}", car);
	}
	
	@Override
	public void updateCar(Car car) {
		Session session = sessionFactory.getCurrentSession();
		session.update(car);
		//logger.info("Car updated successfully, car details: {}", car);
	}
	
	@Override
	public List<Car> listCar() {
		Session session = sessionFactory.getCurrentSession();
		List<Car> carList = session.createQuery("from Car").list();
		for (Car car : carList) {
			//logger.info("Car in list, {}", car);
		}
		return carList;
	}
	
	@Override
	public Car getCarById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Car car = (Car) session.load(Car.class, new Integer(id));
		//logger.info("Car loaded successfully, {}", car);
		return car;
	}
	
	@Override
	public void removeCar(int id) {
		Session session = sessionFactory.getCurrentSession();
		Car car = (Car) session.load(Car.class, new Integer(id));
		if (null != car) {
			session.delete(car);
		}
		//logger.info("Car deleted successfully, {}", car);
	}
	
}
