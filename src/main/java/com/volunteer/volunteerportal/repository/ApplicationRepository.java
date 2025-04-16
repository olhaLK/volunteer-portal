package com.volunteer.volunteerportal.repository;

import com.volunteer.volunteerportal.model.Application;
import com.volunteer.volunteerportal.model.Event;
import com.volunteer.volunteerportal.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ApplicationRepository extends JpaRepository<Application, Long> {
    List<Application> findByUser(User user);
    List<Application> findByEvent(Event event);
}
