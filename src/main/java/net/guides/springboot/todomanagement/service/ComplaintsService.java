package net.guides.springboot.todomanagement.service;

import net.guides.springboot.todomanagement.repository.ComplaintsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComplaintsService {

	@Autowired
	private ComplaintsRepository complaintsRepository;

	}