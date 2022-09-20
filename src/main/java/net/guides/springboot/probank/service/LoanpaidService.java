package net.guides.springboot.probank.service;

import net.guides.springboot.probank.repository.LoanPaidRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoanpaidService {

    @Autowired
    private LoanPaidRepository loanpaidRepository;

}