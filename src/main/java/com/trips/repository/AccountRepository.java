package com.trips.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.trips.entity.Account;

public interface AccountRepository extends CrudRepository<Account, Integer> {
	
	List<Account> findByNameContaining(String q);
	
}
