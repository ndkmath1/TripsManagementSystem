package com.trips.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.trips.dao.DriverDao;
import com.trips.entity.Driver;
import com.trips.model.DriverForm;
//import com.trips.repository.DriverRepository;
import com.trips.service.DriveService;

@Service
@Transactional("hibernateTransactionManager")
public class DriveServiceImpl implements DriveService {

	@Autowired
	private DriverDao driveDao;
	

	@Override
	public void addDriver(Driver driver) {
		driveDao.addDriver(driver);
		
	}

	@Override
	public void updateDriver(Driver driver) {
		driveDao.updateDriver(driver);
		
	}

	@Override
	public List<Driver> listDriver() {
		return driveDao.listDriver();
	}

	@Override
	public Driver getDriverById(int id) {
		return driveDao.getDriverById(id);
	}

	@Override
	public void removeDriver(int id) {
		driveDao.removeDriver(id);
		
	}

	@Override
	public DriverForm findDriverForm(int id) {
		return driveDao.findDriverForm(id);
	}

}
