package com.gregpechiro.resume.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService customUserDetailsService;

	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("admin").password(passwordEncoder().encode("admin")).roles("ADMIN");
		auth.userDetailsService(customUserDetailsService).passwordEncoder(passwordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/secure/**").hasAnyRole("ADMIN", "USER")
				.antMatchers("/admin/**").hasAnyRole("ADMIN");
		http.formLogin()
				.loginPage("/login")
				.failureForwardUrl("/invalid")
				.successForwardUrl("/secure");
		http.logout()
				.invalidateHttpSession(true)
				.logoutSuccessUrl("/login")
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout", "GET"));
		http.sessionManagement()
				.maximumSessions(2)
				.expiredUrl("/login?expired")
				.maxSessionsPreventsLogin(false);
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder(11);
	}

}
