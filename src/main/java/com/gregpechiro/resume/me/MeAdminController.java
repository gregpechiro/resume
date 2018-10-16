package com.gregpechiro.resume.me;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin/me")
public class MeAdminController {

	@Autowired
	private MeRepository meRepository;

	@GetMapping("")
	public String get(Model model) {
		model.addAttribute("me", meRepository.findById(1L).get());
		return "admin/me";
	}

	@PostMapping("")
	public String save(Me me, RedirectAttributes redirectAttributes) {
		meRepository.save(me);
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully saved me");
		return "redirect:/admin/me";
	}
}
