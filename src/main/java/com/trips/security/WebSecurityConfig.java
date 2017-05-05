package com.trips.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
//@Transactional
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetailsService;

	@Bean(name = "passwordEncoder")
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}

	/**
	 * Migrate from spring 3 to spring 4
	 * attribute default value changed from /j_spring_security_check to POST /login
	 * from /j_spring_security_logout to /logout
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
        //Mixing http and https
		
//		http.csrf().disable();
		http.authorizeRequests().antMatchers("/", "/login").permitAll();
		http.authorizeRequests().antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')");
		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
		http.authorizeRequests().and().formLogin()
				.loginPage("/login")
				.defaultSuccessUrl("/admin")
				.failureUrl("/login?error=true")
				.usernameParameter("username")
				.passwordParameter("password")
				.and().logout().logoutSuccessUrl("/");
		
//		http.requiresChannel().antMatchers("/login").requiresSecure();
//		http.requiresChannel().anyRequest().requiresInsecure();
//		http.requiresChannel().anyRequest().requiresSecure();

		// http.authorizeRequests().antMatchers("/login",
		// "/").permitAll().antMatchers("/admin/**").hasRole("ADMIN")
		// //.anyRequest().authenticated()
		// .and().exceptionHandling().accessDeniedPage("/403").and().formLogin()
		// .loginPage("/login").usernameParameter("email").passwordParameter("password")
		// .defaultSuccessUrl("/admin").failureUrl("/login?error");

		// http.authorizeRequests().antMatchers("/", "/login").permitAll();
		// http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')");
		// http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
		// http.authorizeRequests().and().formLogin().loginPage("/login").usernameParameter("email")
		// .passwordParameter("password").defaultSuccessUrl("/admin").failureUrl("/login?error");

		// http
		// .authorizeRequests()
		// .antMatchers("/", "/login").permitAll()
		// .antMatchers("/admin").hasRole("ADMIN")
		// .and()
		// .formLogin()
		// .loginPage("/login")
		// .usernameParameter("email")
		// .passwordParameter("password")
		// .defaultSuccessUrl("/admin")
		// .failureUrl("/login?error")
		// .and()
		// .exceptionHandling()
		// .accessDeniedPage("/403");

		System.out.println("## set role for admin success");
	}

}
