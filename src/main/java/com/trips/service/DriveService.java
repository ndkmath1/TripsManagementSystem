package com.trips.service;

import java.util.List;

import com.trips.entity.Driver;
import com.trips.model.DriverForm;

public interface DriveService {
	public void addDriver(Driver driver);
	
	public void updateDriver(Driver driver);
	
	public List<Driver> listDriver();
	
	public Driver getDriverById(int id);
	
	public void removeDriver(int id);
	
	public DriverForm findDriverForm(int id);
}
