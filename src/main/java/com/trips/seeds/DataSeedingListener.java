package com.trips.seeds;

import org.fluttercode.datafactory.impl.DataFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.trips.entity.Account;
import com.trips.entity.WeekSchedule;
import com.trips.repository.UserRepository;

@Component
public class DataSeedingListener implements ApplicationListener<ContextRefreshedEvent> {
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserRepository accountRepository;
	
	private DataFactory df = new DataFactory();

	@Override
	@Transactional(value = "jpaTransactionManager")
	public void onApplicationEvent(ContextRefreshedEvent arg0) {
		System.out.println("### onApplicationEvent");
//		insertAccount("ndkmath1@gmail.com", "123456", "Khanh Nguyen", "0123 456 789", "1 Đại Cồ Việt, Hai Bà Trưng");
//		insertAccount("admin@gmail.com", "123456", "Admin", "0978 098 098", "100 Giải Phóng, Hai Bà Trưng");
//		for (int i = 0; i < 100; ++i) {
//			insertAccount(df.getEmailAddress(), df.getRandomChars(6, 10), df.getName(), df.getNumberText(10), df.getAddress());
//		}
	}
	
	private void insertAccount(String email, String password, String name, String phoneNumber, String address) {
		if (accountRepository.findByEmail(email) == null) {
			Account admin = new Account();
			admin.setEmail(email);
			admin.setPassword(passwordEncoder.encode(password));
			admin.setName(name);
			admin.setPhoneNumber(phoneNumber);
			admin.setAddress(address);
			accountRepository.save(admin);
		}
	}
	
	private void insertSchedule() {
//		WeekSchedule schedule = new WeekSchedule(weekday, car, route, dateTime)
	}

}
