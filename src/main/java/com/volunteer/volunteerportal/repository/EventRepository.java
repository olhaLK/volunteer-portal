package com.volunteer.volunteerportal.repository;

import com.volunteer.volunteerportal.model.Event;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventRepository extends JpaRepository<Event, Long> {
}
