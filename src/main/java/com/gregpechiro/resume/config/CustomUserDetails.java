package com.gregpechiro.resume.config;

import com.gregpechiro.resume.user.User;
import org.springframework.security.core.GrantedAuthority;
import java.util.Collection;

public class CustomUserDetails extends org.springframework.security.core.userdetails.User {

	private final User currentUser;

	public CustomUserDetails(Collection<? extends GrantedAuthority> authorities, User currentUser) {
		super(currentUser.getUsername(), currentUser.getPassword(), currentUser.getActive(), true, true, true, authorities);
		this.currentUser = currentUser;
	}

	public User getCurrentUser() {
		return currentUser;
	}

}
