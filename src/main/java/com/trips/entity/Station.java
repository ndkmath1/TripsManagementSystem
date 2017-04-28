package com.trips.entity;
// Generated Apr 29, 2017 2:20:02 AM by Hibernate Tools 4.3.5.Final

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
 * Station generated by hbm2java
 */
@Entity
@Table(name = "station", catalog = "project_2")
public class Station implements java.io.Serializable {

	private Integer stationId;
	private String stationName;
	private Set<Route> routesForOriginStationId = new HashSet<Route>(0);
	private Set<Bill> billsForStationIdLast = new HashSet<Bill>(0);
	private Set<Route> routesForDestinationStationId = new HashSet<Route>(0);
	private Set<Bill> billsForStationIdFirst = new HashSet<Bill>(0);

	public Station() {
	}

	public Station(String stationName) {
		this.stationName = stationName;
	}

	public Station(String stationName, Set<Route> routesForOriginStationId, Set<Bill> billsForStationIdLast,
			Set<Route> routesForDestinationStationId, Set<Bill> billsForStationIdFirst) {
		this.stationName = stationName;
		this.routesForOriginStationId = routesForOriginStationId;
		this.billsForStationIdLast = billsForStationIdLast;
		this.routesForDestinationStationId = routesForDestinationStationId;
		this.billsForStationIdFirst = billsForStationIdFirst;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "station_id", unique = true, nullable = false)
	public Integer getStationId() {
		return this.stationId;
	}

	public void setStationId(Integer stationId) {
		this.stationId = stationId;
	}

	@Column(name = "station_name", nullable = false, length = 45)
	public String getStationName() {
		return this.stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stationByOriginStationId")
	public Set<Route> getRoutesForOriginStationId() {
		return this.routesForOriginStationId;
	}

	public void setRoutesForOriginStationId(Set<Route> routesForOriginStationId) {
		this.routesForOriginStationId = routesForOriginStationId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stationByStationIdLast")
	public Set<Bill> getBillsForStationIdLast() {
		return this.billsForStationIdLast;
	}

	public void setBillsForStationIdLast(Set<Bill> billsForStationIdLast) {
		this.billsForStationIdLast = billsForStationIdLast;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stationByDestinationStationId")
	public Set<Route> getRoutesForDestinationStationId() {
		return this.routesForDestinationStationId;
	}

	public void setRoutesForDestinationStationId(Set<Route> routesForDestinationStationId) {
		this.routesForDestinationStationId = routesForDestinationStationId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stationByStationIdFirst")
	public Set<Bill> getBillsForStationIdFirst() {
		return this.billsForStationIdFirst;
	}

	public void setBillsForStationIdFirst(Set<Bill> billsForStationIdFirst) {
		this.billsForStationIdFirst = billsForStationIdFirst;
	}

}
