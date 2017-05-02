package com.trips.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.trips.service.WeekScheduleService;

@Service
@Transactional("hibernateTransactionManager")
public class WeekScheduleServiceImpl implements WeekScheduleService {

}
