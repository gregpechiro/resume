package com.gregpechiro.resume.skill;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin/skill")
public class SkillAdminController {

	@Autowired
	private SkillRepository skillRepository;

	@GetMapping
	public String all(Model model) {
		model.addAttribute("skills", skillRepository.findAll());
		return "admin/skill";
	}

	@GetMapping("/{id}")
	public String one(@PathVariable Long id, Model model) {
		model.addAttribute("skill", skillRepository.findById(id));
		model.addAttribute("skills", skillRepository.findAll());
		return "admin/skill";
	}

	@PostMapping
	public String save(Skill skill, RedirectAttributes redirectAttributes) {
		skillRepository.save(skill);
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully saved skill");
		return "redirect:/admin/skill";
	}

	@PostMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		skillRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully deleted skill");
		return "redirect:/admin/skill";
	}
}
