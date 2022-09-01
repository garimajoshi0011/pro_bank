package net.guides.springboot.todomanagement.service;
import net.guides.springboot.todomanagement.repository.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class TransactionService {

	@Autowired
	private TransactionRepository transactionRepository;


	}
