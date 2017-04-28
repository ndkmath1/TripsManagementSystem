package com.trips.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.trips.dao.CarDao;
import com.trips.entity.Car;
import com.trips.service.CarService;

@Service
@Transactional("hibernateTransactionManager")
public class CarServiceImpl implements CarService {
	
	@Autowired
	private CarDao carDao;

	@Override
	public void addCar(Car car) {
		carDao.addCar(car);
	}

	@Override
	public void updateCar(Car car) {
		carDao.updateCar(car);
	}

	@Override
	public List<Car> listCar() {
		return carDao.listCar();
	}

	@Override
	public Car getCarById(int id) {
		return carDao.getCarById(id);
	}

	@Override
	public void removeCar(int id) {
		carDao.removeCar(id);
	}

}
