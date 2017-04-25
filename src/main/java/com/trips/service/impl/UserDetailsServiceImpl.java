package com.trips.service.impl;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.trips.entity.Account;
import com.trips.model.CustomUser;
import com.trips.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("### load user by username");
		Account account = userRepository.findByEmail(username);
		if (account == null) {
			throw new UsernameNotFoundException("User not found");
		}
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		// Set<Role> roles = user.getRoles();
		// for (Role role : roles) {
		// grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
		// }
		grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		System.out.println("### MyLog:  Set role for admin success!");
		return new CustomUser(account.getEmail(), account.getPassword(), grantedAuthorities, account.getName());
	}

}
