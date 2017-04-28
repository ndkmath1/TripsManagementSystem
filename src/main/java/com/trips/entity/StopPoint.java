package com.trips.entity;
// Generated Apr 29, 2017 1:59:17 AM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * StopPoint generated by hbm2java
 */
@Entity
@Table(name = "stop_point", catalog = "project_2")
public class StopPoint implements java.io.Serializable {

	private int stopPointId;
	private Route route;
	private int numericalOrder;
	private String stopPointName;
	private Integer minuteTo;
	private Integer distance;

	public StopPoint() {
	}

	public StopPoint(int stopPointId, Route route, int numericalOrder, String stopPointName) {
		this.stopPointId = stopPointId;
		this.route = route;
		this.numericalOrder = numericalOrder;
		this.stopPointName = stopPointName;
	}

	public StopPoint(int stopPointId, Route route, int numericalOrder, String stopPointName, Integer minuteTo,
			Integer distance) {
		this.stopPointId = stopPointId;
		this.route = route;
		this.numericalOrder = numericalOrder;
		this.stopPointName = stopPointName;
		this.minuteTo = minuteTo;
		this.distance = distance;
	}

	@Id

	@Column(name = "stop_point_id", unique = true, nullable = false)
	public int getStopPointId() {
		return this.stopPointId;
	}

	public void setStopPointId(int stopPointId) {
		this.stopPointId = stopPointId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "route_id", nullable = false)
	public Route getRoute() {
		return this.route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

	@Column(name = "numerical_order", nullable = false)
	public int getNumericalOrder() {
		return this.numericalOrder;
	}

	public void setNumericalOrder(int numericalOrder) {
		this.numericalOrder = numericalOrder;
	}

	@Column(name = "stop_point_name", nullable = false, length = 45)
	public String getStopPointName() {
		return this.stopPointName;
	}

	public void setStopPointName(String stopPointName) {
		this.stopPointName = stopPointName;
	}

	@Column(name = "minute_to")
	public Integer getMinuteTo() {
		return this.minuteTo;
	}

	public void setMinuteTo(Integer minuteTo) {
		this.minuteTo = minuteTo;
	}

	@Column(name = "distance")
	public Integer getDistance() {
		return this.distance;
	}

	public void setDistance(Integer distance) {
		this.distance = distance;
	}

}
