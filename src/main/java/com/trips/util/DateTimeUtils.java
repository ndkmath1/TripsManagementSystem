package com.trips.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class DateTimeUtils {
	
	public static String getCurrentDate() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate localDate = LocalDate.now();
		return dtf.format(localDate);
	}
	
	public static String getNextDate() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate localDate = LocalDate.now().plusDays(1);
		return dtf.format(localDate);
	}
	
}
