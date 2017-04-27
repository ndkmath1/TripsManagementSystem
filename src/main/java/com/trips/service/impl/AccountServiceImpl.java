package com.trips.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.trips.entity.Account;
import com.trips.model.AccountForm;
import com.trips.repository.AccountRepository;
import com.trips.service.AccountService;

@Service
@Transactional(value = "jpaTransactionManager")
// Shorter way, by default transaction is jpaTransactionManager, define by
// @Primary in ApplicationContextConfig class
// @Transactional
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountRepository accountRepository;

	@Autowired
	private PasswordEncoder pwdEncoder;

	@Override
	public Iterable<Account> findAll() {
		return accountRepository.findAll();
	}

	@Override
	public List<Account> search(String q) {
		return accountRepository.findByNameContaining(q);
	}

	@Override
	public Account findOne(int id) {
		return accountRepository.findOne(id);
	}

	@Override
	public void save(Account account) {
		accountRepository.save(account);
	}

	@Override
	public void delete(int id) {
		accountRepository.delete(id);
	}

	@Override
	public void saveAccountFromForm(AccountForm accountForm) {
		Integer accountId = accountForm.getId();
		Account newAccount = new Account(accountForm.getEmail(), 
				pwdEncoder.encode(accountForm.getPassword()), accountForm.getName(),
				accountForm.getPhoneNumber(), accountForm.getAddress(), null);
		if (accountId != null) {
//			System.out.println("### account is not null");
			newAccount.setAccountId(accountId);
			save(newAccount);
		} else {
//			System.out.println("### account is null");
			save(newAccount);
		}
	}

	@Override
	public AccountForm findAccountForm(int id) {
		Account account = accountRepository.findOne(id);
		return new AccountForm(account);
	}

}
