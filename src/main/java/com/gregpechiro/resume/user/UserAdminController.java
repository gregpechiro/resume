package com.gregpechiro.resume.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin/user")
public class UserAdminController {

	@Autowired
	private UserRepository userRepository;

	@GetMapping
	public String all(Model model) {
		model.addAttribute("users", userRepository.findAll());
		return "admin/user";
	}

	@GetMapping("/{id}")
	public String one(@PathVariable Long id, Model model) {
		model.addAttribute("user", userRepository.findById(id).get());
		model.addAttribute("users", userRepository.findAll());
		return "admin/user";
	}

	@PostMapping
	public String save(User user, RedirectAttributes redirectAttributes) {
		if (userRepository.canUpdate(((user.getId() == null) ? 0L : user.getId()), user.getUsername()) > 0) { // username already registered to another user
			redirectAttributes.addFlashAttribute("alertError", "Username is already registered");
			redirectAttributes.addFlashAttribute("user", user);
			return "redirect:/admin/user";
		}
		if (user.getId() != null && "".equals(user.getPassword())) {
			user.setPassword(userRepository.findExistingPassword(user.getId()));
		}
		if (!user.getPassword().startsWith("$")) {
			user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		}

		userRepository.save(user);

		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully saved user");
		return "redirect:/admin/user";
	}

	@PostMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		userRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully deleted user");
		return "redirect:/admin/user";
	}

}
