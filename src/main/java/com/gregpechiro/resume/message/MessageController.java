package com.gregpechiro.resume.message;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/secure/message")
public class MessageController {

	@Autowired
	public MessageRepository messageRepository;

	@PostMapping
	public String send(Message message, RedirectAttributes redirectAttributes) {
		Map<String, String> messageErrors = new HashMap<>();

		if ("".equals(message.getEmail().trim())) {
			messageErrors.put("email", "*Email is required");
		}
		if ("".equals(message.getName().trim())) {
			messageErrors.put("name", "*Name is required");
		}
		if ("".equals(message.getSubject().trim())) {
			messageErrors.put("subject", "*Subject is required");
		}
		if ("".equals(message.getBody().trim())) {
			messageErrors.put("body", "*Body is required");
		}
		if (messageErrors.size() > 0) {
		System.out.println(messageErrors);
			redirectAttributes.addFlashAttribute("message", message);
			redirectAttributes.addFlashAttribute("messageErrors", messageErrors);
			redirectAttributes.addFlashAttribute("alertError", "Error sending message");
			return "redirect:/secure";
		}

		message.setOpened(false);
		message.setTimestamp(System.currentTimeMillis());
		redirectAttributes.addFlashAttribute("alertSuccess", "Successfully sent message");
		messageRepository.save(message);
		return "redirect:/secure";

	}
}
