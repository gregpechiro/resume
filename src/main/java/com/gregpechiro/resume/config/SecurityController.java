package com.gregpechiro.resume.config;

import com.gregpechiro.resume.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class SecurityController {

	@Autowired
	private UserRepository userRepository;

	private RequestCache requestCache = new HttpSessionRequestCache();


	@PostMapping("/secure")
	public String secure(@AuthenticationPrincipal User authUser,
						 HttpServletRequest request, HttpServletResponse response) {
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		if (authUser.getUsername().equals("admin")) {
			if (savedRequest != null) {
				String redirect = savedRequest.getRedirectUrl();
				if (redirect != null && !("").equals(redirect)) {
					if (redirect.contains("/admin")) {
						return "redirect:" + redirect;
					}
				}
			}
			return "redirect:/admin/me";
		}

		com.gregpechiro.resume.user.User user = userRepository.findByUsername(authUser.getUsername());
		if (user == null) {
			return "redirect:/logout";
		}

		if (savedRequest != null) {
			String redirect = savedRequest.getRedirectUrl();
			if (redirect != null && !("").equals(redirect)) {
				return "redirect:" + redirect;
			}
		}

		if (user.getRole().equals("ROLE_ADMIN")) {
			return "redirect:/admin/me";
		}

		return "redirect:/";
	}
}
