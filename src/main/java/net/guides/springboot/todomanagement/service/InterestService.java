package net.guides.springboot.todomanagement.service;

import net.guides.springboot.todomanagement.model.Todo;
import net.guides.springboot.todomanagement.repository.InterestRepository;
import net.guides.springboot.todomanagement.repository.TodoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class InterestService  {

	@Autowired
	private InterestRepository interestRepository;

	}