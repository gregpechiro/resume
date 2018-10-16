package com.gregpechiro.resume;

import com.gregpechiro.resume.config.CurrentUser;
import com.gregpechiro.resume.experience.ExperienceRepository;
import com.gregpechiro.resume.me.MeRepository;
import com.gregpechiro.resume.reference.ReferenceRepository;
import com.gregpechiro.resume.skill.SkillRepository;
import com.gregpechiro.resume.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@Autowired
	private MeRepository meRepository;

	@Autowired
	private ReferenceRepository referenceRepository;

	@Autowired
	private SkillRepository skillRepository;

	@Autowired
	private ExperienceRepository experienceRepository;

	@GetMapping("/login")
	private String login() {
		return "login";
	}

	@GetMapping("/secure")
	private String main(Model model, @CurrentUser User user) {
		model.addAttribute("user", user);
		model.addAttribute("references", referenceRepository.findAll());
		model.addAttribute("me", meRepository.findById(1L).get());
		model.addAttribute("experiences", experienceRepository.findAll());
		model.addAttribute("languages", skillRepository.findAllByCategory("language"));
		model.addAttribute("libFrames", skillRepository.findAllByCategory("library-framework"));
		model.addAttribute("databases", skillRepository.findAllByCategory("database"));
		model.addAttribute("others", skillRepository.findAllByCategory("other"));

		return "home";
	}

	@GetMapping("/")
	private String root() {
		return "redirect:/secure";
	}

}
