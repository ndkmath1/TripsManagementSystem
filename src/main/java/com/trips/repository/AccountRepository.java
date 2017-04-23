package com.trips.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.trips.entity.Account;

public interface AccountRepository extends CrudRepository<Account, Integer> {
	Account findByEmail(String email);
}
