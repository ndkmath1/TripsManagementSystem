package com.trips.service;

import java.util.List;

import com.trips.entity.Account;

public interface AccountService {
	
    Iterable<Account> findAll();

    List<Account> search(String q);

    Account findOne(int id);

    void save(Account contact);

    void delete(int id);
    
    String getNameOfUser();
	
}
