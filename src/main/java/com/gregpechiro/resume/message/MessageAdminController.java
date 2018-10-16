package com.gregpechiro.resume.message;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin/message")
public class MessageAdminController {

	@Autowired
	private MessageRepository messageRepository;

	@GetMapping()
	public String all(Model model) {
		model.addAttribute("messages", messageRepository.findAll());
		return "admin/message";
	}

	@GetMapping("/{id}")
	public String one(@PathVariable Long id, Model model) {
		model.addAttribute("message", messageRepository.findById(id));
		model.addAttribute("messages", messageRepository.findAll());
		return "admin/message";
	}

	@PostMapping()
	public String save(Message message, RedirectAttributes redirectAttributes) {
		messageRepository.save(message);
		redirectAttributes.addFlashAttribute("Successfully saved message");
		return "redirect:/admin/message";
	}

	@PostMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		messageRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("Successfully deleted message");
		return "redirect:/admin/message";
	}

	@GetMapping("/rest/{id}")
	@ResponseBody
	public Message restOne(@PathVariable Long id) {
		Message message = messageRepository.findById(id).get();
		message.setOpened(true);
		messageRepository.save(message);
		return message;
	}
}
