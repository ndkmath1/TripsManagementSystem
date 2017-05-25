package com.trips.dao;

import java.util.List;

import com.trips.entity.Driver;
import com.trips.model.DriverForm;

public interface DriverDao {
	public void addDriver(Driver driver);
	
	public void updateDriver(Driver driver);
	
	public List<Driver> listDriver();
	
	public Driver getDriverById(int id);
	
	public void removeDriver(int id);
	//code tiep
	public Driver findDriver(int id);
	public void saveDriver(DriverForm driverForm);
	public DriverForm findDriverForm(int id);
	public void deleteDriver(int id);
	
}
