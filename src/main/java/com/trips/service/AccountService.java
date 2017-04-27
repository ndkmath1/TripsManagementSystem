package com.trips.service;

import java.util.List;

import com.trips.entity.Account;

public interface AccountService {
	
    Iterable<Account> findAll();

    List<Account> search(String q);

    Account findOne(int id);
    
    com.trips.model.Account findAccountForm(int id);

    void save(Account account);

    void delete(int id);
    
    void saveAccountFromForm(com.trips.model.Account accountForm);
	
}
