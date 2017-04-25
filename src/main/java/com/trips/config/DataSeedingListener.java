package com.trips.config;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.trips.entity.Account;
import com.trips.repository.UserRepository;

@Component
public class DataSeedingListener implements ApplicationListener<ContextRefreshedEvent> {
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserRepository accountRepository;

	@Override
	@Transactional(value = "jpaTransactionManager")
	public void onApplicationEvent(ContextRefreshedEvent arg0) {
		//insertAccount("ndkmath1@gmail.com", "123456");
	}
	
	private void insertAccount(String email, String password) {
		if (accountRepository.findByEmail(email) == null) {
			Account admin = new Account();
			admin.setEmail(email);
			admin.setPassword(passwordEncoder.encode(password));
			accountRepository.save(admin);
		}
	}

}
