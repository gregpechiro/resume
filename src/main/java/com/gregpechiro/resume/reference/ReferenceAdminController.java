package com.gregpechiro.resume.reference;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin/reference")
public class ReferenceAdminController {

	@Autowired
	private ReferenceRepository referenceRepository;

	@GetMapping
	public String all(Model model) {
		model.addAttribute("references", referenceRepository.findAll());
		return "admin/reference";
	}

	@GetMapping("/{id}")
	public String one(@PathVariable Long id, Model model) {
		model.addAttribute("reference", referenceRepository.findById(id).get());
		model.addAttribute("references", referenceRepository.findAll());
		return "admin/reference";
	}

	@PostMapping
	public String save(Reference reference, RedirectAttributes redirectAttributes) {
		referenceRepository.save(reference);
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully saved reference");
		return "redirect:/admin/reference";
	}

	@PostMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		referenceRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully deleted reference");
		return "redirect:/admin/reference";
	}


}
