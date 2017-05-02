package com.trips.repository;

import org.springframework.data.repository.CrudRepository;

import com.trips.entity.Account;

public interface UserRepository extends CrudRepository<Account, Integer> {
	
	Account findByEmail(String email);
	
}
