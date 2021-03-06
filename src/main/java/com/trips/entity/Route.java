package com.trips.entity;
// Generated Apr 19, 2017 10:50:05 PM by Hibernate Tools 4.3.5.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Route generated by hbm2java
 */
@Entity
@Table(name = "route", catalog = "project_2")
public class Route implements java.io.Serializable {

	private Integer routeId;
	private String origin;
	private String destination;
	private Integer costSeatType1;
	private Integer costSeatType2;
	private Integer costSeatType3;
	private Set<Bill> bills = new HashSet<Bill>(0);
	private Set<ScheduleControl> scheduleControls = new HashSet<ScheduleControl>(0);
	private Set<WeekSchedule> weekSchedules = new HashSet<WeekSchedule>(0);
	private Set<StopPoint> stopPoints = new HashSet<StopPoint>(0);

	public Route() {
	}

	public Route(String origin, String destination) {
		this.origin = origin;
		this.destination = destination;
	}

	public Route(String origin, String destination, Integer costSeatType1, Integer costSeatType2, Integer costSeatType3,
			Set<Bill> bills, Set<ScheduleControl> scheduleControls, Set<WeekSchedule> weekSchedules,
			Set<StopPoint> stopPoints) {
		this.origin = origin;
		this.destination = destination;
		this.costSeatType1 = costSeatType1;
		this.costSeatType2 = costSeatType2;
		this.costSeatType3 = costSeatType3;
		this.bills = bills;
		this.scheduleControls = scheduleControls;
		this.weekSchedules = weekSchedules;
		this.stopPoints = stopPoints;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "route_id", unique = true, nullable = false)
	public Integer getRouteId() {
		return this.routeId;
	}

	public void setRouteId(Integer routeId) {
		this.routeId = routeId;
	}

	@Column(name = "origin", nullable = false, length = 45)
	public String getOrigin() {
		return this.origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	@Column(name = "destination", nullable = false, length = 45)
	public String getDestination() {
		return this.destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	@Column(name = "cost_seat_type_1")
	public Integer getCostSeatType1() {
		return this.costSeatType1;
	}

	public void setCostSeatType1(Integer costSeatType1) {
		this.costSeatType1 = costSeatType1;
	}

	@Column(name = "cost_seat_type_2")
	public Integer getCostSeatType2() {
		return this.costSeatType2;
	}

	public void setCostSeatType2(Integer costSeatType2) {
		this.costSeatType2 = costSeatType2;
	}

	@Column(name = "cost_seat_type_3")
	public Integer getCostSeatType3() {
		return this.costSeatType3;
	}

	public void setCostSeatType3(Integer costSeatType3) {
		this.costSeatType3 = costSeatType3;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "route")
	public Set<Bill> getBills() {
		return this.bills;
	}

	public void setBills(Set<Bill> bills) {
		this.bills = bills;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "route")
	public Set<ScheduleControl> getScheduleControls() {
		return this.scheduleControls;
	}

	public void setScheduleControls(Set<ScheduleControl> scheduleControls) {
		this.scheduleControls = scheduleControls;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "route")
	public Set<WeekSchedule> getWeekSchedules() {
		return this.weekSchedules;
	}

	public void setWeekSchedules(Set<WeekSchedule> weekSchedules) {
		this.weekSchedules = weekSchedules;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "route")
	public Set<StopPoint> getStopPoints() {
		return this.stopPoints;
	}

	public void setStopPoints(Set<StopPoint> stopPoints) {
		this.stopPoints = stopPoints;
	}

}
