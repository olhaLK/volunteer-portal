package com.volunteer.volunteerportal.controller;

import com.volunteer.volunteerportal.model.Application;
import com.volunteer.volunteerportal.model.Event;
import com.volunteer.volunteerportal.model.User;
import com.volunteer.volunteerportal.repository.ApplicationRepository;
import com.volunteer.volunteerportal.repository.EventRepository;
import com.volunteer.volunteerportal.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EventRepository eventRepository;

    @Autowired
    private ApplicationRepository applicationRepository;

    // === ГОЛОВНА СТОРІНКА ===
    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("events", eventRepository.findAll());
        return "home"; // home.jsp
    }

    // === РЕЄСТРАЦІЯ КОРИСТУВАЧА ===
    @GetMapping("/register")
    public String registerForm(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute User user) {
        userRepository.save(user);
        return "redirect:/";
    }

    // === СТВОРЕННЯ ПОДІЇ (організатор) ===
    @GetMapping("/event/new")
    public String newEventForm(Model model) {
        model.addAttribute("event", new Event());
        return "event-form";
    }

    @PostMapping("/event/save")
    public String saveEvent(@ModelAttribute Event event) {
        // тимчасово без авторизації: призначимо фіксованого організатора
        User organizer = userRepository.findById(1L).orElse(null);
        event.setOrganizer(organizer);
        eventRepository.save(event);
        return "redirect:/";
    }

    // === ПОДАЧА ЗАЯВКИ (волонтер) ===
    @PostMapping("/apply")
    public String applyToEvent(@RequestParam Long eventId) {
        Application application = new Application();
        application.setEvent(eventRepository.findById(eventId).orElse(null));
        application.setUser(userRepository.findById(2L).orElse(null)); // тимчасово волонтер ID=2
        application.setStatus("PENDING");
        applicationRepository.save(application);
        return "redirect:/";
    }

    // === ПЕРЕГЛЯД ЗАЯВОК (організатор) ===
    @GetMapping("/applications")
    public String viewApplications(Model model) {
        model.addAttribute("apps", applicationRepository.findAll());
        return "applications";
    }

    @PostMapping("/application/status")
    public String updateApplicationStatus(@RequestParam Long appId, @RequestParam String status) {
        Application app = applicationRepository.findById(appId).orElse(null);
        if (app != null) {
            app.setStatus(status);
            applicationRepository.save(app);
        }
        return "redirect:/applications";
    }
}
