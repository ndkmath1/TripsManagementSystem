package com.trips.service;

import java.util.List;

import com.trips.entity.Account;
import com.trips.model.AccountForm;

public interface AccountService {
	
    Iterable<Account> findAll();

    List<Account> search(String q);

    Account findOne(int id);
    
    AccountForm findAccountForm(int id);

    void save(Account account);

    void delete(int id);
    
    void saveAccountFromForm(AccountForm accountForm);
	
}
