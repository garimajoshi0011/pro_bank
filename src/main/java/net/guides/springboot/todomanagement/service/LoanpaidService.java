package net.guides.springboot.todomanagement.service;

import net.guides.springboot.todomanagement.repository.LoanPaidRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class LoanpaidService {

	@Autowired
	private LoanPaidRepository loanpaidRepository;

}