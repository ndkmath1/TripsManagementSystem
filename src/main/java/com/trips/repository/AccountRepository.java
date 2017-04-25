package com.trips.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.trips.entity.Account;

public interface AccountRepository extends CrudRepository<Account, Integer> {
	
	List<Account> findByNameContaining(String q);
	
}
