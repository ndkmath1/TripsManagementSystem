package com.trips.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trips.dao.AccountDao;
import com.trips.entity.Account;
import com.trips.util.PaginationUtil;

@Repository
public class AccountDaoImpl implements AccountDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Query getQueryAccountList() {
		return sessionFactory
				.getCurrentSession()
				.createQuery("from Account a order by a.accountId asc");
	}

}
