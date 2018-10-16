package com.gregpechiro.resume.experience;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/secure/experience/rest")
public class ExperienceRestController {

	@Autowired
	private ExperienceRepository experienceRepository;

	@GetMapping("/{id}")
	public Experience one(@PathVariable Long id) {
		return experienceRepository.findById(id).get();
	}
}
