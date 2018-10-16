package com.gregpechiro.resume.experience;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin/experience")
public class ExperienceAdminController {

	@Autowired
	private ExperienceRepository experienceRepository;

	@GetMapping
	public String all(Model model) {
		model.addAttribute("experiences", experienceRepository.findAll());
		return "admin/experience";
	}

	@GetMapping("/{id}")
	public String one(@PathVariable Long id, Model model) {
		model.addAttribute("experience", experienceRepository.findById(id));
		model.addAttribute("experiences", experienceRepository.findAll());
		return "admin/experience";
	}

	@PostMapping
	public String save(Experience experience, RedirectAttributes redirectAttributes) {
		experienceRepository.save(experience);
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully saved experience");
		return "redirect:/admin/experience";
	}

	@PostMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		experienceRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully deleted experience");
		return "redirect:/admin/experience";
	}
}
