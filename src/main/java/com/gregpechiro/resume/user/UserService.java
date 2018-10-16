package com.gregpechiro.resume.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public void save(User user, RedirectAttributes redirectAttributes) {

		if (userRepository.canUpdate(((user.getId() == null) ? 0L : user.getId()), user.getUsername()) > 0) { // username already registered to another user
			redirectAttributes.addFlashAttribute("alertError", "Username is already registered");
			redirectAttributes.addFlashAttribute("user", user);
			return;
		}
		if (user.getPassword().startsWith("$")) {
			user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		}

		userRepository.save(user);

		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully saved user");
	}

}
