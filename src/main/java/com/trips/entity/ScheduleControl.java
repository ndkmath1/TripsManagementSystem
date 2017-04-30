package com.trips.entity;
// Generated Apr 30, 2017 2:08:08 PM by Hibernate Tools 4.3.5.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * ScheduleControl generated by hbm2java
 */
@Entity
@Table(name = "schedule_control", catalog = "project_2")
public class ScheduleControl implements java.io.Serializable {

	private int scheduleId;
	private Car car;
	private Driver driver;
	private Route route;
	private Date dateTime;

	public ScheduleControl() {
	}

	public ScheduleControl(int scheduleId, Car car, Driver driver, Route route, Date dateTime) {
		this.scheduleId = scheduleId;
		this.car = car;
		this.driver = driver;
		this.route = route;
		this.dateTime = dateTime;
	}

	@Id

	@Column(name = "schedule_id", unique = true, nullable = false)
	public int getScheduleId() {
		return this.scheduleId;
	}

	public void setScheduleId(int scheduleId) {
		this.scheduleId = scheduleId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "car_id", nullable = false)
	public Car getCar() {
		return this.car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "driver_id", nullable = false)
	public Driver getDriver() {
		return this.driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "route_id", nullable = false)
	public Route getRoute() {
		return this.route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "date_time", nullable = false, length = 19)
	public Date getDateTime() {
		return this.dateTime;
	}

	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}

}
